// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


public class d
{

    public d()
    {
    }

    public static int a(byte abyte0[], int i)
    {
        return ((abyte0[i + 3] & 0xff) << 24) + ((abyte0[i + 2] & 0xff) << 16) + ((abyte0[i + 1] & 0xff) << 8) + ((abyte0[i + 0] & 0xff) << 0);
    }

    public static void a(byte abyte0[], int i, byte abyte1[], int j, int k)
    {
        byte abyte2[] = new byte[k];
        System.arraycopy(abyte0, i, abyte2, 0, k);
        System.arraycopy(abyte2, 0, abyte1, j, k);
    }

    public static short b(byte abyte0[], int i)
    {
        return (short)(((abyte0[i + 1] & 0xff) << 8) + ((abyte0[i + 0] & 0xff) << 0));
    }
}
