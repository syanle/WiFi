// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.security.PublicKey;
import java.util.StringTokenizer;

// Referenced classes of package org.xbill.DNS:
//            KEYBase, DNSSEC, Tokenizer, Name, 
//            Record, Mnemonic

public class KEYRecord extends KEYBase
{
    public static class Flags
    {

        public static final int EXTEND = 4096;
        public static final int FLAG10 = 32;
        public static final int FLAG11 = 16;
        public static final int FLAG2 = 8192;
        public static final int FLAG4 = 2048;
        public static final int FLAG5 = 1024;
        public static final int FLAG8 = 128;
        public static final int FLAG9 = 64;
        public static final int HOST = 512;
        public static final int NOAUTH = 32768;
        public static final int NOCONF = 16384;
        public static final int NOKEY = 49152;
        public static final int NTYP3 = 768;
        public static final int OWNER_MASK = 768;
        public static final int SIG0 = 0;
        public static final int SIG1 = 1;
        public static final int SIG10 = 10;
        public static final int SIG11 = 11;
        public static final int SIG12 = 12;
        public static final int SIG13 = 13;
        public static final int SIG14 = 14;
        public static final int SIG15 = 15;
        public static final int SIG2 = 2;
        public static final int SIG3 = 3;
        public static final int SIG4 = 4;
        public static final int SIG5 = 5;
        public static final int SIG6 = 6;
        public static final int SIG7 = 7;
        public static final int SIG8 = 8;
        public static final int SIG9 = 9;
        public static final int USER = 0;
        public static final int USE_MASK = 49152;
        public static final int ZONE = 256;
        private static Mnemonic flags;

        public static int value(String s)
        {
            byte byte0 = -1;
            int i;
            int j;
            try
            {
                j = Integer.parseInt(s);
            }
            catch (NumberFormatException numberformatexception)
            {
                s = new StringTokenizer(s, "|");
                int k = 0;
                do
                {
                    if (!s.hasMoreTokens())
                    {
                        return k;
                    }
                    int l = flags.getValue(s.nextToken());
                    i = byte0;
                    if (l < 0)
                    {
                        continue;
                    }
                    k |= l;
                } while (true);
            }
            i = byte0;
            if (j >= 0)
            {
                i = byte0;
                if (j <= 65535)
                {
                    i = j;
                }
            }
            return i;
            if (true) goto _L2; else goto _L1
_L2:
            break MISSING_BLOCK_LABEL_26;
_L1:
        }

        static 
        {
            flags = new Mnemonic("KEY flags", 2);
            flags.setMaximum(65535);
            flags.setNumericAllowed(false);
            flags.add(16384, "NOCONF");
            flags.add(32768, "NOAUTH");
            flags.add(49152, "NOKEY");
            flags.add(8192, "FLAG2");
            flags.add(4096, "EXTEND");
            flags.add(2048, "FLAG4");
            flags.add(1024, "FLAG5");
            flags.add(0, "USER");
            flags.add(256, "ZONE");
            flags.add(512, "HOST");
            flags.add(768, "NTYP3");
            flags.add(128, "FLAG8");
            flags.add(64, "FLAG9");
            flags.add(32, "FLAG10");
            flags.add(16, "FLAG11");
            flags.add(0, "SIG0");
            flags.add(1, "SIG1");
            flags.add(2, "SIG2");
            flags.add(3, "SIG3");
            flags.add(4, "SIG4");
            flags.add(5, "SIG5");
            flags.add(6, "SIG6");
            flags.add(7, "SIG7");
            flags.add(8, "SIG8");
            flags.add(9, "SIG9");
            flags.add(10, "SIG10");
            flags.add(11, "SIG11");
            flags.add(12, "SIG12");
            flags.add(13, "SIG13");
            flags.add(14, "SIG14");
            flags.add(15, "SIG15");
        }

        private Flags()
        {
        }
    }

    public static class Protocol
    {

        public static final int ANY = 255;
        public static final int DNSSEC = 3;
        public static final int EMAIL = 2;
        public static final int IPSEC = 4;
        public static final int NONE = 0;
        public static final int TLS = 1;
        private static Mnemonic protocols;

        public static String string(int i)
        {
            return protocols.getText(i);
        }

        public static int value(String s)
        {
            return protocols.getValue(s);
        }

        static 
        {
            protocols = new Mnemonic("KEY protocol", 2);
            protocols.setMaximum(255);
            protocols.setNumericAllowed(true);
            protocols.add(0, "NONE");
            protocols.add(1, "TLS");
            protocols.add(2, "EMAIL");
            protocols.add(3, "DNSSEC");
            protocols.add(4, "IPSEC");
            protocols.add(255, "ANY");
        }

        private Protocol()
        {
        }
    }


    public static final int FLAG_NOAUTH = 32768;
    public static final int FLAG_NOCONF = 16384;
    public static final int FLAG_NOKEY = 49152;
    public static final int OWNER_HOST = 512;
    public static final int OWNER_USER = 0;
    public static final int OWNER_ZONE = 256;
    public static final int PROTOCOL_ANY = 255;
    public static final int PROTOCOL_DNSSEC = 3;
    public static final int PROTOCOL_EMAIL = 2;
    public static final int PROTOCOL_IPSEC = 4;
    public static final int PROTOCOL_TLS = 1;
    private static final long serialVersionUID = 0x589e41991f74c08aL;

    KEYRecord()
    {
    }

    public KEYRecord(Name name, int i, long l, int j, int k, int i1, 
            PublicKey publickey)
        throws DNSSEC.DNSSECException
    {
        super(name, 25, i, l, j, k, i1, DNSSEC.fromPublicKey(publickey, i1));
        publicKey = publickey;
    }

    public KEYRecord(Name name, int i, long l, int j, int k, int i1, 
            byte abyte0[])
    {
        super(name, 25, i, l, j, k, i1, abyte0);
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
        return new KEYRecord();
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
        name = tokenizer.getIdentifier();
        flags = Flags.value(name);
        if (flags < 0)
        {
            throw tokenizer.exception((new StringBuilder("Invalid flags: ")).append(name).toString());
        }
        name = tokenizer.getIdentifier();
        proto = Protocol.value(name);
        if (proto < 0)
        {
            throw tokenizer.exception((new StringBuilder("Invalid protocol: ")).append(name).toString());
        }
        name = tokenizer.getIdentifier();
        alg = DNSSEC.Algorithm.value(name);
        if (alg < 0)
        {
            throw tokenizer.exception((new StringBuilder("Invalid algorithm: ")).append(name).toString());
        }
        if ((flags & 0xc000) == 49152)
        {
            key = null;
            return;
        } else
        {
            key = tokenizer.getBase64();
            return;
        }
    }
}
