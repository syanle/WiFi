// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import com.baidu.location.b.b.b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class CommonEncrypt
{

    public static boolean a = true;

    public CommonEncrypt()
    {
    }

    public static String a(String s)
    {
        if (!a)
        {
            return null;
        }
        s = a(encrypt(s.getBytes()));
        try
        {
            s = URLEncoder.encode(s, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        return s;
    }

    public static String a(byte abyte0[])
    {
        try
        {
            abyte0 = b.a(abyte0, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return "";
        }
        return abyte0;
    }

    public static native byte[] encrypt(byte abyte0[]);

    static 
    {
        try
        {
            System.loadLibrary("locSDK4d");
            a = true;
        }
        catch (Exception exception)
        {
            a = false;
        }
    }
}
