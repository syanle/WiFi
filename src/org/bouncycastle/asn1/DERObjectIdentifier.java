// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;

// Referenced classes of package org.bouncycastle.asn1:
//            ASN1Object, ASN1TaggedObject, ASN1ObjectIdentifier, ASN1OctetString, 
//            OIDTokenizer, DEROutputStream, DERObject

public class DERObjectIdentifier extends ASN1Object
{

    String identifier;

    public DERObjectIdentifier(String s)
    {
        if (!isValidIdentifier(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("string ").append(s).append(" not an OID").toString());
        } else
        {
            identifier = s;
            return;
        }
    }

    DERObjectIdentifier(byte abyte0[])
    {
        BigInteger biginteger;
        StringBuffer stringbuffer;
        int i;
        int k;
        long l;
        stringbuffer = new StringBuffer();
        i = 1;
        biginteger = null;
        l = 0L;
        k = 0;
_L10:
        if (k == abyte0.length) goto _L2; else goto _L1
_L1:
        int j = abyte0[k] & 0xff;
        if (l >= 0x80000000000000L) goto _L4; else goto _L3
_L3:
        BigInteger biginteger1;
        long l1;
        l = l * 128L + (long)(j & 0x7f);
        biginteger1 = biginteger;
        l1 = l;
        if ((j & 0x80) != 0)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        j = i;
        l1 = l;
        if (i == 0) goto _L6; else goto _L5
_L5:
        (int)l / 40;
        JVM INSTR tableswitch 0 1: default 120
    //                   0 175
    //                   1 186;
           goto _L7 _L8 _L9
_L7:
        stringbuffer.append('2');
        l -= 80L;
_L11:
        j = 0;
        l1 = l;
_L6:
        stringbuffer.append('.');
        stringbuffer.append(l1);
        l = 0L;
        i = j;
_L12:
        k++;
          goto _L10
_L8:
        stringbuffer.append('0');
          goto _L11
_L9:
        stringbuffer.append('1');
        l -= 40L;
          goto _L11
_L4:
        biginteger1 = biginteger;
        if (biginteger == null)
        {
            biginteger1 = BigInteger.valueOf(l);
        }
        biginteger = biginteger1.shiftLeft(7).or(BigInteger.valueOf(j & 0x7f));
        biginteger1 = biginteger;
        l1 = l;
        if ((j & 0x80) != 0)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        stringbuffer.append('.');
        stringbuffer.append(biginteger);
        l = 0L;
        biginteger = null;
          goto _L12
_L2:
        identifier = stringbuffer.toString();
        return;
        biginteger = biginteger1;
        l = l1;
          goto _L12
    }

    public static DERObjectIdentifier getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DERObjectIdentifier))
        {
            return (DERObjectIdentifier)obj;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DERObjectIdentifier getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        DERObject derobject = asn1taggedobject.getObject();
        if (flag || (derobject instanceof DERObjectIdentifier))
        {
            return getInstance(derobject);
        } else
        {
            return new ASN1ObjectIdentifier(ASN1OctetString.getInstance(asn1taggedobject.getObject()).getOctets());
        }
    }

    private static boolean isValidIdentifier(String s)
    {
        if (s.length() >= 3 && s.charAt(1) == '.') goto _L2; else goto _L1
_L1:
        int i;
        return false;
_L2:
        if ((i = s.charAt(0)) < '0' || i > '2') goto _L1; else goto _L3
_L3:
        boolean flag;
        i = s.length() - 1;
        flag = false;
_L5:
        char c;
        if (i < 2)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        c = s.charAt(i);
        if ('0' > c || c > '9')
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
_L7:
        i--;
        if (true) goto _L5; else goto _L4
_L4:
        if (c != '.' || !flag) goto _L1; else goto _L6
_L6:
        flag = false;
          goto _L7
        return flag;
    }

    private void writeField(OutputStream outputstream, long l)
        throws IOException
    {
        byte abyte0[] = new byte[9];
        int i = 8;
        for (abyte0[8] = (byte)((int)l & 0x7f); l >= 128L; abyte0[i] = (byte)((int)l & 0x7f | 0x80))
        {
            l >>= 7;
            i--;
        }

        outputstream.write(abyte0, i, 9 - i);
    }

    private void writeField(OutputStream outputstream, BigInteger biginteger)
        throws IOException
    {
        int k = (biginteger.bitLength() + 6) / 7;
        if (k == 0)
        {
            outputstream.write(0);
            return;
        }
        byte abyte0[] = new byte[k];
        for (int i = k - 1; i >= 0; i--)
        {
            abyte0[i] = (byte)(biginteger.intValue() & 0x7f | 0x80);
            biginteger = biginteger.shiftRight(7);
        }

        int j = k - 1;
        abyte0[j] = (byte)(abyte0[j] & 0x7f);
        outputstream.write(abyte0);
    }

    boolean asn1Equals(DERObject derobject)
    {
        if (!(derobject instanceof DERObjectIdentifier))
        {
            return false;
        } else
        {
            return identifier.equals(((DERObjectIdentifier)derobject).identifier);
        }
    }

    void encode(DEROutputStream deroutputstream)
        throws IOException
    {
        OIDTokenizer oidtokenizer = new OIDTokenizer(identifier);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DEROutputStream deroutputstream1 = new DEROutputStream(bytearrayoutputstream);
        writeField(bytearrayoutputstream, Integer.parseInt(oidtokenizer.nextToken()) * 40 + Integer.parseInt(oidtokenizer.nextToken()));
        while (oidtokenizer.hasMoreTokens()) 
        {
            String s = oidtokenizer.nextToken();
            if (s.length() < 18)
            {
                writeField(bytearrayoutputstream, Long.parseLong(s));
            } else
            {
                writeField(bytearrayoutputstream, new BigInteger(s));
            }
        }
        deroutputstream1.close();
        deroutputstream.writeEncoded(6, bytearrayoutputstream.toByteArray());
    }

    public String getId()
    {
        return identifier;
    }

    public int hashCode()
    {
        return identifier.hashCode();
    }

    public String toString()
    {
        return getId();
    }
}
