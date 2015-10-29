// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location.b.b;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a
{

    private static final String a = "AES";
    private static final String _fldif = "AES/CBC/PKCS5Padding";

    private a()
    {
    }

    public static byte[] a(String s, String s1, byte abyte0[])
        throws Exception
    {
        s1 = new SecretKeySpec(s1.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, s1, new IvParameterSpec(s.getBytes()));
        return cipher.doFinal(abyte0);
    }

    public static byte[] _mthif(String s, String s1, byte abyte0[])
        throws Exception
    {
        s1 = new SecretKeySpec(s1.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, s1, new IvParameterSpec(s.getBytes()));
        return cipher.doFinal(abyte0);
    }
}
