// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.android.bbalbs.common.a;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a
{

    public static byte[] a(String s, String s1, byte abyte0[])
        throws Exception
    {
        s1 = new SecretKeySpec(s1.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, s1, new IvParameterSpec(s.getBytes()));
        return cipher.doFinal(abyte0);
    }

    public static byte[] b(String s, String s1, byte abyte0[])
        throws Exception
    {
        s1 = new SecretKeySpec(s1.getBytes(), "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, s1, new IvParameterSpec(s.getBytes()));
        return cipher.doFinal(abyte0);
    }
}
