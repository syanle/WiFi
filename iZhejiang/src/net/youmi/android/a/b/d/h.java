// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.d;

import java.security.Key;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

// Referenced classes of package net.youmi.android.a.b.d:
//            a

public class h
{

    public static String a(String s, String s1, byte abyte0[])
    {
        try
        {
            s = new String(net.youmi.android.a.b.d.a.a(a(s.getBytes(), s1, abyte0)), "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    private static Key a(String s)
    {
        s = new PBEKeySpec(s.toCharArray());
        return SecretKeyFactory.getInstance("PBEWITHMD5andDES").generateSecret(s);
    }

    public static byte[] a()
    {
        byte abyte0[] = new byte[8];
        (new Random()).nextBytes(abyte0);
        return abyte0;
    }

    public static byte[] a(byte abyte0[], String s, byte abyte1[])
    {
        s = a(s);
        abyte1 = new PBEParameterSpec(abyte1, 100);
        Cipher cipher = Cipher.getInstance("PBEWITHMD5andDES");
        cipher.init(1, s, abyte1);
        return cipher.doFinal(abyte0);
    }

    public static String b(String s, String s1, byte abyte0[])
    {
        try
        {
            s = new String(b(net.youmi.android.a.b.d.a.b(s.getBytes()), s1, abyte0));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static byte[] b(byte abyte0[], String s, byte abyte1[])
    {
        s = a(s);
        abyte1 = new PBEParameterSpec(abyte1, 100);
        Cipher cipher = Cipher.getInstance("PBEWITHMD5andDES");
        cipher.init(2, s, abyte1);
        return cipher.doFinal(abyte0);
    }
}
