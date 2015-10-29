// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class HMAC
{

    private static final byte IPAD = 54;
    private static final byte OPAD = 92;
    private static final byte PADLEN = 64;
    MessageDigest digest;
    private byte ipad[];
    private byte opad[];

    public HMAC(String s, byte abyte0[])
    {
        try
        {
            digest = MessageDigest.getInstance(s);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalArgumentException((new StringBuilder("unknown digest algorithm ")).append(s).toString());
        }
        init(abyte0);
    }

    public HMAC(MessageDigest messagedigest, byte abyte0[])
    {
        messagedigest.reset();
        digest = messagedigest;
        init(abyte0);
    }

    private void init(byte abyte0[])
    {
        byte abyte1[];
        int i;
        abyte1 = abyte0;
        if (abyte0.length > 64)
        {
            abyte1 = digest.digest(abyte0);
            digest.reset();
        }
        ipad = new byte[64];
        opad = new byte[64];
        i = 0;
_L3:
        if (i < abyte1.length) goto _L2; else goto _L1
_L1:
        if (i >= 64)
        {
            digest.update(ipad);
            return;
        }
        break MISSING_BLOCK_LABEL_100;
_L2:
        ipad[i] = (byte)(abyte1[i] ^ 0x36);
        opad[i] = (byte)(abyte1[i] ^ 0x5c);
        i++;
          goto _L3
        ipad[i] = 54;
        opad[i] = 92;
        i++;
          goto _L1
    }

    public void clear()
    {
        digest.reset();
        digest.update(ipad);
    }

    public byte[] sign()
    {
        byte abyte0[] = digest.digest();
        digest.reset();
        digest.update(opad);
        return digest.digest(abyte0);
    }

    public void update(byte abyte0[])
    {
        digest.update(abyte0);
    }

    public void update(byte abyte0[], int i, int j)
    {
        digest.update(abyte0, i, j);
    }

    public boolean verify(byte abyte0[])
    {
        return Arrays.equals(abyte0, sign());
    }
}
