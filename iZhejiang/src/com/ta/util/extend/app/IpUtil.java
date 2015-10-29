// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.app;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.ta.util.TALogger;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

public class IpUtil
{

    public IpUtil()
    {
    }

    public static String getGPRSIp()
    {
        Object obj = NetworkInterface.getNetworkInterfaces();
_L4:
        boolean flag = ((Enumeration) (obj)).hasMoreElements();
        if (flag) goto _L2; else goto _L1
_L1:
        return "";
_L2:
        Enumeration enumeration = ((NetworkInterface)((Enumeration) (obj)).nextElement()).getInetAddresses();
_L6:
        if (!enumeration.hasMoreElements()) goto _L4; else goto _L3
_L3:
        InetAddress inetaddress = (InetAddress)enumeration.nextElement();
        if (inetaddress.isLoopbackAddress()) goto _L6; else goto _L5
_L5:
        obj = inetaddress.getHostAddress().toString();
        return ((String) (obj));
        SocketException socketexception;
        socketexception;
        TALogger.d("IpUtil", socketexception.getMessage());
          goto _L1
    }

    public static String getWifiIp(Context context)
    {
        context = (WifiManager)context.getSystemService("wifi");
        if (!context.isWifiEnabled())
        {
            context.setWifiEnabled(true);
        }
        return intToIp(context.getConnectionInfo().getIpAddress());
    }

    private static String intToIp(int i)
    {
        return (new StringBuilder(String.valueOf(i & 0xff))).append(".").append(i >> 8 & 0xff).append(".").append(i >> 16 & 0xff).append(".").append(i >> 24 & 0xff).toString();
    }
}
