// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom.util;

import android.text.TextUtils;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.umeng.socom.util:
//            c, g

public class b
{

    private static byte a[] = null;
    private static byte b[] = "nmeug.f9/Om+L823".getBytes();
    private static String c = com/umeng/socom/util/b.getName();

    public b()
    {
    }

    public static String a(String s, String s1)
        throws Exception
    {
        if (a == null)
        {
            Log.d(c, "AES encrypt\u5BC6\u94A5\u521D\u59CB\u5316\u5931\u8D25");
            return "";
        } else
        {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
            return com.umeng.socom.util.c.d(cipher.doFinal(s.getBytes(s1)));
        }
    }

    public static void a(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            String s1 = g.a(s);
            s = s1;
            if (s1.length() >= 16)
            {
                s = s1.substring(0, 16);
            }
            a = s.getBytes();
        }
    }

    public static String b(String s, String s1)
        throws Exception
    {
        if (a == null)
        {
            Log.d(c, "AES decrypt\u5BC6\u94A5\u521D\u59CB\u5316\u5931\u8D25");
            return "";
        } else
        {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
            return new String(cipher.doFinal(com.umeng.socom.util.c.b(s)), s1);
        }
    }

    public static String c(String s, String s1)
        throws Exception
    {
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        int k = cipher.getBlockSize();
        s = s.getBytes(s1);
        int j = s.length;
        int i = j;
        if (j % k != 0)
        {
            i = j + (k - j % k);
        }
        s1 = new byte[i];
        System.arraycopy(s, 0, s1, 0, s.length);
        cipher.init(1, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
        return com.umeng.socom.util.c.d(cipher.doFinal(s1));
    }

    public static String d(String s, String s1)
        throws Exception
    {
        Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(2, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
        return new String(cipher.doFinal(com.umeng.socom.util.c.b(s)), s1);
    }

}
