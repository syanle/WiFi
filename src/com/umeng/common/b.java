// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common;

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
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.umeng.common.util.h;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.umeng.common:
//            Log

public class b
{

    protected static final String a = com/umeng/common/b.getName();
    protected static final String b = "Unknown";
    public static final int c = 8;
    private static final String d = "2G/3G";
    private static final String e = "Wi-Fi";

    public b()
    {
    }

    private static int a(Object obj, String s1)
    {
        int i1;
        try
        {
            s1 = android/util/DisplayMetrics.getDeclaredField(s1);
            s1.setAccessible(true);
            i1 = s1.getInt(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            return -1;
        }
        return i1;
    }

    public static int a(Date date, Date date1)
    {
        Date date2;
        long l1;
        if (date.after(date1))
        {
            date2 = date1;
            date1 = date;
        } else
        {
            date2 = date;
        }
        l1 = date2.getTime();
        return (int)((date1.getTime() - l1) / 1000L);
    }

    public static String a()
    {
        String s1;
        String s2;
        s2 = null;
        s1 = null;
        FileReader filereader = new FileReader("/proc/cpuinfo");
        if (filereader == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        s1 = s2;
        BufferedReader bufferedreader = new BufferedReader(filereader, 1024);
        s1 = s2;
        s2 = bufferedreader.readLine();
        String s4;
        s1 = s2;
        s4 = s2;
        bufferedreader.close();
        s1 = s2;
        s4 = s2;
        filereader.close();
        s1 = s2;
_L2:
        String s3 = s1;
        if (s1 != null)
        {
            s3 = s1.substring(s1.indexOf(':') + 1);
        }
        return s3.trim();
        Object obj;
        obj;
        s4 = s1;
        Log.b(a, "Could not read from file /proc/cpuinfo", ((Exception) (obj)));
        continue; /* Loop/switch isn't completed */
        obj;
        s1 = s4;
_L3:
        Log.b(a, "Could not open file /proc/cpuinfo", ((Exception) (obj)));
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        s1 = null;
          goto _L3
    }

    public static String a(Date date)
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date);
    }

    public static Date a(String s1)
    {
        try
        {
            s1 = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).parse(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return null;
        }
        return s1;
    }

    public static boolean a(Context context)
    {
        return context.getResources().getConfiguration().locale.toString().equals(Locale.CHINA.toString());
    }

    public static boolean a(Context context, String s1)
    {
        return context.getPackageManager().checkPermission(s1, context.getPackageName()) == 0;
    }

    public static boolean a(String s1, Context context)
    {
        context = context.getPackageManager();
        try
        {
            context.getPackageInfo(s1, 1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            return false;
        }
        return true;
    }

    public static String[] a(GL10 gl10)
    {
        String s1;
        try
        {
            s1 = gl10.glGetString(7936);
            gl10 = gl10.glGetString(7937);
        }
        // Misplaced declaration of an exception variable
        catch (GL10 gl10)
        {
            Log.b(a, "Could not read gpu infor:", gl10);
            return new String[0];
        }
        return (new String[] {
            s1, gl10
        });
    }

    public static Set b(Context context)
    {
        HashSet hashset = new HashSet();
        context = context.getPackageManager().getInstalledPackages(0);
        for (int i1 = 0; i1 < context.size(); i1++)
        {
            hashset.add(((PackageInfo)context.get(i1)).packageName);
        }

        return hashset;
    }

    public static boolean b()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String c()
    {
        Date date = new Date();
        return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    }

    public static boolean c(Context context)
    {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public static String d(Context context)
    {
        int i1;
        try
        {
            i1 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "Unknown";
        }
        return String.valueOf(i1);
    }

    public static String e(Context context)
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

    public static String f(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getApplicationInfo(context.getPackageName(), 0);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context = null;
        }
        if (context != null)
        {
            context = packagemanager.getApplicationLabel(context);
        } else
        {
            context = "";
        }
        return (String)(String)context;
    }

    public static String g(Context context)
    {
        TelephonyManager telephonymanager;
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager == null)
        {
            Log.e(a, "No IMEI.");
        }
        if (!a(context, "android.permission.READ_PHONE_STATE")) goto _L2; else goto _L1
_L1:
        String s2 = telephonymanager.getDeviceId();
_L4:
        String s1 = s2;
        if (TextUtils.isEmpty(s2))
        {
            Log.e(a, "No IMEI.");
            s2 = r(context);
            s1 = s2;
            if (TextUtils.isEmpty(s2))
            {
                Log.e(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
                s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
                Log.a(a, (new StringBuilder()).append("getDeviceId: Secure.ANDROID_ID: ").append(s1).toString());
            }
        }
        return s1;
        Exception exception;
        exception;
        Log.e(a, "No IMEI.", exception);
_L2:
        s2 = "";
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String h(Context context)
    {
        return com.umeng.common.util.h.b(g(context));
    }

    public static String i(Context context)
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

    public static String j(Context context)
    {
        try
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)(WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            int i1 = displaymetrics.widthPixels;
            int j1 = displaymetrics.heightPixels;
            context = (new StringBuilder()).append(String.valueOf(j1)).append("*").append(String.valueOf(i1)).toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return "Unknown";
        }
        return context;
    }

    public static String[] k(Context context)
    {
        String as[];
        as = new String[2];
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
        if (context.getState() != android.net.NetworkInfo.State.CONNECTED)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        as[0] = "2G/3G";
        as[1] = context.getSubtypeName();
        return as;
        context;
        context.printStackTrace();
        return as;
    }

    public static boolean l(Context context)
    {
        return "Wi-Fi".equals(k(context)[0]);
    }

    public static Location m(Context context)
    {
        LocationManager locationmanager;
        Location location;
        locationmanager = (LocationManager)context.getSystemService("location");
        if (!a(context, "android.permission.ACCESS_FINE_LOCATION"))
        {
            break MISSING_BLOCK_LABEL_77;
        }
        location = locationmanager.getLastKnownLocation("gps");
        if (location != null)
        {
            try
            {
                Log.c(a, (new StringBuilder()).append("get location from gps:").append(location.getLatitude()).append(",").append(location.getLongitude()).toString());
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.b(a, context.getMessage());
                return null;
            }
            return location;
        }
        if (!a(context, "android.permission.ACCESS_COARSE_LOCATION"))
        {
            break MISSING_BLOCK_LABEL_156;
        }
        context = locationmanager.getLastKnownLocation("network");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        Log.c(a, (new StringBuilder()).append("get location from network:").append(context.getLatitude()).append(",").append(context.getLongitude()).toString());
        return context;
        Log.c(a, "Could not get location from GPS or Cell-id, lack ACCESS_COARSE_LOCATION or ACCESS_COARSE_LOCATION permission?");
        return null;
    }

    public static boolean n(Context context)
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

    public static int o(Context context)
    {
        context = Calendar.getInstance(y(context));
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        int i1 = context.getTimeZone().getRawOffset() / 0x36ee80;
        return i1;
        context;
        Log.a(a, "error in getTimeZone", context);
        return 8;
    }

    public static String[] p(Context context)
    {
        String as[] = new String[2];
        try
        {
            context = y(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.b(a, "error in getLocaleInfo", context);
            return as;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        as[0] = context.getCountry();
        as[1] = context.getLanguage();
        if (TextUtils.isEmpty(as[0]))
        {
            as[0] = "Unknown";
        }
        if (TextUtils.isEmpty(as[1]))
        {
            as[1] = "Unknown";
        }
        return as;
    }

    public static String q(Context context)
    {
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        context = ((ApplicationInfo) (context)).metaData.getString("UMENG_APPKEY");
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        return context.trim();
        Log.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
_L2:
        return null;
        context;
        Log.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", context);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String r(Context context)
    {
        try
        {
            WifiManager wifimanager = (WifiManager)context.getSystemService("wifi");
            if (a(context, "android.permission.ACCESS_WIFI_STATE"))
            {
                return wifimanager.getConnectionInfo().getMacAddress();
            }
            Log.e(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e(a, (new StringBuilder()).append("Could not get mac address.").append(context.toString()).toString());
        }
        return "";
    }

    public static String s(Context context)
    {
        DisplayMetrics displaymetrics;
        displaymetrics = new DisplayMetrics();
        ((WindowManager)(WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if ((context.getApplicationInfo().flags & 0x2000) != 0) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        j1 = a(displaymetrics, "noncompatWidthPixels");
        i1 = a(displaymetrics, "noncompatHeightPixels");
          goto _L3
_L4:
        int k1;
        j1 = displaymetrics.widthPixels;
        k1 = displaymetrics.heightPixels;
_L5:
        context = new StringBuffer();
        context.append(j1);
        context.append("*");
        context.append(k1);
        context = context.toString();
        return context;
        context;
        Log.b(a, "read resolution fail", context);
        return "Unknown";
_L2:
        i1 = -1;
        j1 = -1;
_L3:
        if (j1 == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = i1;
        if (i1 != -1) goto _L5; else goto _L4
    }

    public static String t(Context context)
    {
        try
        {
            context = ((TelephonyManager)context.getSystemService("phone")).getNetworkOperatorName();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.a(a, "read carrier fail", context);
            return "Unknown";
        }
        return context;
    }

    public static String u(Context context)
    {
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        if (((ApplicationInfo) (context)).metaData == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        context = ((Context) (((ApplicationInfo) (context)).metaData.get("UMENG_CHANNEL")));
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        context = context.toString();
        if (context != null)
        {
            return context;
        }
        try
        {
            Log.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            context.printStackTrace();
        }
        return "Unknown";
    }

    public static String v(Context context)
    {
        return context.getPackageName();
    }

    public static String w(Context context)
    {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    public static boolean x(Context context)
    {
        boolean flag = false;
        int i1;
        try
        {
            i1 = context.getApplicationInfo().flags;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        if ((i1 & 2) != 0)
        {
            flag = true;
        }
        return flag;
    }

    private static Locale y(Context context)
    {
        Object obj = null;
        Configuration configuration;
        configuration = new Configuration();
        android.provider.Settings.System.getConfiguration(context.getContentResolver(), configuration);
        context = ((Context) (obj));
        if (configuration != null)
        {
            try
            {
                context = configuration.locale;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.b(a, "fail to read user config locale");
                context = ((Context) (obj));
            }
        }
        obj = context;
        if (context == null)
        {
            obj = Locale.getDefault();
        }
        return ((Locale) (obj));
    }

}
