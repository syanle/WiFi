// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.protocol.impl;

import android.content.Context;
import android.net.DhcpInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class SDKCommonMotheds
{

    private static final char HEX_DIGITS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    private Context mContext;
    private TelephonyManager teleMgr;
    private WifiManager wifiMgr;

    public SDKCommonMotheds(Context context)
    {
        wifiMgr = null;
        teleMgr = null;
        mContext = context;
        wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        teleMgr = (TelephonyManager)mContext.getSystemService("phone");
    }

    public static Document JSoupHTMLParse(InputStream inputstream)
    {
        Object obj;
        BufferedReader bufferedreader;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        obj = "";
_L1:
        String s;
        try
        {
            s = bufferedreader.readLine();
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            inputstream.printStackTrace();
            return null;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        obj = Jsoup.parse(((String) (obj)));
        inputstream.close();
        bufferedreader.close();
        return ((Document) (obj));
        obj = (new StringBuilder(String.valueOf(obj))).append(s).toString();
          goto _L1
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

    public static String getDevidOrPltCodeFromUrl(String s, String s1)
    {
        if (s != null)
        {
            s = s.split(s1);
            if (s.length > 1)
            {
                return s[1].split("&")[0];
            }
        }
        return null;
    }

    public static String getHash(String s)
    {
        s = bin2hex(s);
        return String.format((new StringBuilder("%0")).append(s.length * 2).append("X").toString(), new Object[] {
            new BigInteger(1, s)
        });
    }

    public static String getMD5(String s)
    {
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s.getBytes());
            s = getString(messagedigest.digest());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        return s;
    }

    public static String getSign(String s)
    {
        return md5((new StringBuilder(String.valueOf(URLEncoder.encode(s)))).append(getHash("app2c.51awifi.com")).toString());
    }

    private static String getString(byte abyte0[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(abyte0[i]);
            i++;
        } while (true);
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

    public String getConnectedWifiSSId()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        WifiInfo wifiinfo = wifiMgr.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID();
        } else
        {
            return "";
        }
    }

    public String getDhcpGatewayAddr()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        DhcpInfo dhcpinfo = wifiMgr.getDhcpInfo();
        Log.v("iWifiSDKDemo", (new StringBuilder("Gateway address : ")).append(Formatter.formatIpAddress(dhcpinfo.gateway)).toString());
        return Formatter.formatIpAddress(dhcpinfo.gateway);
    }

    public String getIMEICode()
    {
        if (teleMgr == null)
        {
            teleMgr = (TelephonyManager)mContext.getSystemService("phone");
        }
        return teleMgr.getDeviceId();
    }

    public String getLocalIpAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        return Formatter.formatIpAddress(wifiMgr.getConnectionInfo().getIpAddress());
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public String getRouterMac()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)mContext.getSystemService("wifi");
        }
        WifiInfo wifiinfo = wifiMgr.getConnectionInfo();
        Log.v("iWifiSDKDemo", (new StringBuilder(" RouterMAC: ")).append(wifiinfo.getBSSID()).toString());
        return wifiinfo.getBSSID();
    }

}
