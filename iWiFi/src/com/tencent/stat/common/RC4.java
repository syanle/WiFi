// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;


public class RC4
{

    static final byte key[] = "03a976511e2cbe3a7f26808fb7af3c05".getBytes();

    public static byte[] decrypt(byte abyte0[])
    {
        return decrypt(abyte0, key);
    }

    static byte[] decrypt(byte abyte0[], byte abyte1[])
    {
        return encrypt(abyte0, abyte1);
    }

    public static byte[] encrypt(byte abyte0[])
    {
        return encrypt(abyte0, key);
    }

    static byte[] encrypt(byte abyte0[], byte abyte1[])
    {
        boolean flag = false;
        int ai[] = new int[256];
        int ai1[] = new int[256];
        int l = abyte1.length;
        if (l < 1 || l > 256)
        {
            throw new IllegalArgumentException("key must be between 1 and 256 bytes");
        }
        for (int i = 0; i < 256; i++)
        {
            ai[i] = i;
            ai1[i] = abyte1[i % l];
        }

        int j = 0;
        l = 0;
        for (; j < 256; j++)
        {
            l = l + ai[j] + ai1[j] & 0xff;
            int i1 = ai[j];
            ai[j] = ai[l];
            ai[l] = i1;
        }

        abyte1 = new byte[abyte0.length];
        l = 0;
        int j1 = 0;
        for (int k = ((flag) ? 1 : 0); k < abyte0.length; k++)
        {
            j1 = j1 + 1 & 0xff;
            l = l + ai[j1] & 0xff;
            int k1 = ai[j1];
            ai[j1] = ai[l];
            ai[l] = k1;
            abyte1[k] = (byte)(ai[ai[j1] + ai[l] & 0xff] ^ abyte0[k]);
        }

        return abyte1;
    }

}
