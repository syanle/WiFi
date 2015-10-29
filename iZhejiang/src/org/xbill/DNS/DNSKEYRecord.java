// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.security.PublicKey;

// Referenced classes of package org.xbill.DNS:
//            KEYBase, DNSSEC, Tokenizer, Name, 
//            Record

public class DNSKEYRecord extends KEYBase
{
    public static class Flags
    {

        public static final int REVOKE = 128;
        public static final int SEP_KEY = 1;
        public static final int ZONE_KEY = 256;

        private Flags()
        {
        }
    }

    public static class Protocol
    {

        public static final int DNSSEC = 3;

        private Protocol()
        {
        }
    }


    private static final long serialVersionUID = 0x878b27d9ccf264c6L;

    DNSKEYRecord()
    {
    }

    public DNSKEYRecord(Name name, int i, long l, int j, int k, int i1, 
            PublicKey publickey)
        throws DNSSEC.DNSSECException
    {
        super(name, 48, i, l, j, k, i1, DNSSEC.fromPublicKey(publickey, i1));
        publicKey = publickey;
    }

    public DNSKEYRecord(Name name, int i, long l, int j, int k, int i1, 
            byte abyte0[])
    {
        super(name, 48, i, l, j, k, i1, abyte0);
    }

    public volatile int getAlgorithm()
    {
        return super.getAlgorithm();
    }

    public volatile int getFlags()
    {
        return super.getFlags();
    }

    public volatile int getFootprint()
    {
        return super.getFootprint();
    }

    public volatile byte[] getKey()
    {
        return super.getKey();
    }

    Record getObject()
    {
        return new DNSKEYRecord();
    }

    public volatile int getProtocol()
    {
        return super.getProtocol();
    }

    public volatile PublicKey getPublicKey()
        throws DNSSEC.DNSSECException
    {
        return super.getPublicKey();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        flags = tokenizer.getUInt16();
        proto = tokenizer.getUInt8();
        name = tokenizer.getString();
        alg = DNSSEC.Algorithm.value(name);
        if (alg < 0)
        {
            throw tokenizer.exception((new StringBuilder("Invalid algorithm: ")).append(name).toString());
        } else
        {
            key = tokenizer.getBase64();
            return;
        }
    }
}
