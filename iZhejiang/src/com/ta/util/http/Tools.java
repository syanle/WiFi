// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.content.Context;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Tools
{

    private static final char HEX_DIGITS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private Context mContext;

    public Tools(Context context)
    {
        mContext = context;
    }

    private static byte[] bin2hex(String s)
    {
        MessageDigest messagedigest = null;
        MessageDigest messagedigest1 = MessageDigest.getInstance("SHA-256");
        messagedigest = messagedigest1;
_L2:
        messagedigest.reset();
        return messagedigest.digest(s.getBytes());
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        nosuchalgorithmexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getHash(String s)
    {
        s = bin2hex(s);
        return String.format((new StringBuilder("%0")).append(s.length * 2).append("X").toString(), new Object[] {
            new BigInteger(1, s)
        });
    }

    public static String getSign(String s)
    {
        try
        {
            s = md5((new StringBuilder(String.valueOf(URLEncoder.encode(new String(s.getBytes(), "UTF-8"), "UTF-8")))).append(getHash("app2c.51awifi.com")).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return "";
        }
        return s;
    }

    public static String md5(String s)
    {
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s.getBytes());
            s = toHexString(messagedigest.digest());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return s;
    }

    private static String toHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(HEX_DIGITS[(abyte0[i] & 0xf0) >>> 4]);
            stringbuilder.append(HEX_DIGITS[abyte0[i] & 0xf]);
            i++;
        } while (true);
    }

}
