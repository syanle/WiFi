// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.common:
//            StatBase64, RC4, StatLogger

public class StatCommonHelper
{
    static class RootCmd
    {

        private static int systemRootState = -1;

        public static boolean isRootSystem()
        {
            String as[];
            int i;
            if (systemRootState == 1)
            {
                return true;
            }
            if (systemRootState == 0)
            {
                return false;
            }
            as = new String[6];
            as[0] = "/bin";
            as[1] = "/system/bin/";
            as[2] = "/system/xbin/";
            as[3] = "/system/sbin/";
            as[4] = "/sbin/";
            as[5] = "/vendor/bin/";
            i = 0;
_L2:
            File file;
            if (i >= as.length)
            {
                break MISSING_BLOCK_LABEL_108;
            }
            file = new File((new StringBuilder()).append(as[i]).append("su").toString());
            if (file == null)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            if (!file.exists())
            {
                break MISSING_BLOCK_LABEL_114;
            }
            systemRootState = 1;
            return true;
            Exception exception;
            exception;
            systemRootState = 0;
            return false;
            i++;
            if (true) goto _L2; else goto _L1
_L1:
        }

    }


    private static String appkey = null;
    private static String deviceModel = null;
    private static StatLogger logger = null;
    private static String macId = null;
    private static Random random = null;
    private static String userId = null;

    public static boolean checkPermission(Context context, String s)
    {
        return context.getPackageManager().checkPermission(s, context.getPackageName()) == 0;
    }

    public static boolean checkPhoneState(Context context)
    {
        return context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0;
    }

    public static Long convertStringToLong(String s, String s1, int i, int j, Long long1)
    {
        if (s != null && s1 != null) goto _L2; else goto _L1
_L1:
        return long1;
_L2:
        String s2;
label0:
        {
            if (!s1.equalsIgnoreCase("."))
            {
                s2 = s1;
                if (!s1.equalsIgnoreCase("|"))
                {
                    break label0;
                }
            }
            s2 = (new StringBuilder()).append("\\").append(s1).toString();
        }
        s1 = s.split(s2);
        if (s1.length != j) goto _L1; else goto _L3
_L3:
        long l;
        long l1;
        long l2;
        try
        {
            s = Long.valueOf(0L);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return long1;
        }
        j = 0;
        if (j >= s1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        l = i;
        l1 = s.longValue();
        l2 = Long.valueOf(s1[j]).longValue();
        j++;
        s = Long.valueOf(l * (l1 + l2));
        if (true) goto _L5; else goto _L4
_L5:
        break MISSING_BLOCK_LABEL_73;
_L4:
        return s;
    }

    public static String decode(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            s1 = s;
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                String s2;
                try
                {
                    s2 = new String(RC4.decrypt(StatBase64.decode(s.getBytes("UTF-8"), 0)), "UTF-8");
                }
                catch (Throwable throwable)
                {
                    logger.e(throwable);
                    return s;
                }
                return s2;
            }
        }
        return s1;
    }

    public static byte[] deocdeGZipContent(byte abyte0[])
        throws IOException
    {
        GZIPInputStream gzipinputstream = new GZIPInputStream(new ByteArrayInputStream(abyte0));
        byte abyte1[] = new byte[4096];
        abyte0 = new ByteArrayOutputStream(abyte0.length * 2);
        do
        {
            int i = gzipinputstream.read(abyte1);
            if (i != -1)
            {
                abyte0.write(abyte1, 0, i);
            } else
            {
                return abyte0.toByteArray();
            }
        } while (true);
    }

    public static String encode(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            s1 = s;
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                String s2;
                try
                {
                    s2 = new String(StatBase64.encode(RC4.encrypt(s.getBytes("UTF-8")), 0), "UTF-8");
                }
                catch (Throwable throwable)
                {
                    logger.e(throwable);
                    return s;
                }
                return s2;
            }
        }
        return s1;
    }

    public static String getActivityName(Context context)
    {
        if (context == null)
        {
            return null;
        } else
        {
            return context.getClass().getName();
        }
    }

    public static String getAppKey(Context context)
    {
        if (appkey != null)
        {
            return appkey;
        }
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null) goto _L2; else goto _L1
_L1:
        context = ((ApplicationInfo) (context)).metaData.getString("TA_APPKEY");
        if (context == null) goto _L4; else goto _L3
_L3:
        appkey = context;
        return context;
_L2:
        return null;
_L4:
        try
        {
            logger.w("Could not read APPKEY meta-data from AndroidManifest.xml");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.w("Could not read APPKEY meta-data from AndroidManifest.xml");
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public static String getAppVersion(Context context)
    {
        context = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        Object obj;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        obj = context;
        if (context.length() != 0)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        obj = "unknown";
        return ((String) (obj));
        Exception exception;
        exception;
        context = "";
_L2:
        logger.e(exception);
        return context;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getCurAppVersion(Context context)
    {
        String s;
        try
        {
            s = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.e(context);
            return "";
        }
        context = s;
        if (s == null)
        {
            context = "";
        }
        return context;
    }

    public static String getDateFormat(long l)
    {
        return (new SimpleDateFormat("yyyyMMdd")).format(new Date(l));
    }

    public static String getDeviceID(Context context)
    {
        if (checkPermission(context, "android.permission.READ_PHONE_STATE"))
        {
            String s = "";
            if (checkPhoneState(context))
            {
                s = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
            }
            if (s != null)
            {
                return s;
            } else
            {
                logger.error("deviceId is null");
                return null;
            }
        } else
        {
            logger.e("Could not get permission of android.permission.READ_PHONE_STATE");
            return null;
        }
    }

    public static DisplayMetrics getDisplayMetrics(Context context)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics;
    }

    public static String getExternalStorageInfo(Context context)
    {
        if (!checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE"))
        {
            break MISSING_BLOCK_LABEL_109;
        }
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            break MISSING_BLOCK_LABEL_121;
        }
        context = Environment.getExternalStorageDirectory().getPath();
        if (context == null)
        {
            return null;
        }
        context = new StatFs(context);
        long l = ((long)context.getBlockCount() * (long)context.getBlockSize()) / 0xf4240L;
        long l1 = context.getAvailableBlocks();
        l1 = ((long)context.getBlockSize() * l1) / 0xf4240L;
        return (new StringBuilder()).append(String.valueOf(l1)).append("/").append(String.valueOf(l)).toString();
        logger.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
        return null;
        context;
        return null;
    }

    public static HttpHost getHttpProxy(Context context)
    {
        if (context == null)
        {
            return null;
        }
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0)
        {
            return null;
        }
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context == null)
        {
            return null;
        }
        if (context.getTypeName() != null && context.getTypeName().equalsIgnoreCase("WIFI"))
        {
            return null;
        }
        context = context.getExtraInfo();
        if (context == null)
        {
            return null;
        }
        if (!context.equals("cmwap") && !context.equals("3gwap") && !context.equals("uniwap")) goto _L2; else goto _L1
_L1:
        context = new HttpHost("10.0.0.172", 80);
        return context;
        context;
        logger.e(context);
_L4:
        return null;
_L2:
        if (!context.equals("ctwap")) goto _L4; else goto _L3
_L3:
        context = new HttpHost("10.0.0.200", 80);
        return context;
    }

    public static String getInstallChannel(Context context)
    {
        context = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        context = ((Context) (((ApplicationInfo) (context)).metaData.get("InstallChannel")));
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        return context.toString();
        logger.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
_L2:
        return null;
        context;
        logger.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getLinkedWay(Context context)
    {
        String s;
        String s1;
        if (!checkPermission(context, "android.permission.ACCESS_WIFI_STATE"))
        {
            break MISSING_BLOCK_LABEL_93;
        }
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (context == null || !context.isConnected())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        s1 = context.getTypeName();
        s = context.getExtraInfo();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        if (!s1.equalsIgnoreCase("WIFI")) goto _L2; else goto _L1
_L1:
        context = "WIFI";
_L4:
        return context;
_L2:
        if (!s1.equalsIgnoreCase("MOBILE"))
        {
            break; /* Loop/switch isn't completed */
        }
        context = s;
        if (s == null)
        {
            return "MOBILE";
        }
        if (true) goto _L4; else goto _L3
_L3:
        context = s;
        if (s != null) goto _L4; else goto _L5
_L5:
        return s1;
        logger.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        return null;
    }

    public static StatLogger getLogger()
    {
        if (logger == null)
        {
            logger = new StatLogger("MtaSDK");
            logger.setDebugEnable(false);
        }
        return logger;
    }

    public static String getMacId(Context context)
    {
        if (macId == null || "" == macId)
        {
            macId = getWifiMacAddress(context);
        }
        return macId;
    }

    public static int getNextSessionID()
    {
        return getRandom().nextInt(0x7fffffff);
    }

    private static Random getRandom()
    {
        if (random == null)
        {
            random = new Random();
        }
        return random;
    }

    public static long getSDKLongVersion(String s)
    {
        return convertStringToLong(s, ".", 100, 3, Long.valueOf(0L)).longValue();
    }

    public static String getSimOperator(Context context)
    {
        Context context1 = null;
        if (checkPermission(context, "android.permission.READ_PHONE_STATE"))
        {
            if (checkPhoneState(context))
            {
                context = (TelephonyManager)context.getSystemService("phone");
                try
                {
                    context = context.getSimOperator();
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    logger.e(context);
                    context = null;
                }
                context1 = context;
            }
            return context1;
        } else
        {
            logger.e("Could not get permission of android.permission.READ_PHONE_STATE");
            return null;
        }
    }

    public static Integer getTelephonyNetworkType(Context context)
    {
        context = (TelephonyManager)context.getSystemService("phone");
        if (context != null)
        {
            return Integer.valueOf(context.getNetworkType());
        } else
        {
            return null;
        }
    }

    public static long getTomorrowStartMilliseconds()
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return 0x5265c00L + calendar.getTimeInMillis();
    }

    public static String getUserID(Context context)
    {
        if (userId != null && userId.trim().length() != 0)
        {
            return userId;
        }
        userId = getDeviceID(context);
        if (userId == null || userId.trim().length() == 0)
        {
            userId = Integer.toString(getRandom().nextInt(0x7fffffff));
        }
        return userId;
    }

    public static String getWifiMacAddress(Context context)
    {
        if (!checkPermission(context, "android.permission.ACCESS_WIFI_STATE"))
        {
            break MISSING_BLOCK_LABEL_49;
        }
        try
        {
            context = (WifiManager)context.getSystemService("wifi");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            logger.e(context);
            return "";
        }
        if (context == null)
        {
            return "";
        }
        context = context.getConnectionInfo().getMacAddress();
        return context;
        logger.e("Could not get permission of android.permission.ACCESS_WIFI_STATE");
        return "";
    }

    public static int hasRootAccess(Context context)
    {
        return !RootCmd.isRootSystem() ? 0 : 1;
    }

    public static boolean isNetworkAvailable(Context context)
    {
        if (checkPermission(context, "android.permission.INTERNET"))
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (context != null && context.isAvailable())
            {
                return true;
            } else
            {
                logger.w("Network error");
                return false;
            }
        } else
        {
            logger.warn("can not get the permisson of android.permission.INTERNET");
            return false;
        }
    }

    public static boolean isWiFiActive(Context context)
    {
        boolean flag1 = false;
        if (!checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) goto _L2; else goto _L1
_L1:
        boolean flag;
        context = (ConnectivityManager)context.getApplicationContext().getSystemService("connectivity");
        flag = flag1;
        if (context == null) goto _L4; else goto _L3
_L3:
        context = context.getAllNetworkInfo();
        flag = flag1;
        if (context == null) goto _L4; else goto _L5
_L5:
        int i = 0;
_L9:
        flag = flag1;
        if (i >= context.length) goto _L4; else goto _L6
_L6:
        if (!context[i].getTypeName().equalsIgnoreCase("WIFI") || !context[i].isConnected()) goto _L8; else goto _L7
_L7:
        flag = true;
_L4:
        return flag;
_L8:
        i++;
        if (true) goto _L9; else goto _L2
_L2:
        logger.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        return false;
    }

    public static boolean isWifiNet(Context context)
    {
        if (checkPermission(context, "android.permission.INTERNET"))
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            return context != null && context.isAvailable() && context.getTypeName().equalsIgnoreCase("WIFI");
        } else
        {
            logger.warn("can not get the permisson of android.permission.INTERNET");
            return false;
        }
    }

    public static void jsonPut(JSONObject jsonobject, String s, String s1)
        throws JSONException
    {
        if (s1 != null && s1.length() > 0)
        {
            jsonobject.put(s, s1);
        }
    }

    public static String md5sum(String s)
    {
        Object obj;
        int i;
        int j;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).update(s.getBytes());
            s = ((MessageDigest) (obj)).digest();
            obj = new StringBuffer();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            logger.e(s);
            return "0";
        }
        i = 0;
        if (i >= s.length)
        {
            break; /* Loop/switch isn't completed */
        }
        j = s[i] & 0xff;
        if (j >= 16)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        ((StringBuffer) (obj)).append("0");
        ((StringBuffer) (obj)).append(Integer.toHexString(j));
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_30;
_L1:
        s = ((StringBuffer) (obj)).toString();
        return s;
    }

}
