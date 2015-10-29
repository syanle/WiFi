// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.b;


public class a
{

    public static final char a[] = "0123456789abcdef".toCharArray();
    private static final char b[] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-".toCharArray();

    public static byte a(char c)
    {
        char c1;
        try
        {
            c1 = Character.toLowerCase(c);
        }
        catch (Throwable throwable)
        {
            c1 = c;
        }
        return (byte)"0123456789abcdef".indexOf(c1);
    }

    public static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        for (int i = 0; i < abyte0.length; i++)
        {
            stringbuilder.append(a[(abyte0[i] & 0xf0) >>> 4]);
            stringbuilder.append(a[abyte0[i] & 0xf]);
        }

        return stringbuilder.toString();
    }

}
