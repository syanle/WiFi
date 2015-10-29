// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.android.bbalbs.common.a;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class c
{

    public static String a(byte abyte0[], String s, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int j = abyte0.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return stringbuilder.toString();
            }
            String s2 = Integer.toHexString(abyte0[i] & 0xff);
            String s1 = s2;
            if (flag)
            {
                s1 = s2.toUpperCase();
            }
            if (s1.length() == 1)
            {
                stringbuilder.append("0");
            }
            stringbuilder.append(s1).append(s);
            i++;
        } while (true);
    }

    public static String a(byte abyte0[], boolean flag)
    {
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.reset();
            messagedigest.update(abyte0);
            abyte0 = a(messagedigest.digest(), "", flag);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new RuntimeException(abyte0);
        }
        return abyte0;
    }
}
