// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socom;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socom.util.g;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import javax.microedition.khronos.opengles.GL10;

public class DeviceConfig
{

    protected static final String a = com/umeng/socom/DeviceConfig.getName();
    protected static final String b = "Unknown";
    public static final int c = 8;
    private static final String d = "2G/3G";
    private static final String e = "Wi-Fi";
    private static int f[];

    public DeviceConfig()
    {
    }

    public static boolean checkPermission(Context context, String s)
    {
        return context.getPackageManager().checkPermission(s, context.getPackageName()) == 0;
    }

    public static String getAppName(Context context)
    {
        String s1 = "UnKnown";
        String s = s1;
        if (context != null)
        {
            context = context.getApplicationInfo().loadLabel(context.getPackageManager());
            s = s1;
            if (!TextUtils.isEmpty(context))
            {
                s = context.toString();
            }
        }
        return s;
    }

    public static String getAppVersionCode(Context context)
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "Unknown";
        }
        return String.valueOf(i);
    }

    public static String getAppVersionName(Context context)
    {
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "Unknown";
        }
        return context;
    }

    public static String getAppkey(Context context)
    {
        String s = SocializeConstants.APPKEY;
        if (!TextUtils.isEmpty(s))
        {
            return s;
        }
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        context = ((ApplicationInfo) (context)).metaData.getString("UMENG_APPKEY");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        return context.trim();
        Log.e(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
_L2:
        return null;
        context;
        Log.e(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getApplicationLable(Context context)
    {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static String getAvailMemory(Context context)
    {
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        activitymanager.getMemoryInfo(memoryinfo);
        return Formatter.formatFileSize(context, memoryinfo.availMem);
    }

    public static String getCPU()
    {
        String s;
        Object obj = null;
        String s2 = null;
        s = obj;
        String s1;
        IOException ioexception;
        FileReader filereader;
        BufferedReader bufferedreader;
        try
        {
            filereader = new FileReader("/proc/cpuinfo");
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Log.e(a, "Could not open file /proc/cpuinfo", filenotfoundexception);
            continue; /* Loop/switch isn't completed */
        }
        if (filereader == null) goto _L2; else goto _L1
_L1:
        s1 = s2;
        s = obj;
        bufferedreader = new BufferedReader(filereader, 1024);
        s1 = s2;
        s = obj;
        s2 = bufferedreader.readLine();
        s1 = s2;
        s = s2;
        bufferedreader.close();
        s1 = s2;
        s = s2;
        filereader.close();
        s = s2;
_L4:
        s1 = s;
        if (s != null)
        {
            s1 = s.substring(s.indexOf(':') + 1);
        }
        return s1.trim();
        ioexception;
        s = s1;
        Log.e(a, "Could not read from file /proc/cpuinfo", ioexception);
        s = s1;
        continue; /* Loop/switch isn't completed */
_L2:
        s = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String getChannel(Context context)
    {
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        if (((ApplicationInfo) (context)).metaData == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        context = ((Context) (((ApplicationInfo) (context)).metaData.get("UMENG_CHANNEL")));
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        context = context.toString();
        if (context != null)
        {
            return context;
        }
        Log.i(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
        return "Unknown";
        context;
        Log.i(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
        context.printStackTrace();
        return "Unknown";
    }

    public static String getDeviceId(Context context)
    {
        TelephonyManager telephonymanager;
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager == null)
        {
            Log.w(a, "No IMEI.");
        }
        if (!checkPermission(context, "android.permission.READ_PHONE_STATE")) goto _L2; else goto _L1
_L1:
        String s1 = telephonymanager.getDeviceId();
_L4:
        String s = s1;
        if (TextUtils.isEmpty(s1))
        {
            Log.w(a, "No IMEI.");
            s1 = getMac(context);
            s = s1;
            if (TextUtils.isEmpty(s1))
            {
                Log.w(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
                s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
                Log.w(a, (new StringBuilder("getDeviceId: Secure.ANDROID_ID: ")).append(s).toString());
            }
        }
        return s;
        Exception exception;
        exception;
        Log.w(a, "No IMEI.", exception);
_L2:
        s1 = "";
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String getDeviceIdUmengMD5(Context context)
    {
        return g.b(getDeviceId(context));
    }

    public static String getDisplayResolution(Context context)
    {
        try
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            int i = displaymetrics.widthPixels;
            context = (new StringBuilder(String.valueOf(String.valueOf(displaymetrics.heightPixels)))).append("*").append(String.valueOf(i)).toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "Unknown";
        }
        return context;
    }

    public static String[] getGPU(GL10 gl10)
    {
        String s;
        try
        {
            s = gl10.glGetString(7936);
            gl10 = gl10.glGetString(7937);
        }
        // Misplaced declaration of an exception variable
        catch (GL10 gl10)
        {
            Log.e(a, "Could not read gpu infor:", gl10);
            return new String[0];
        }
        return (new String[] {
            s, gl10
        });
    }

    public static Set getInstalledPackages(Context context)
    {
        HashSet hashset = new HashSet();
        context = context.getPackageManager().getInstalledPackages(0);
        int i = 0;
        do
        {
            if (i >= context.size())
            {
                return hashset;
            }
            hashset.add(((PackageInfo)context.get(i)).packageName);
            i++;
        } while (true);
    }

    public static int getIntervalSeconds(Date date, Date date1)
    {
        Date date2;
        long l;
        if (date.after(date1))
        {
            date2 = date1;
            date1 = date;
        } else
        {
            date2 = date;
        }
        l = date2.getTime();
        return (int)((date1.getTime() - l) / 1000L);
    }

    public static String[] getLocaleInfo(Context context)
    {
        String as[];
        as = new String[2];
        as[0] = "Unknown";
        as[1] = "Unknown";
        Configuration configuration;
        configuration = new Configuration();
        android.provider.Settings.System.getConfiguration(context.getContentResolver(), configuration);
        if (configuration == null) goto _L2; else goto _L1
_L1:
        if (configuration.locale == null) goto _L2; else goto _L3
_L3:
        as[0] = configuration.locale.getCountry();
        as[1] = configuration.locale.toString();
_L5:
        if (TextUtils.isEmpty(as[0]))
        {
            as[0] = "Unknown";
        }
        if (TextUtils.isEmpty(as[1]))
        {
            as[1] = "Unknown";
            return as;
        }
        break MISSING_BLOCK_LABEL_129;
_L2:
        context = Locale.getDefault();
        if (context == null) goto _L5; else goto _L4
_L4:
        as[0] = context.getCountry();
        as[1] = context.getLanguage();
          goto _L5
        context;
        Log.e(a, "error in getLocaleInfo", context);
        return as;
    }

    public static Location getLocation(Context context)
    {
        LocationManager locationmanager;
        Location location;
        locationmanager = (LocationManager)context.getSystemService("location");
        if (!checkPermission(context, "android.permission.ACCESS_FINE_LOCATION"))
        {
            break MISSING_BLOCK_LABEL_75;
        }
        location = locationmanager.getLastKnownLocation("gps");
        if (location != null)
        {
            try
            {
                Log.i(a, (new StringBuilder("get location from gps:")).append(location.getLatitude()).append(",").append(location.getLongitude()).toString());
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e(a, context.getMessage());
                return null;
            }
            return location;
        }
        if (!checkPermission(context, "android.permission.ACCESS_COARSE_LOCATION"))
        {
            break MISSING_BLOCK_LABEL_153;
        }
        context = locationmanager.getLastKnownLocation("network");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        Log.i(a, (new StringBuilder("get location from network:")).append(context.getLatitude()).append(",").append(context.getLongitude()).toString());
        return context;
        Log.i(a, "Could not get location from GPS or Cell-id, lack ACCESS_COARSE_LOCATION or ACCESS_COARSE_LOCATION permission?");
        return null;
    }

    public static String getMac(Context context)
    {
        try
        {
            WifiManager wifimanager = (WifiManager)context.getSystemService("wifi");
            if (checkPermission(context, "android.permission.ACCESS_WIFI_STATE"))
            {
                return wifimanager.getConnectionInfo().getMacAddress();
            }
            Log.w(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.w(a, (new StringBuilder("Could not get mac address.")).append(context.toString()).toString());
        }
        return "";
    }

    public static String[] getNetworkAccessMode(Context context)
    {
        String as[] = new String[2];
        as[0] = "Unknown";
        as[1] = "Unknown";
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0)
        {
            as[0] = "Unknown";
            return as;
        }
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context == null)
        {
            as[0] = "Unknown";
            return as;
        }
        if (context.getNetworkInfo(1).getState() == android.net.NetworkInfo.State.CONNECTED)
        {
            as[0] = "Wi-Fi";
            return as;
        }
        context = context.getNetworkInfo(0);
        if (context.getState() == android.net.NetworkInfo.State.CONNECTED)
        {
            as[0] = "2G/3G";
            as[1] = context.getSubtypeName();
            return as;
        } else
        {
            return as;
        }
    }

    public static String getNetworkOperatorName(Context context)
    {
        try
        {
            context = (TelephonyManager)context.getSystemService("phone");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "Unknown";
        }
        if (context == null)
        {
            return "Unknown";
        }
        context = context.getNetworkOperatorName();
        return context;
    }

    public static String getOperator(Context context)
    {
        try
        {
            context = ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.i(a, "read carrier fail", context);
            return "Unknown";
        }
        return context;
    }

    public static String getPackageName(Context context)
    {
        return context.getPackageName();
    }

    public static String getResolution(Context context)
    {
        try
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            int i = displaymetrics.widthPixels;
            int j = displaymetrics.heightPixels;
            context = new StringBuffer();
            context.append(i);
            context.append("*");
            context.append(j);
            context = context.toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e(a, "read resolution fail", context);
            return "Unknown";
        }
        return context;
    }

    public static int[] getScreenWidthAndHeight(Context context)
    {
        if (f != null)
        {
            return f;
        }
        if (context instanceof Activity)
        {
            context = (Activity)context;
            DisplayMetrics displaymetrics = new DisplayMetrics();
            context.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            return (new int[] {
                displaymetrics.widthPixels, displaymetrics.heightPixels
            });
        } else
        {
            return (new int[] {
                480, 800
            });
        }
    }

    public static String getTimeString(Date date)
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date);
    }

    public static int getTimeZone(Context context)
    {
        Locale locale;
        Configuration configuration;
        locale = Locale.getDefault();
        configuration = new Configuration();
        android.provider.Settings.System.getConfiguration(context.getContentResolver(), configuration);
        context = locale;
        if (configuration == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        context = locale;
        if (configuration.locale != null)
        {
            context = configuration.locale;
        }
        context = Calendar.getInstance(context);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        int i = context.getTimeZone().getRawOffset() / 0x36ee80;
        return i;
        context;
        Log.i(a, "error in getTimeZone", context);
        return 8;
    }

    public static String getToday()
    {
        Date date = new Date();
        return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    }

    public static String getTotalMemory(Context context)
    {
        long l;
        long l1;
        l1 = 0L;
        l = l1;
        BufferedReader bufferedreader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
        l = l1;
        l1 = Integer.valueOf(bufferedreader.readLine().split("\\s+")[1]).intValue() * 1024;
        l = l1;
        bufferedreader.close();
        l = l1;
_L2:
        return Formatter.formatFileSize(context, l);
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isAppInstalled(String s, Context context)
    {
        boolean flag = true;
        if (context == null)
        {
            return false;
        }
        context = context.getPackageManager();
        try
        {
            context.getPackageInfo(s, 1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            flag = false;
        }
        return flag;
    }

    public static boolean isChinese(Context context)
    {
        return context.getResources().getConfiguration().locale.toString().equals(Locale.CHINA.toString());
    }

    public static boolean isNetworkAvailable(Context context)
    {
        return checkPermission(context, "android.permission.ACCESS_NETWORK_STATE") && isOnline(context);
    }

    public static boolean isOnline(Context context)
    {
        boolean flag;
        try
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return true;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        flag = context.isConnectedOrConnecting();
        return flag;
        return false;
    }

    public static boolean isScreenPortrait(Context context)
    {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public static boolean isSdCardWrittenable()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isWiFiAvailable(Context context)
    {
        return "Wi-Fi".equals(getNetworkAccessMode(context)[0]);
    }

    public static Date toTime(String s)
    {
        try
        {
            s = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

}
