// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.PrintStream;
import java.util.Date;
import org.xbill.DNS.utils.HMAC;
import org.xbill.DNS.utils.base64;

// Referenced classes of package org.xbill.DNS:
//            Name, TextParseException, Message, Options, 
//            DNSOutput, TSIGRecord, Header

public class TSIG
{
    public static class StreamVerifier
    {

        private TSIG key;
        private TSIGRecord lastTSIG;
        private int lastsigned;
        private int nresponses;
        private HMAC verifier;

        public int verify(Message message, byte abyte0[])
        {
            TSIGRecord tsigrecord = message.getTSIG();
            nresponses = nresponses + 1;
            if (nresponses == 1)
            {
                int i = key.verify(message, abyte0, lastTSIG);
                if (i == 0)
                {
                    message = tsigrecord.getSignature();
                    abyte0 = new DNSOutput();
                    abyte0.writeU16(message.length);
                    verifier.update(abyte0.toByteArray());
                    verifier.update(message);
                }
                lastTSIG = tsigrecord;
                return i;
            }
            if (tsigrecord != null)
            {
                message.getHeader().decCount(3);
            }
            byte abyte1[] = message.getHeader().toWire();
            if (tsigrecord != null)
            {
                message.getHeader().incCount(3);
            }
            verifier.update(abyte1);
            int j;
            if (tsigrecord == null)
            {
                j = abyte0.length - abyte1.length;
            } else
            {
                j = message.tsigstart - abyte1.length;
            }
            verifier.update(abyte0, abyte1.length, j);
            if (tsigrecord != null)
            {
                lastsigned = nresponses;
                lastTSIG = tsigrecord;
                if (!tsigrecord.getName().equals(key.name) || !tsigrecord.getAlgorithm().equals(key.alg))
                {
                    if (Options.check("verbose"))
                    {
                        System.err.println("BADKEY failure");
                    }
                    message.tsigState = 4;
                    return 17;
                }
            } else
            {
                boolean flag;
                if (nresponses - lastsigned >= 100)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    message.tsigState = 4;
                    return 1;
                } else
                {
                    message.tsigState = 2;
                    return 0;
                }
            }
            message = new DNSOutput();
            long l = tsigrecord.getTimeSigned().getTime() / 1000L;
            message.writeU16((int)(l >> 32));
            message.writeU32(l & 0xffffffffL);
            message.writeU16(tsigrecord.getFudge());
            verifier.update(message.toByteArray());
            if (!verifier.verify(tsigrecord.getSignature()))
            {
                if (Options.check("verbose"))
                {
                    System.err.println("BADSIG failure");
                }
                return 16;
            } else
            {
                verifier.clear();
                message = new DNSOutput();
                message.writeU16(tsigrecord.getSignature().length);
                verifier.update(message.toByteArray());
                verifier.update(tsigrecord.getSignature());
                return 0;
            }
        }

        public StreamVerifier(TSIG tsig, TSIGRecord tsigrecord)
        {
            key = tsig;
            verifier = new HMAC(key.digest, key.key);
            nresponses = 0;
            lastTSIG = tsigrecord;
        }
    }


    public static final short FUDGE = 300;
    public static final Name HMAC;
    public static final Name HMAC_MD5;
    private static final String HMAC_MD5_STR = "HMAC-MD5.SIG-ALG.REG.INT.";
    public static final Name HMAC_SHA1 = Name.fromConstantString("hmac-sha1.");
    private static final String HMAC_SHA1_STR = "hmac-sha1.";
    public static final Name HMAC_SHA256 = Name.fromConstantString("hmac-sha256.");
    private static final String HMAC_SHA256_STR = "hmac-sha256.";
    private Name alg;
    private String digest;
    private byte key[];
    private Name name;

    public TSIG(String s, String s1)
    {
        this(HMAC_MD5, s, s1);
    }

    public TSIG(String s, String s1, String s2)
    {
        this(HMAC_MD5, s1, s2);
        if (s.equalsIgnoreCase("hmac-md5"))
        {
            alg = HMAC_MD5;
        } else
        if (s.equalsIgnoreCase("hmac-sha1"))
        {
            alg = HMAC_SHA1;
        } else
        if (s.equalsIgnoreCase("hmac-sha256"))
        {
            alg = HMAC_SHA256;
        } else
        {
            throw new IllegalArgumentException("Invalid TSIG algorithm");
        }
        getDigest();
    }

    public TSIG(Name name1, String s, String s1)
    {
        key = base64.fromString(s1);
        if (key == null)
        {
            throw new IllegalArgumentException("Invalid TSIG key string");
        }
        try
        {
            name = Name.fromString(s, Name.root);
        }
        // Misplaced declaration of an exception variable
        catch (Name name1)
        {
            throw new IllegalArgumentException("Invalid TSIG key name");
        }
        alg = name1;
        getDigest();
    }

    public TSIG(Name name1, Name name2, byte abyte0[])
    {
        name = name2;
        alg = name1;
        key = abyte0;
        getDigest();
    }

    public TSIG(Name name1, byte abyte0[])
    {
        this(HMAC_MD5, name1, abyte0);
    }

    public static TSIG fromString(String s)
    {
        s = s.split("[:/]");
        if (s.length < 2 || s.length > 3)
        {
            throw new IllegalArgumentException("Invalid TSIG key specification");
        }
        if (s.length == 3)
        {
            return new TSIG(s[0], s[1], s[2]);
        } else
        {
            return new TSIG(HMAC_MD5, s[0], s[1]);
        }
    }

    private void getDigest()
    {
        if (alg.equals(HMAC_MD5))
        {
            digest = "md5";
            return;
        }
        if (alg.equals(HMAC_SHA1))
        {
            digest = "sha-1";
            return;
        }
        if (alg.equals(HMAC_SHA256))
        {
            digest = "sha-256";
            return;
        } else
        {
            throw new IllegalArgumentException("Invalid algorithm");
        }
    }

    public void apply(Message message, int i, TSIGRecord tsigrecord)
    {
        message.addRecord(generate(message, message.toWire(), i, tsigrecord), 3);
        message.tsigState = 3;
    }

    public void apply(Message message, TSIGRecord tsigrecord)
    {
        apply(message, 0, tsigrecord);
    }

    public void applyStream(Message message, TSIGRecord tsigrecord, boolean flag)
    {
        Date date;
        HMAC hmac;
        int i;
label0:
        {
            if (flag)
            {
                apply(message, tsigrecord);
                return;
            }
            date = new Date();
            hmac = new HMAC(digest, key);
            int j = Options.intValue("tsigfudge");
            if (j >= 0)
            {
                i = j;
                if (j <= 32767)
                {
                    break label0;
                }
            }
            i = 300;
        }
        DNSOutput dnsoutput = new DNSOutput();
        dnsoutput.writeU16(tsigrecord.getSignature().length);
        hmac.update(dnsoutput.toByteArray());
        hmac.update(tsigrecord.getSignature());
        hmac.update(message.toWire());
        tsigrecord = new DNSOutput();
        long l = date.getTime() / 1000L;
        tsigrecord.writeU16((int)(l >> 32));
        tsigrecord.writeU32(l & 0xffffffffL);
        tsigrecord.writeU16(i);
        hmac.update(tsigrecord.toByteArray());
        tsigrecord = hmac.sign();
        message.addRecord(new TSIGRecord(name, 255, 0L, alg, date, i, tsigrecord, message.getHeader().getID(), 0, null), 3);
        message.tsigState = 3;
    }

    public TSIGRecord generate(Message message, byte abyte0[], int i, TSIGRecord tsigrecord)
    {
label0:
        {
            Date date;
            HMAC hmac;
            DNSOutput dnsoutput;
            int j;
            int k;
            long l;
            if (i != 18)
            {
                date = new Date();
            } else
            {
                date = tsigrecord.getTimeSigned();
            }
            hmac = null;
            if (i == 0 || i == 18)
            {
                hmac = new HMAC(digest, key);
            }
            k = Options.intValue("tsigfudge");
            if (k >= 0)
            {
                j = k;
                if (k <= 32767)
                {
                    break label0;
                }
            }
            j = 300;
        }
        if (tsigrecord != null)
        {
            dnsoutput = new DNSOutput();
            dnsoutput.writeU16(tsigrecord.getSignature().length);
            if (hmac != null)
            {
                hmac.update(dnsoutput.toByteArray());
                hmac.update(tsigrecord.getSignature());
            }
        }
        if (hmac != null)
        {
            hmac.update(abyte0);
        }
        abyte0 = new DNSOutput();
        name.toWireCanonical(abyte0);
        abyte0.writeU16(255);
        abyte0.writeU32(0L);
        alg.toWireCanonical(abyte0);
        l = date.getTime() / 1000L;
        abyte0.writeU16((int)(l >> 32));
        abyte0.writeU32(l & 0xffffffffL);
        abyte0.writeU16(j);
        abyte0.writeU16(i);
        abyte0.writeU16(0);
        if (hmac != null)
        {
            hmac.update(abyte0.toByteArray());
        }
        if (hmac != null)
        {
            abyte0 = hmac.sign();
        } else
        {
            abyte0 = new byte[0];
        }
        tsigrecord = null;
        if (i == 18)
        {
            tsigrecord = new DNSOutput();
            l = (new Date()).getTime() / 1000L;
            tsigrecord.writeU16((int)(l >> 32));
            tsigrecord.writeU32(l & 0xffffffffL);
            tsigrecord = tsigrecord.toByteArray();
        }
        return new TSIGRecord(name, 255, 0L, alg, date, j, abyte0, message.getHeader().getID(), i, tsigrecord);
    }

    public int recordLength()
    {
        return name.length() + 10 + alg.length() + 8 + 18 + 4 + 8;
    }

    public byte verify(Message message, byte abyte0[], int i, TSIGRecord tsigrecord)
    {
        message.tsigState = 4;
        TSIGRecord tsigrecord1 = message.getTSIG();
        HMAC hmac = new HMAC(digest, key);
        if (tsigrecord1 == null)
        {
            return 1;
        }
        if (!tsigrecord1.getName().equals(name) || !tsigrecord1.getAlgorithm().equals(alg))
        {
            if (Options.check("verbose"))
            {
                System.err.println("BADKEY failure");
            }
            return 17;
        }
        long l = System.currentTimeMillis();
        long l1 = tsigrecord1.getTimeSigned().getTime();
        long l2 = tsigrecord1.getFudge();
        if (Math.abs(l - l1) > 1000L * l2)
        {
            if (Options.check("verbose"))
            {
                System.err.println("BADTIME failure");
            }
            return 18;
        }
        if (tsigrecord != null && tsigrecord1.getError() != 17 && tsigrecord1.getError() != 16)
        {
            DNSOutput dnsoutput = new DNSOutput();
            dnsoutput.writeU16(tsigrecord.getSignature().length);
            hmac.update(dnsoutput.toByteArray());
            hmac.update(tsigrecord.getSignature());
        }
        message.getHeader().decCount(3);
        tsigrecord = message.getHeader().toWire();
        message.getHeader().incCount(3);
        hmac.update(tsigrecord);
        i = message.tsigstart;
        int j = tsigrecord.length;
        hmac.update(abyte0, tsigrecord.length, i - j);
        abyte0 = new DNSOutput();
        tsigrecord1.getName().toWireCanonical(abyte0);
        abyte0.writeU16(tsigrecord1.dclass);
        abyte0.writeU32(tsigrecord1.ttl);
        tsigrecord1.getAlgorithm().toWireCanonical(abyte0);
        l = tsigrecord1.getTimeSigned().getTime() / 1000L;
        abyte0.writeU16((int)(l >> 32));
        abyte0.writeU32(l & 0xffffffffL);
        abyte0.writeU16(tsigrecord1.getFudge());
        abyte0.writeU16(tsigrecord1.getError());
        if (tsigrecord1.getOther() != null)
        {
            abyte0.writeU16(tsigrecord1.getOther().length);
            abyte0.writeByteArray(tsigrecord1.getOther());
        } else
        {
            abyte0.writeU16(0);
        }
        hmac.update(abyte0.toByteArray());
        if (hmac.verify(tsigrecord1.getSignature()))
        {
            message.tsigState = 1;
            return 0;
        }
        if (Options.check("verbose"))
        {
            System.err.println("BADSIG failure");
        }
        return 16;
    }

    public int verify(Message message, byte abyte0[], TSIGRecord tsigrecord)
    {
        return verify(message, abyte0, abyte0.length, tsigrecord);
    }

    static 
    {
        HMAC_MD5 = Name.fromConstantString("HMAC-MD5.SIG-ALG.REG.INT.");
        HMAC = HMAC_MD5;
    }




}
