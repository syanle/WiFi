// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.MimeTypeMap;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

// Referenced classes of package com.baidu.vi:
//            b, c, a

public class VDeviceAPI
{

    private static android.os.PowerManager.WakeLock a = null;
    private static BroadcastReceiver b = null;

    public VDeviceAPI()
    {
    }

    public static String getAppVersion()
    {
        String s = com.baidu.vi.b.a().getApplicationInfo().packageName;
        try
        {
            s = com.baidu.vi.b.a().getPackageManager().getPackageInfo(s, 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return null;
        }
        return s;
    }

    public static long getAvailableMemory()
    {
        ActivityManager activitymanager = (ActivityManager)com.baidu.vi.b.a().getSystemService("activity");
        android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
        activitymanager.getMemoryInfo(memoryinfo);
        return memoryinfo.availMem / 1024L;
    }

    public static String getCachePath()
    {
        return Environment.getDataDirectory().getAbsolutePath();
    }

    public static String getCellId()
    {
        Object obj = (TelephonyManager)com.baidu.vi.b.a().getSystemService("phone");
        if (obj == null)
        {
            return null;
        }
        obj = ((TelephonyManager) (obj)).getCellLocation();
        if (obj instanceof GsmCellLocation)
        {
            return (new StringBuilder()).append(" ").append(((GsmCellLocation)obj).getCid()).toString();
        } else
        {
            return " ";
        }
    }

    public static int getCurrentNetworkType()
    {
        Object obj = (ConnectivityManager)com.baidu.vi.b.a().getSystemService("connectivity");
        try
        {
            obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            obj = null;
        }
        if (obj == null)
        {
            return 0;
        }
        switch (((NetworkInfo) (obj)).getType())
        {
        default:
            return 1;

        case 1: // '\001'
            return 2;

        case 0: // '\0'
            return 3;
        }
    }

    public static long getFreeSpace()
    {
        StatFs statfs = new StatFs(Environment.getRootDirectory().getPath());
        long l = statfs.getBlockSize();
        return ((long)statfs.getAvailableBlocks() * l) / 1024L;
    }

    public static String getImei()
    {
        TelephonyManager telephonymanager = (TelephonyManager)com.baidu.vi.b.a().getSystemService("phone");
        if (telephonymanager != null)
        {
            return telephonymanager.getDeviceId();
        } else
        {
            return null;
        }
    }

    public static String getImsi()
    {
        TelephonyManager telephonymanager = (TelephonyManager)com.baidu.vi.b.a().getSystemService("phone");
        if (telephonymanager != null)
        {
            return telephonymanager.getSubscriberId();
        } else
        {
            return null;
        }
    }

    public static String getLac()
    {
        Object obj = (TelephonyManager)com.baidu.vi.b.a().getSystemService("phone");
        if (obj == null)
        {
            return null;
        }
        obj = ((TelephonyManager) (obj)).getCellLocation();
        if (obj instanceof GsmCellLocation)
        {
            return (new StringBuilder()).append("").append(((GsmCellLocation)obj).getLac()).toString();
        } else
        {
            return "";
        }
    }

    public static String getModuleFileName()
    {
        return com.baidu.vi.b.a().getFilesDir().getAbsolutePath();
    }

    public static c getNetworkInfo(int i)
    {
        Object obj = (ConnectivityManager)com.baidu.vi.b.a().getSystemService("connectivity");
        i;
        JVM INSTR tableswitch 2 3: default 36
    //                   2 51
    //                   3 60;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_60;
_L1:
        obj = null;
_L4:
        if (obj != null)
        {
            return new c(((NetworkInfo) (obj)));
        } else
        {
            return null;
        }
_L2:
        obj = ((ConnectivityManager) (obj)).getNetworkInfo(1);
          goto _L4
        obj = ((ConnectivityManager) (obj)).getNetworkInfo(0);
          goto _L4
    }

    public static String getOsVersion()
    {
        return "android";
    }

    public static int getScreenBrightness()
    {
        android.content.ContentResolver contentresolver;
        int i;
        contentresolver = com.baidu.vi.b.a().getContentResolver();
        i = 0;
        int j = android.provider.Settings.System.getInt(contentresolver, "screen_brightness_mode");
        i = j;
_L2:
        if (i == 1)
        {
            return -1;
        }
        try
        {
            i = android.provider.Settings.System.getInt(contentresolver, "screen_brightness");
        }
        catch (android.provider.Settings.SettingNotFoundException settingnotfoundexception)
        {
            return -1;
        }
        return i;
        android.provider.Settings.SettingNotFoundException settingnotfoundexception1;
        settingnotfoundexception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static float getScreenDensity()
    {
        if (com.baidu.vi.b.a() == null)
        {
            return 0.0F;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        WindowManager windowmanager = (WindowManager)com.baidu.vi.b.a().getSystemService("window");
        if (windowmanager != null)
        {
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        }
        return displaymetrics.density;
    }

    public static int getScreenDensityDpi()
    {
        if (com.baidu.vi.b.a() == null)
        {
            return 0;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        WindowManager windowmanager = (WindowManager)com.baidu.vi.b.a().getSystemService("window");
        if (windowmanager != null)
        {
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        }
        return displaymetrics.densityDpi;
    }

    public static long getSdcardFreeSpace()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getBlockSize();
        return ((long)statfs.getAvailableBlocks() * l) / 1024L;
    }

    public static String getSdcardPath()
    {
        File file = Environment.getExternalStorageDirectory();
        if (file != null)
        {
            return file.getAbsolutePath();
        } else
        {
            return null;
        }
    }

    public static long getSdcardTotalSpace()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getBlockSize();
        return ((long)statfs.getBlockCount() * l) / 1024L;
    }

    public static float getSystemMetricsX()
    {
        if (com.baidu.vi.b.a() == null)
        {
            return 0.0F;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        WindowManager windowmanager = (WindowManager)com.baidu.vi.b.a().getSystemService("window");
        if (windowmanager != null)
        {
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        }
        return (float)displaymetrics.widthPixels;
    }

    public static float getSystemMetricsY()
    {
        if (com.baidu.vi.b.a() == null)
        {
            return 0.0F;
        }
        DisplayMetrics displaymetrics = new DisplayMetrics();
        WindowManager windowmanager = (WindowManager)com.baidu.vi.b.a().getSystemService("window");
        if (windowmanager != null)
        {
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        }
        return (float)displaymetrics.heightPixels;
    }

    public static long getTotalMemory()
    {
        long l2 = 0L;
        long l1 = l2;
        BufferedReader bufferedreader;
        String s;
        long l;
        try
        {
            bufferedreader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
        }
        catch (IOException ioexception)
        {
            return l1;
        }
        l1 = l2;
        s = bufferedreader.readLine();
        l = l2;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        l1 = l2;
        l = Integer.valueOf(s.split("\\s+")[1]).intValue();
        l1 = l;
        bufferedreader.close();
        return l;
    }

    public static long getTotalSpace()
    {
        StatFs statfs = new StatFs(Environment.getRootDirectory().getPath());
        long l = statfs.getBlockSize();
        return ((long)statfs.getBlockCount() * l) / 1024L;
    }

    public static ScanResult[] getWifiHotpot()
    {
        List list = ((WifiManager)com.baidu.vi.b.a().getSystemService("wifi")).getScanResults();
        return (ScanResult[])(ScanResult[])list.toArray(new ScanResult[list.size()]);
    }

    public static boolean isWifiConnected()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)com.baidu.vi.b.a().getSystemService("connectivity")).getNetworkInfo(1);
        if (networkinfo == null)
        {
            return false;
        } else
        {
            return networkinfo.isConnected();
        }
    }

    public static void makeCall(String s)
    {
        s = new Intent("android.intent.action.DIAL", Uri.parse((new StringBuilder()).append("tel:").append(s).toString()));
        com.baidu.vi.b.a().startActivity(s);
    }

    public static native void onNetworkStateChanged();

    public static void openUrl(String s)
    {
        s = new Intent("android.intent.action.VIEW", Uri.parse(s));
        com.baidu.vi.b.a().startActivity(s);
    }

    public static int sendMMS(String s, String s1, String s2, String s3)
    {
        if (!PhoneNumberUtils.isWellFormedSmsAddress(s))
        {
            return 1;
        }
        String s4;
        Intent intent;
        try
        {
            s4 = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(s3)).toString());
            s4 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(s4);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return 2;
        }
        intent = new Intent("android.intent.action.SEND");
        intent.putExtra("address", s);
        intent.putExtra("subject", s1);
        intent.putExtra("sms_body", s2);
        intent.putExtra("android.intent.extra.STREAM", Uri.parse((new StringBuilder()).append("file://").append(s3).toString()));
        intent.setType(s4);
        com.baidu.vi.b.a().startActivity(intent);
        return 0;
    }

    public static void sendSMS(String s, String s1)
    {
        s = new Intent("android.intent.action.SENDTO", Uri.parse((new StringBuilder()).append("smsto:").append(s).toString()));
        s.putExtra("sms_body", s1);
        com.baidu.vi.b.a().startActivity(s);
    }

    public static void setNetworkChangedCallback()
    {
        unsetNetworkChangedCallback();
        b = new a();
        IntentFilter intentfilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        com.baidu.vi.b.a().registerReceiver(b, intentfilter);
    }

    public static void setScreenAlwaysOn(boolean flag)
    {
        if (flag)
        {
            if (a == null)
            {
                a = ((PowerManager)com.baidu.vi.b.a().getSystemService("power")).newWakeLock(10, "VDeviceAPI");
            }
            a.acquire();
        } else
        if (a != null && a.isHeld())
        {
            a.release();
            a = null;
            return;
        }
    }

    public static void setupSoftware(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(s)), "application/vnd.android.package-archive");
        com.baidu.vi.b.a().startActivity(intent);
    }

    public static void unsetNetworkChangedCallback()
    {
        if (b != null)
        {
            com.baidu.vi.b.a().unregisterReceiver(b);
            b = null;
        }
    }

}
