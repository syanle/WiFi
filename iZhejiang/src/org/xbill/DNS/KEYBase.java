// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.security.PublicKey;
import org.xbill.DNS.utils.base64;

// Referenced classes of package org.xbill.DNS:
//            Record, DNSOutput, DNSSEC, DNSInput, 
//            Options, Name, Compression

abstract class KEYBase extends Record
{

    private static final long serialVersionUID = 0x302581b9bcadf64eL;
    protected int alg;
    protected int flags;
    protected int footprint;
    protected byte key[];
    protected int proto;
    protected PublicKey publicKey;

    protected KEYBase()
    {
        footprint = -1;
        publicKey = null;
    }

    public KEYBase(Name name, int i, int j, long l, int k, int i1, 
            int j1, byte abyte0[])
    {
        super(name, i, j, l);
        footprint = -1;
        publicKey = null;
        flags = checkU16("flags", k);
        proto = checkU8("proto", i1);
        alg = checkU8("alg", j1);
        key = abyte0;
    }

    public int getAlgorithm()
    {
        return alg;
    }

    public int getFlags()
    {
        return flags;
    }

    public int getFootprint()
    {
        byte abyte0[];
        int i;
        if (footprint >= 0)
        {
            return footprint;
        }
        i = 0;
        DNSOutput dnsoutput = new DNSOutput();
        rrToWire(dnsoutput, null, false);
        abyte0 = dnsoutput.toByteArray();
        if (alg != 1) goto _L2; else goto _L1
_L1:
        i = ((abyte0[abyte0.length - 3] & 0xff) << 8) + (abyte0[abyte0.length - 2] & 0xff);
_L4:
        footprint = i & 0xffff;
        return footprint;
_L2:
        int j = 0;
        do
        {
label0:
            {
                if (j < abyte0.length - 1)
                {
                    break label0;
                }
                int k = i;
                if (j < abyte0.length)
                {
                    k = i + ((abyte0[j] & 0xff) << 8);
                }
                i = k + (k >> 16 & 0xffff);
            }
            if (true)
            {
                continue;
            }
            i += ((abyte0[j] & 0xff) << 8) + (abyte0[j + 1] & 0xff);
            j += 2;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public byte[] getKey()
    {
        return key;
    }

    public int getProtocol()
    {
        return proto;
    }

    public PublicKey getPublicKey()
        throws DNSSEC.DNSSECException
    {
        if (publicKey != null)
        {
            return publicKey;
        } else
        {
            publicKey = DNSSEC.toPublicKey(this);
            return publicKey;
        }
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        flags = dnsinput.readU16();
        proto = dnsinput.readU8();
        alg = dnsinput.readU8();
        if (dnsinput.remaining() > 0)
        {
            key = dnsinput.readByteArray();
        }
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(flags);
        stringbuffer.append(" ");
        stringbuffer.append(proto);
        stringbuffer.append(" ");
        stringbuffer.append(alg);
        if (key != null)
        {
            if (Options.check("multiline"))
            {
                stringbuffer.append(" (\n");
                stringbuffer.append(base64.formatString(key, 64, "\t", true));
                stringbuffer.append(" ; key_tag = ");
                stringbuffer.append(getFootprint());
            } else
            {
                stringbuffer.append(" ");
                stringbuffer.append(base64.toString(key));
            }
        }
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeU16(flags);
        dnsoutput.writeU8(proto);
        dnsoutput.writeU8(alg);
        if (key != null)
        {
            dnsoutput.writeByteArray(key);
        }
    }
}
