// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

public class com.baidu.mapapi.utils.a
{
    static class a
    {

        public static String a(byte abyte0[])
        {
            char ac[] = new char[16];
            char[] _tmp = ac;
            ac[0] = '0';
            ac[1] = '1';
            ac[2] = '2';
            ac[3] = '3';
            ac[4] = '4';
            ac[5] = '5';
            ac[6] = '6';
            ac[7] = '7';
            ac[8] = '8';
            ac[9] = '9';
            ac[10] = 'A';
            ac[11] = 'B';
            ac[12] = 'C';
            ac[13] = 'D';
            ac[14] = 'E';
            ac[15] = 'F';
            StringBuilder stringbuilder = new StringBuilder(abyte0.length * 2);
            for (int i = 0; i < abyte0.length; i++)
            {
                stringbuilder.append(ac[(abyte0[i] & 0xf0) >> 4]);
                stringbuilder.append(ac[abyte0[i] & 0xf]);
            }

            return stringbuilder.toString();
        }
    }


    public static String a(Context context)
    {
        String s = context.getPackageName();
        context = a(context, s);
        return (new StringBuilder()).append(context).append(";").append(s).toString();
    }

    private static String a(Context context, String s)
    {
        try
        {
            context = context.getPackageManager().getPackageInfo(s, 64).signatures;
            context = a((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(context[0].toByteArray())));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            context = "";
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            context = "";
        }
        s = new StringBuffer();
        for (int i = 0; i < context.length(); i++)
        {
            s.append(context.charAt(i));
            if (i > 0 && i % 2 == 1 && i < context.length() - 1)
            {
                s.append(":");
            }
        }

        return s.toString();
    }

    static String a(X509Certificate x509certificate)
    {
        try
        {
            x509certificate = a.a(a(x509certificate.getEncoded()));
        }
        // Misplaced declaration of an exception variable
        catch (X509Certificate x509certificate)
        {
            return null;
        }
        return x509certificate;
    }

    static byte[] a(byte abyte0[])
    {
        try
        {
            abyte0 = MessageDigest.getInstance("SHA1").digest(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        return abyte0;
    }
}
