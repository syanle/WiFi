// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;

// Referenced classes of package org.xbill.DNS:
//            DNSInput, DNSOutput, Message, RRset, 
//            Record, RRSIGRecord, Name, SIGBase, 
//            DNSKEYRecord, KEYBase, KEYRecord, SIGRecord, 
//            Header, Mnemonic

public class DNSSEC
{
    public static class Algorithm
    {

        public static final int DH = 2;
        public static final int DSA = 3;
        public static final int DSA_NSEC3_SHA1 = 6;
        public static final int ECC = 4;
        public static final int INDIRECT = 252;
        public static final int PRIVATEDNS = 253;
        public static final int PRIVATEOID = 254;
        public static final int RSAMD5 = 1;
        public static final int RSASHA1 = 5;
        public static final int RSASHA256 = 8;
        public static final int RSASHA512 = 10;
        public static final int RSA_NSEC3_SHA1 = 7;
        private static Mnemonic algs;

        public static String string(int i)
        {
            return algs.getText(i);
        }

        public static int value(String s)
        {
            return algs.getValue(s);
        }

        static 
        {
            algs = new Mnemonic("DNSSEC algorithm", 2);
            algs.setMaximum(255);
            algs.setNumericAllowed(true);
            algs.add(1, "RSAMD5");
            algs.add(2, "DH");
            algs.add(3, "DSA");
            algs.add(4, "ECC");
            algs.add(5, "RSASHA1");
            algs.add(6, "DSA-NSEC3-SHA1");
            algs.add(7, "RSA-NSEC3-SHA1");
            algs.add(8, "RSASHA256");
            algs.add(10, "RSASHA512");
            algs.add(252, "INDIRECT");
            algs.add(253, "PRIVATEDNS");
            algs.add(254, "PRIVATEOID");
        }

        private Algorithm()
        {
        }
    }

    public static class DNSSECException extends Exception
    {

        DNSSECException(String s)
        {
            super(s);
        }
    }

    public static class IncompatibleKeyException extends IllegalArgumentException
    {

        IncompatibleKeyException()
        {
            super("incompatible keys");
        }
    }

    public static class KeyMismatchException extends DNSSECException
    {

        private KEYBase key;
        private SIGBase sig;

        KeyMismatchException(KEYBase keybase, SIGBase sigbase)
        {
            super((new StringBuilder("key ")).append(keybase.getName()).append("/").append(Algorithm.string(keybase.getAlgorithm())).append("/").append(keybase.getFootprint()).append(" ").append("does not match signature ").append(sigbase.getSigner()).append("/").append(Algorithm.string(sigbase.getAlgorithm())).append("/").append(sigbase.getFootprint()).toString());
        }
    }

    public static class MalformedKeyException extends DNSSECException
    {

        MalformedKeyException(KEYBase keybase)
        {
            super((new StringBuilder("Invalid key data: ")).append(keybase.rdataToString()).toString());
        }
    }

    public static class SignatureExpiredException extends DNSSECException
    {

        private Date now;
        private Date when;

        public Date getExpiration()
        {
            return when;
        }

        public Date getVerifyTime()
        {
            return now;
        }

        SignatureExpiredException(Date date, Date date1)
        {
            super("signature expired");
            when = date;
            now = date1;
        }
    }

    public static class SignatureNotYetValidException extends DNSSECException
    {

        private Date now;
        private Date when;

        public Date getExpiration()
        {
            return when;
        }

        public Date getVerifyTime()
        {
            return now;
        }

        SignatureNotYetValidException(Date date, Date date1)
        {
            super("signature is not yet valid");
            when = date;
            now = date1;
        }
    }

    public static class SignatureVerificationException extends DNSSECException
    {

        SignatureVerificationException()
        {
            super("signature verification failed");
        }
    }

    public static class UnsupportedAlgorithmException extends DNSSECException
    {

        UnsupportedAlgorithmException(int i)
        {
            super((new StringBuilder("Unsupported algorithm: ")).append(i).toString());
        }
    }


    private static final int ASN1_INT = 2;
    private static final int ASN1_SEQ = 48;
    private static final int DSA_LEN = 20;

    private DNSSEC()
    {
    }

    private static int BigIntegerLength(BigInteger biginteger)
    {
        return (biginteger.bitLength() + 7) / 8;
    }

    private static byte[] DSASignaturefromDNS(byte abyte0[])
        throws DNSSECException, IOException
    {
        if (abyte0.length != 41)
        {
            throw new SignatureVerificationException();
        }
        DNSInput dnsinput = new DNSInput(abyte0);
        abyte0 = new DNSOutput();
        dnsinput.readU8();
        byte abyte1[] = dnsinput.readByteArray(20);
        int i = 20;
        if (abyte1[0] < 0)
        {
            i = 20 + 1;
        }
        byte abyte2[] = dnsinput.readByteArray(20);
        int j = 20;
        if (abyte2[0] < 0)
        {
            j = 20 + 1;
        }
        abyte0.writeU8(48);
        abyte0.writeU8(i + j + 4);
        abyte0.writeU8(2);
        abyte0.writeU8(i);
        if (i > 20)
        {
            abyte0.writeU8(0);
        }
        abyte0.writeByteArray(abyte1);
        abyte0.writeU8(2);
        abyte0.writeU8(j);
        if (j > 20)
        {
            abyte0.writeU8(0);
        }
        abyte0.writeByteArray(abyte2);
        return abyte0.toByteArray();
    }

    private static byte[] DSASignaturetoDNS(byte abyte0[], int i)
        throws IOException
    {
        abyte0 = new DNSInput(abyte0);
        DNSOutput dnsoutput = new DNSOutput();
        dnsoutput.writeU8(i);
        if (abyte0.readU8() != 48)
        {
            throw new IOException();
        }
        abyte0.readU8();
        if (abyte0.readU8() != 2)
        {
            throw new IOException();
        }
        i = abyte0.readU8();
        if (i == 21)
        {
            if (abyte0.readU8() != 0)
            {
                throw new IOException();
            }
        } else
        if (i != 20)
        {
            throw new IOException();
        }
        dnsoutput.writeByteArray(abyte0.readByteArray(20));
        if (abyte0.readU8() != 2)
        {
            throw new IOException();
        }
        i = abyte0.readU8();
        if (i == 21)
        {
            if (abyte0.readU8() != 0)
            {
                throw new IOException();
            }
        } else
        if (i != 20)
        {
            throw new IOException();
        }
        dnsoutput.writeByteArray(abyte0.readByteArray(20));
        return dnsoutput.toByteArray();
    }

    private static String algString(int i)
        throws UnsupportedAlgorithmException
    {
        switch (i)
        {
        case 2: // '\002'
        case 4: // '\004'
        case 9: // '\t'
        default:
            throw new UnsupportedAlgorithmException(i);

        case 1: // '\001'
            return "MD5withRSA";

        case 3: // '\003'
        case 6: // '\006'
            return "SHA1withDSA";

        case 5: // '\005'
        case 7: // '\007'
            return "SHA1withRSA";

        case 8: // '\b'
            return "SHA256withRSA";

        case 10: // '\n'
            return "SHA512withRSA";
        }
    }

    static void checkAlgorithm(PrivateKey privatekey, int i)
        throws UnsupportedAlgorithmException
    {
        switch (i)
        {
        case 2: // '\002'
        case 4: // '\004'
        case 9: // '\t'
        default:
            throw new UnsupportedAlgorithmException(i);

        case 1: // '\001'
        case 5: // '\005'
        case 7: // '\007'
        case 8: // '\b'
        case 10: // '\n'
            if (!(privatekey instanceof RSAPrivateKey))
            {
                throw new IncompatibleKeyException();
            }
            break;

        case 3: // '\003'
        case 6: // '\006'
            if (!(privatekey instanceof DSAPrivateKey))
            {
                throw new IncompatibleKeyException();
            }
            break;
        }
    }

    public static byte[] digestMessage(SIGRecord sigrecord, Message message, byte abyte0[])
    {
        DNSOutput dnsoutput = new DNSOutput();
        digestSIG(dnsoutput, sigrecord);
        if (abyte0 != null)
        {
            dnsoutput.writeByteArray(abyte0);
        }
        message.toWire(dnsoutput);
        return dnsoutput.toByteArray();
    }

    public static byte[] digestRRset(RRSIGRecord rrsigrecord, RRset rrset)
    {
        Name name;
        DNSOutput dnsoutput;
        Record arecord[];
        Name name1;
        Object obj;
        int i;
        dnsoutput = new DNSOutput();
        digestSIG(dnsoutput, rrsigrecord);
        int j = rrset.size();
        arecord = new Record[j];
        obj = rrset.rrs();
        name1 = rrset.getName();
        name = null;
        int l = rrsigrecord.getLabels() + 1;
        i = j;
        if (name1.labels() > l)
        {
            name = name1.wild(name1.labels() - l);
            i = j;
        }
_L3:
        if (((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        Arrays.sort(arecord);
        obj = new DNSOutput();
        if (name != null)
        {
            name.toWireCanonical(((DNSOutput) (obj)));
        } else
        {
            name1.toWireCanonical(((DNSOutput) (obj)));
        }
        ((DNSOutput) (obj)).writeU16(rrset.getType());
        ((DNSOutput) (obj)).writeU16(rrset.getDClass());
        ((DNSOutput) (obj)).writeU32(rrsigrecord.getOrigTTL());
        i = 0;
_L4:
        if (i >= arecord.length)
        {
            return dnsoutput.toByteArray();
        }
        break MISSING_BLOCK_LABEL_191;
_L2:
        i--;
        arecord[i] = (Record)((Iterator) (obj)).next();
          goto _L3
        dnsoutput.writeByteArray(((DNSOutput) (obj)).toByteArray());
        int k = dnsoutput.current();
        dnsoutput.writeU16(0);
        dnsoutput.writeByteArray(arecord[i].rdataToWireCanonical());
        int i1 = dnsoutput.current();
        dnsoutput.save();
        dnsoutput.jump(k);
        dnsoutput.writeU16(i1 - k - 2);
        dnsoutput.restore();
        i++;
          goto _L4
    }

    private static void digestSIG(DNSOutput dnsoutput, SIGBase sigbase)
    {
        dnsoutput.writeU16(sigbase.getTypeCovered());
        dnsoutput.writeU8(sigbase.getAlgorithm());
        dnsoutput.writeU8(sigbase.getLabels());
        dnsoutput.writeU32(sigbase.getOrigTTL());
        dnsoutput.writeU32(sigbase.getExpire().getTime() / 1000L);
        dnsoutput.writeU32(sigbase.getTimeSigned().getTime() / 1000L);
        dnsoutput.writeU16(sigbase.getFootprint());
        sigbase.getSigner().toWireCanonical(dnsoutput);
    }

    private static byte[] fromDSAPublicKey(DSAPublicKey dsapublickey)
    {
        DNSOutput dnsoutput = new DNSOutput();
        BigInteger biginteger = dsapublickey.getParams().getQ();
        BigInteger biginteger1 = dsapublickey.getParams().getP();
        BigInteger biginteger2 = dsapublickey.getParams().getG();
        dsapublickey = dsapublickey.getY();
        dnsoutput.writeU8((biginteger1.toByteArray().length - 64) / 8);
        writeBigInteger(dnsoutput, biginteger);
        writeBigInteger(dnsoutput, biginteger1);
        writeBigInteger(dnsoutput, biginteger2);
        writeBigInteger(dnsoutput, dsapublickey);
        return dnsoutput.toByteArray();
    }

    static byte[] fromPublicKey(PublicKey publickey, int i)
        throws DNSSECException
    {
        switch (i)
        {
        case 2: // '\002'
        case 4: // '\004'
        case 9: // '\t'
        default:
            throw new UnsupportedAlgorithmException(i);

        case 1: // '\001'
        case 5: // '\005'
        case 7: // '\007'
        case 8: // '\b'
        case 10: // '\n'
            if (!(publickey instanceof RSAPublicKey))
            {
                throw new IncompatibleKeyException();
            } else
            {
                return fromRSAPublicKey((RSAPublicKey)publickey);
            }

        case 3: // '\003'
        case 6: // '\006'
            break;
        }
        if (!(publickey instanceof DSAPublicKey))
        {
            throw new IncompatibleKeyException();
        } else
        {
            return fromDSAPublicKey((DSAPublicKey)publickey);
        }
    }

    private static byte[] fromRSAPublicKey(RSAPublicKey rsapublickey)
    {
        DNSOutput dnsoutput = new DNSOutput();
        BigInteger biginteger = rsapublickey.getPublicExponent();
        rsapublickey = rsapublickey.getModulus();
        int i = BigIntegerLength(biginteger);
        if (i < 256)
        {
            dnsoutput.writeU8(i);
        } else
        {
            dnsoutput.writeU8(0);
            dnsoutput.writeU16(i);
        }
        writeBigInteger(dnsoutput, biginteger);
        writeBigInteger(dnsoutput, rsapublickey);
        return dnsoutput.toByteArray();
    }

    static byte[] generateDS(DNSKEYRecord dnskeyrecord, int i)
    {
        DNSOutput dnsoutput;
        dnsoutput = new DNSOutput();
        dnsoutput.writeU16(dnskeyrecord.getFootprint());
        dnsoutput.writeU8(dnskeyrecord.getAlgorithm());
        dnsoutput.writeU8(i);
        switch (i)
        {
        default:
            try
            {
                throw new IllegalArgumentException((new StringBuilder("unknown DS digest type ")).append(i).toString());
            }
            // Misplaced declaration of an exception variable
            catch (DNSKEYRecord dnskeyrecord)
            {
                throw new IllegalStateException("no message digest support");
            }

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_128;

        case 1: // '\001'
            break;
        }
        MessageDigest messagedigest = MessageDigest.getInstance("sha-1");
_L1:
        messagedigest.update(dnskeyrecord.getName().toWire());
        messagedigest.update(dnskeyrecord.rdataToWireCanonical());
        dnsoutput.writeByteArray(messagedigest.digest());
        return dnsoutput.toByteArray();
        messagedigest = MessageDigest.getInstance("sha-256");
          goto _L1
    }

    private static boolean matches(SIGBase sigbase, KEYBase keybase)
    {
        return keybase.getAlgorithm() == sigbase.getAlgorithm() && keybase.getFootprint() == sigbase.getFootprint() && keybase.getName().equals(sigbase.getSigner());
    }

    private static BigInteger readBigInteger(DNSInput dnsinput)
    {
        return new BigInteger(1, dnsinput.readByteArray());
    }

    private static BigInteger readBigInteger(DNSInput dnsinput, int i)
        throws IOException
    {
        return new BigInteger(1, dnsinput.readByteArray(i));
    }

    public static RRSIGRecord sign(RRset rrset, DNSKEYRecord dnskeyrecord, PrivateKey privatekey, Date date, Date date1)
        throws DNSSECException
    {
        int i = dnskeyrecord.getAlgorithm();
        checkAlgorithm(privatekey, i);
        date = new RRSIGRecord(rrset.getName(), rrset.getDClass(), rrset.getTTL(), rrset.getType(), i, rrset.getTTL(), date1, date, dnskeyrecord.getFootprint(), dnskeyrecord.getName(), null);
        date.setSignature(sign(privatekey, dnskeyrecord.getPublicKey(), i, digestRRset(date, rrset)));
        return date;
    }

    private static byte[] sign(PrivateKey privatekey, PublicKey publickey, int i, byte abyte0[])
        throws DNSSECException
    {
        try
        {
            Signature signature = Signature.getInstance(algString(i));
            signature.initSign(privatekey);
            signature.update(abyte0);
            privatekey = signature.sign();
        }
        // Misplaced declaration of an exception variable
        catch (PrivateKey privatekey)
        {
            throw new DNSSECException(privatekey.toString());
        }
        abyte0 = privatekey;
        if (publickey instanceof DSAPublicKey)
        {
            try
            {
                abyte0 = DSASignaturetoDNS(privatekey, (BigIntegerLength(((DSAPublicKey)publickey).getParams().getP()) - 64) / 8);
            }
            // Misplaced declaration of an exception variable
            catch (PrivateKey privatekey)
            {
                throw new IllegalStateException();
            }
        }
        return abyte0;
    }

    static SIGRecord signMessage(Message message, SIGRecord sigrecord, KEYRecord keyrecord, PrivateKey privatekey, Date date, Date date1)
        throws DNSSECException
    {
        int i = keyrecord.getAlgorithm();
        checkAlgorithm(privatekey, i);
        date = new SIGRecord(Name.root, 255, 0L, 0, i, 0L, date1, date, keyrecord.getFootprint(), keyrecord.getName(), null);
        date1 = new DNSOutput();
        digestSIG(date1, date);
        if (sigrecord != null)
        {
            date1.writeByteArray(sigrecord.getSignature());
        }
        message.toWire(date1);
        date.setSignature(sign(privatekey, keyrecord.getPublicKey(), i, date1.toByteArray()));
        return date;
    }

    private static PublicKey toDSAPublicKey(KEYBase keybase)
        throws IOException, GeneralSecurityException, MalformedKeyException
    {
        Object obj = new DNSInput(keybase.getKey());
        int i = ((DNSInput) (obj)).readU8();
        if (i > 8)
        {
            throw new MalformedKeyException(keybase);
        } else
        {
            keybase = readBigInteger(((DNSInput) (obj)), 20);
            BigInteger biginteger = readBigInteger(((DNSInput) (obj)), i * 8 + 64);
            BigInteger biginteger1 = readBigInteger(((DNSInput) (obj)), i * 8 + 64);
            obj = readBigInteger(((DNSInput) (obj)), i * 8 + 64);
            return KeyFactory.getInstance("DSA").generatePublic(new DSAPublicKeySpec(((BigInteger) (obj)), biginteger, keybase, biginteger1));
        }
    }

    static PublicKey toPublicKey(KEYBase keybase)
        throws DNSSECException
    {
        int i = keybase.getAlgorithm();
        i;
        JVM INSTR tableswitch 1 10: default 60
    //                   1 79
    //                   2 60
    //                   3 84
    //                   4 60
    //                   5 79
    //                   6 84
    //                   7 79
    //                   8 79
    //                   9 60
    //                   10 79;
           goto _L1 _L2 _L1 _L3 _L1 _L2 _L3 _L2 _L2 _L1 _L2
_L1:
        PublicKey publickey;
        try
        {
            throw new UnsupportedAlgorithmException(i);
        }
        catch (IOException ioexception)
        {
            throw new MalformedKeyException(keybase);
        }
        // Misplaced declaration of an exception variable
        catch (KEYBase keybase)
        {
            throw new DNSSECException(keybase.toString());
        }
_L2:
        return toRSAPublicKey(keybase);
_L3:
        publickey = toDSAPublicKey(keybase);
        return publickey;
    }

    private static PublicKey toRSAPublicKey(KEYBase keybase)
        throws IOException, GeneralSecurityException
    {
        Object obj = new DNSInput(keybase.getKey());
        int j = ((DNSInput) (obj)).readU8();
        int i = j;
        if (j == 0)
        {
            i = ((DNSInput) (obj)).readU16();
        }
        keybase = readBigInteger(((DNSInput) (obj)), i);
        obj = readBigInteger(((DNSInput) (obj)));
        return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(((BigInteger) (obj)), keybase));
    }

    private static void verify(PublicKey publickey, int i, byte abyte0[], byte abyte1[])
        throws DNSSECException
    {
        byte abyte2[] = abyte1;
        if (publickey instanceof DSAPublicKey)
        {
            try
            {
                abyte2 = DSASignaturefromDNS(abyte1);
            }
            // Misplaced declaration of an exception variable
            catch (PublicKey publickey)
            {
                throw new IllegalStateException();
            }
        }
        try
        {
            abyte1 = Signature.getInstance(algString(i));
            abyte1.initVerify(publickey);
            abyte1.update(abyte0);
            if (!abyte1.verify(abyte2))
            {
                throw new SignatureVerificationException();
            }
        }
        // Misplaced declaration of an exception variable
        catch (PublicKey publickey)
        {
            throw new DNSSECException(publickey.toString());
        }
    }

    public static void verify(RRset rrset, RRSIGRecord rrsigrecord, DNSKEYRecord dnskeyrecord)
        throws DNSSECException
    {
        if (!matches(rrsigrecord, dnskeyrecord))
        {
            throw new KeyMismatchException(dnskeyrecord, rrsigrecord);
        }
        Date date = new Date();
        if (date.compareTo(rrsigrecord.getExpire()) > 0)
        {
            throw new SignatureExpiredException(rrsigrecord.getExpire(), date);
        }
        if (date.compareTo(rrsigrecord.getTimeSigned()) < 0)
        {
            throw new SignatureNotYetValidException(rrsigrecord.getTimeSigned(), date);
        } else
        {
            verify(dnskeyrecord.getPublicKey(), rrsigrecord.getAlgorithm(), digestRRset(rrsigrecord, rrset), rrsigrecord.getSignature());
            return;
        }
    }

    static void verifyMessage(Message message, byte abyte0[], SIGRecord sigrecord, SIGRecord sigrecord1, KEYRecord keyrecord)
        throws DNSSECException
    {
        if (!matches(sigrecord, keyrecord))
        {
            throw new KeyMismatchException(keyrecord, sigrecord);
        }
        Object obj = new Date();
        if (((Date) (obj)).compareTo(sigrecord.getExpire()) > 0)
        {
            throw new SignatureExpiredException(sigrecord.getExpire(), ((Date) (obj)));
        }
        if (((Date) (obj)).compareTo(sigrecord.getTimeSigned()) < 0)
        {
            throw new SignatureNotYetValidException(sigrecord.getTimeSigned(), ((Date) (obj)));
        }
        obj = new DNSOutput();
        digestSIG(((DNSOutput) (obj)), sigrecord);
        if (sigrecord1 != null)
        {
            ((DNSOutput) (obj)).writeByteArray(sigrecord1.getSignature());
        }
        sigrecord1 = (Header)message.getHeader().clone();
        sigrecord1.decCount(3);
        ((DNSOutput) (obj)).writeByteArray(sigrecord1.toWire());
        ((DNSOutput) (obj)).writeByteArray(abyte0, 12, message.sig0start - 12);
        verify(keyrecord.getPublicKey(), sigrecord.getAlgorithm(), ((DNSOutput) (obj)).toByteArray(), sigrecord.getSignature());
    }

    private static void writeBigInteger(DNSOutput dnsoutput, BigInteger biginteger)
    {
        biginteger = biginteger.toByteArray();
        if (biginteger[0] == 0)
        {
            dnsoutput.writeByteArray(biginteger, 1, biginteger.length - 1);
            return;
        } else
        {
            dnsoutput.writeByteArray(biginteger);
            return;
        }
    }
}
