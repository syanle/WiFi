// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

public class Des
{

    private static String a = "DESede";
    private Cipher b;
    private Cipher c;

    public Des(String s)
    {
        b = null;
        c = null;
        try
        {
            SecureRandom securerandom = new SecureRandom();
            s = new DESedeKeySpec(s.getBytes("utf-8"));
            s = SecretKeyFactory.getInstance(a).generateSecret(s);
            b = Cipher.getInstance(a);
            b.init(1, s, securerandom);
            c = Cipher.getInstance(a);
            c.init(2, s, securerandom);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public String byte2hex(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuilder.toString();
            }
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuilder.append("0").append(s);
            } else
            {
                stringbuilder.append(s);
            }
            i++;
        } while (true);
    }

    public String decrypt(String s, String s1)
    {
        return new String(c.doFinal(hex2byte(s)), s1);
    }

    public String encrypt(String s)
    {
        s = s.getBytes("utf-8");
        return byte2hex(b.doFinal(s));
    }

    public byte[] hex2byte(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        int i;
        s = s.trim();
        i = s.length();
        if (i == 0 || i % 2 == 1) goto _L1; else goto _L3
_L3:
        byte abyte0[];
        abyte0 = new byte[i / 2];
        i = 0;
        do
        {
            if (i >= s.length())
            {
                return abyte0;
            }
            try
            {
                abyte0[i / 2] = (byte)Integer.decode((new StringBuilder("0X")).append(s.substring(i, i + 2)).toString()).intValue();
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return null;
            }
            i += 2;
        } while (true);
    }

}
