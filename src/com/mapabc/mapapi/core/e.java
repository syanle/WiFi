// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.location.Address;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.Html;
import android.text.Spanned;
import android.util.TypedValue;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

public class e
{

    public static boolean a = true;
    static float b[] = new float[9];
    private static String c = null;
    private static String d;

    public e()
    {
    }

    public static double a(long l)
    {
        return (double)l / 1000000D;
    }

    public static int a(int i)
    {
        return (int)((1117L * (long)i) / 10000L);
    }

    public static int a(Context context, int i)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static long a(double d1)
    {
        return (long)(1000000D * d1);
    }

    public static String a()
    {
        return "401FFB6E52385325E41206A6AFF7A316";
    }

    public static String a(Context context)
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        char ac[];
        ac = new char[16];
        ac;
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
        byte abyte0[];
        context = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(context[0].toByteArray());
        abyte0 = messagedigest.digest();
        int i;
        context = "";
        i = 0;
_L7:
        if (i >= abyte0.length) goto _L4; else goto _L3
_L3:
        String s;
        int j;
        if (abyte0[i] < 0)
        {
            j = abyte0[i] + 256;
        } else
        {
            j = abyte0[i];
        }
        context = (new StringBuilder()).append(context).append(ac[j / 16]).toString();
        s = (new StringBuilder()).append(context).append(ac[j % 16]).toString();
        context = s;
        if (i != abyte0.length - 1)
        {
            context = (new StringBuilder()).append(s).append(":").toString();
        }
          goto _L5
_L4:
        try
        {
            c = context;
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
_L2:
        return c;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static String a(String s, String s1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("<font color=").append(s1).append(">").append(s).append("</font>");
        return stringbuffer.toString();
    }

    public static Document a(InputStream inputstream)
    {
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        try
        {
            inputstream = documentbuilderfactory.newDocumentBuilder().parse(inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return null;
        }
        return inputstream;
    }

    public static void a(Context context, Location location)
    {
        context = context.getSharedPreferences("last_know_location", 0).edit();
        context.putString("last_know_lat", String.valueOf(location.getLatitude()));
        context.putString("last_know_lng", String.valueOf(location.getLongitude()));
        context.commit();
    }

    public static void a(String s)
    {
        d = s;
    }

    public static int b(int i)
    {
        return (int)(((long)i * 0xf4240L) / 0x1b454L);
    }

    public static String b()
    {
        return d;
    }

    public static java.net.Proxy b(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null)
        {
            int i;
            if (networkinfo.getType() == 1)
            {
                String s = Proxy.getHost(context);
                i = Proxy.getPort(context);
                context = s;
            } else
            {
                context = Proxy.getDefaultHost();
                i = Proxy.getDefaultPort();
            }
            if (context != null)
            {
                return new java.net.Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(context, i));
            }
        }
        return null;
    }

    public static boolean b(String s)
    {
        return s == null || s.trim().length() == 0;
    }

    public static long c()
    {
        return (System.nanoTime() * 1000L) / 0x3b9aca00L;
    }

    public static String c(int i)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int j = 0; j < i; j++)
        {
            stringbuilder.append("&nbsp;");
        }

        return stringbuilder.toString();
    }

    public static Document c(String s)
    {
        return a(new ByteArrayInputStream(s.getBytes()));
    }

    public static boolean c(Context context)
    {
        if (context == null)
        {
            return false;
        }
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context == null)
        {
            return false;
        }
        context = context.getActiveNetworkInfo();
        if (context == null)
        {
            return false;
        }
        context = context.getState();
        return context != null && context != android.net.NetworkInfo.State.DISCONNECTED && context != android.net.NetworkInfo.State.DISCONNECTING;
    }

    public static Address d()
    {
        Address address = new Address(Locale.CHINA);
        address.setCountryCode("CN");
        address.setCountryName("\u4E2D\u56FD");
        return address;
    }

    public static Location d(Context context)
    {
        context = context.getSharedPreferences("last_know_location", 0);
        Location location = new Location("");
        location.setProvider("lbs");
        double d1 = Double.parseDouble(context.getString("last_know_lat", "0.0"));
        double d2 = Double.parseDouble(context.getString("last_know_lng", "0.0"));
        location.setLatitude(d1);
        location.setLongitude(d2);
        return location;
    }

    public static Spanned d(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Html.fromHtml(s.replace("\n", "<br />"));
        }
    }

    public static String e()
    {
        return "<br />";
    }

}
