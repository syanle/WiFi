// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Properties;

// Referenced classes of package com.tencent.weibo.sdk.android.api.util:
//            SharePersistent

public class Util
{

    public Util()
    {
    }

    public static void clearSharePersistent(Context context)
    {
        SharePersistent sharepersistent = SharePersistent.getInstance();
        sharepersistent.clear(context, "ACCESS_TOKEN");
        sharepersistent.clear(context, "EXPIRES_IN");
        sharepersistent.clear(context, "OPEN_ID");
        sharepersistent.clear(context, "OPEN_KEY");
        sharepersistent.clear(context, "REFRESH_TOKEN");
        sharepersistent.clear(context, "NAME");
        sharepersistent.clear(context, "NICK");
        sharepersistent.clear(context, "CLIENT_ID");
    }

    public static void clearSharePersistent(Context context, String s)
    {
        SharePersistent.getInstance().clear(context, s);
    }

    public static Properties getConfig()
    {
        Properties properties = new Properties();
        java.io.InputStream inputstream = com/tencent/weibo/sdk/android/api/util/Util.getResourceAsStream("/config/config.properties");
        try
        {
            properties.load(inputstream);
        }
        catch (IOException ioexception)
        {
            Log.e("\u5DE5\u5177\u5305\u5F02\u5E38", "\u83B7\u53D6\u914D\u7F6E\u6587\u4EF6\u5F02\u5E38");
            ioexception.printStackTrace();
            return properties;
        }
        return properties;
    }

    public static String getLocalIPAddress(Context context)
    {
        int i = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo().getIpAddress();
        return (new StringBuilder(String.valueOf(i & 0xff))).append(".").append(i >> 8 & 0xff).append(".").append(i >> 16 & 0xff).append(".").append(i >> 24 & 0xff).toString();
    }

    public static Location getLocation(Context context)
    {
        try
        {
            context = (LocationManager)context.getSystemService("location");
            Object obj = new Criteria();
            ((Criteria) (obj)).setAccuracy(2);
            ((Criteria) (obj)).setAltitudeRequired(false);
            ((Criteria) (obj)).setBearingRequired(false);
            ((Criteria) (obj)).setCostAllowed(true);
            ((Criteria) (obj)).setPowerRequirement(3);
            ((Criteria) (obj)).setSpeedRequired(false);
            obj = context.getBestProvider(((Criteria) (obj)), true);
            Log.d("Location", (new StringBuilder("currentProvider: ")).append(((String) (obj))).toString());
            context = context.getLastKnownLocation(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        return context;
    }

    public static String getSharePersistent(Context context, String s)
    {
        return SharePersistent.getInstance().get(context, s);
    }

    public static Long getSharePersistentLong(Context context, String s)
    {
        return Long.valueOf(SharePersistent.getInstance().getLong(context, s));
    }

    private String intToIp(int i)
    {
        return (new StringBuilder(String.valueOf(i & 0xff))).append(".").append(i >> 8 & 0xff).append(".").append(i >> 16 & 0xff).append(".").append(i >> 24 & 0xff).toString();
    }

    public static boolean isNetworkAvailable(Activity activity)
    {
        activity = (ConnectivityManager)activity.getApplicationContext().getSystemService("connectivity");
        if (activity != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((activity = activity.getAllNetworkInfo()) != null)
        {
            int i = 0;
            while (i < activity.length) 
            {
                if (activity[i].getState() == android.net.NetworkInfo.State.CONNECTED)
                {
                    return true;
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static Drawable loadImageFromUrl(String s)
    {
        try
        {
            s = (new URL(s)).openConnection();
            s.connect();
            s = s.getInputStream();
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = false;
            options.inSampleSize = 2;
            s = new BitmapDrawable(BitmapFactory.decodeStream(s, null, options));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static void saveSharePersistent(Context context, String s, long l)
    {
        SharePersistent.getInstance().put(context, s, l);
    }

    public static void saveSharePersistent(Context context, String s, String s1)
    {
        SharePersistent.getInstance().put(context, s, s1);
    }
}
