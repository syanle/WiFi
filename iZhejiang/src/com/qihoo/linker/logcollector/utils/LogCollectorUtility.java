// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.qihoo.linker.logcollector.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class LogCollectorUtility
{

    private static final String TAG = com/qihoo/linker/logcollector/utils/LogCollectorUtility.getName();

    public LogCollectorUtility()
    {
    }

    public static String getCurrentTime()
    {
        Date date = new Date(System.currentTimeMillis());
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault())).format(date);
    }

    private static String getDeviceSerialForMid2()
    {
        Object obj;
        try
        {
            obj = Class.forName("android.os.SystemProperties");
            obj = (String)((Class) (obj)).getMethod("get", new Class[] {
                java/lang/String
            }).invoke(obj, new Object[] {
                "ro.serialno"
            });
        }
        catch (Exception exception)
        {
            return "";
        }
        return ((String) (obj));
    }

    public static File getExternalDir(Context context, String s)
    {
        context = (new StringBuilder("/Android/data/")).append(context.getPackageName()).append("/").toString();
        return new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append(context).append(s).append("/").toString());
    }

    public static String getMD5Str(String s)
    {
        Object obj;
        int i;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).reset();
            ((MessageDigest) (obj)).update(s.getBytes("UTF-8"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return "";
        }
        s = ((MessageDigest) (obj)).digest();
        obj = new StringBuffer();
        i = 0;
        do
        {
            if (i >= s.length)
            {
                return ((StringBuffer) (obj)).toString();
            }
            if (Integer.toHexString(s[i] & 0xff).length() == 1)
            {
                ((StringBuffer) (obj)).append("0").append(Integer.toHexString(s[i] & 0xff));
            } else
            {
                ((StringBuffer) (obj)).append(Integer.toHexString(s[i] & 0xff));
            }
            i++;
        } while (true);
    }

    public static String getMid(Context context)
    {
        String s = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
        context = android.provider.Settings.System.getString(context.getContentResolver(), "android_id");
        String s1 = getDeviceSerialForMid2();
        return getMD5Str((new StringBuilder()).append(s).append(context).append(s1).toString());
    }

    public static String getVerCode(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getPackageInfo(context.getPackageName(), 1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e(TAG, "Error while collect package info", context);
            context.printStackTrace();
            return "error";
        }
        if (context == null)
        {
            return "error1";
        } else
        {
            return String.valueOf(((PackageInfo) (context)).versionCode);
        }
    }

    public static String getVerName(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getPackageInfo(context.getPackageName(), 1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e(TAG, "Error while collect package info", context);
            context.printStackTrace();
            return "error";
        }
        if (context == null)
        {
            context = "error1";
        } else
        {
            String s = ((PackageInfo) (context)).versionName;
            context = s;
            if (s == null)
            {
                return "not set";
            }
        }
        return context;
    }

    public static boolean hasPermission(Context context)
    {
        boolean flag6 = false;
        boolean flag5 = flag6;
        if (context != null)
        {
            boolean flag;
            boolean flag1;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (context.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0)
            {
                flag4 = true;
            } else
            {
                flag4 = false;
            }
            if (!flag || !flag1 || !flag2 || !flag3 || !flag4)
            {
                Log.d(TAG, "\u6CA1\u6709\u6DFB\u52A0\u6743\u9650");
                Toast.makeText(context.getApplicationContext(), "\u6CA1\u6709\u6DFB\u52A0\u6743\u9650", 0).show();
            }
            flag5 = flag6;
            if (flag)
            {
                flag5 = flag6;
                if (flag1)
                {
                    flag5 = flag6;
                    if (flag2)
                    {
                        flag5 = flag6;
                        if (flag3)
                        {
                            flag5 = flag6;
                            if (flag4)
                            {
                                flag5 = true;
                            }
                        }
                    }
                }
            }
        }
        return flag5;
    }

    public static boolean isNetworkConnected(Context context)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            flag = flag1;
            if (context != null)
            {
                flag = flag1;
                if (context.isAvailable())
                {
                    flag = flag1;
                    if (context.isConnected())
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public static boolean isSDcardExsit()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static boolean isWifiConnected(Context context)
    {
        if (context != null)
        {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getNetworkInfo(1);
            if (context != null)
            {
                return context.isAvailable() && context.isConnected();
            }
        }
        return false;
    }

}
