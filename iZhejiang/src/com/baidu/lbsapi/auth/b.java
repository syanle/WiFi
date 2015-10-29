// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

// Referenced classes of package com.baidu.lbsapi.auth:
//            a

class b
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


    protected static String a(Context context)
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
            context = "";
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
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

    static String b(Context context)
    {
        String s;
label0:
        {
            Object obj = null;
            if (false)
            {
                s = obj;
                if (!"".equals(null))
                {
                    break label0;
                }
            }
            s = context.getSharedPreferences("mac", 0).getString("macaddr", null);
            if (s == null)
            {
                String s2 = c(context);
                s = obj;
                if (s2 != null)
                {
                    String s1 = Base64.encodeToString(s2.getBytes(), 0);
                    s = s1;
                    if (!TextUtils.isEmpty(s1))
                    {
                        context.getSharedPreferences("mac", 0).edit().putString("macaddr", s1).commit();
                        s = s1;
                    }
                }
            }
        }
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("getMacID mac_adress: ").append(s).toString());
        }
        return s;
    }

    private static boolean b(Context context, String s)
    {
        boolean flag;
        if (context.checkCallingOrSelfPermission(s) != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("hasPermission ").append(flag).append(" | ").append(s).toString());
        }
        return flag;
    }

    static String c(Context context)
    {
        if (!b(context, "android.permission.ACCESS_WIFI_STATE")) goto _L2; else goto _L1
_L1:
        WifiInfo wifiinfo;
        wifiinfo = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo();
        context = wifiinfo.getMacAddress();
        if (!TextUtils.isEmpty(context))
        {
            Base64.encode(context.getBytes(), 0);
        }
        Context context1 = context;
        if (!com.baidu.lbsapi.auth.a.a)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        com.baidu.lbsapi.auth.a.a(String.format("ssid=%s mac=%s", new Object[] {
            wifiinfo.getSSID(), wifiinfo.getMacAddress()
        }));
        context1 = context;
_L4:
        return context1;
_L2:
        if (com.baidu.lbsapi.auth.a.a)
        {
            com.baidu.lbsapi.auth.a.a("You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE");
        }
        return null;
        Exception exception;
        exception;
        context = null;
_L5:
        context1 = context;
        if (!com.baidu.lbsapi.auth.a.a) goto _L4; else goto _L3
_L3:
        com.baidu.lbsapi.auth.a.a(exception.toString());
        return context;
        exception;
          goto _L5
    }
}
