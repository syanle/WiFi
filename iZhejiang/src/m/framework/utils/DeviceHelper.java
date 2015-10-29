// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package m.framework.utils:
//            Data

public class DeviceHelper
{

    private static DeviceHelper deviceHelper;
    private Context context;

    public DeviceHelper(Context context1)
    {
        context = context1.getApplicationContext();
    }

    public static DeviceHelper getInstance(Context context1)
    {
        if (deviceHelper == null)
        {
            deviceHelper = new DeviceHelper(context1);
        }
        return deviceHelper;
    }

    private boolean isFastMobileNetwork()
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        switch (telephonymanager.getNetworkType())
        {
        default:
            return false;

        case 3: // '\003'
            return true;

        case 5: // '\005'
            return true;

        case 6: // '\006'
            return true;

        case 8: // '\b'
            return true;

        case 10: // '\n'
            return true;

        case 9: // '\t'
            return true;

        case 14: // '\016'
            return true;

        case 12: // '\f'
            return true;

        case 15: // '\017'
            return true;

        case 13: // '\r'
            return true;

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
        case 4: // '\004'
        case 7: // '\007'
        case 11: // '\013'
            break;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private boolean isSystemApp(PackageInfo packageinfo)
    {
        boolean flag;
        boolean flag1;
        if ((packageinfo.applicationInfo.flags & 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((packageinfo.applicationInfo.flags & 0x80) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag || flag1;
    }

    public String Base64AES(String s, String s1)
    {
        String s2 = null;
        try
        {
            s = Base64.encodeToString(Data.AES128Encode(s1, s), 0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return s2;
        }
        s1 = s;
        s2 = s;
        if (!s.contains("\n"))
        {
            break MISSING_BLOCK_LABEL_36;
        }
        s2 = s;
        s1 = s.replace("\n", "");
        return s1;
    }

    public String getAppName()
    {
        String s = context.getApplicationInfo().name;
        if (s != null)
        {
            return s;
        }
        int i = context.getApplicationInfo().labelRes;
        if (i > 0)
        {
            s = context.getString(i);
        }
        return s;
    }

    public int getAppVersion()
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return 0;
        }
        return i;
    }

    public String getAppVersionName()
    {
        String s;
        try
        {
            s = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return "1.0";
        }
        return s;
    }

    public String getCarrier()
    {
        String s1 = ((TelephonyManager)context.getSystemService("phone")).getSimOperator();
        String s = s1;
        if (TextUtils.isEmpty(s1))
        {
            s = "-1";
        }
        return s;
    }

    public String getDeviceData()
    {
        return Base64AES((new StringBuilder(String.valueOf(getModel()))).append("|").append(getOSVersion()).append("|").append(getFactory()).append("|").append(getCarrier()).append("|").append(getScreenSize()).toString(), getDeviceKey().substring(0, 16));
    }

    public String getDeviceId()
    {
        Object obj = (TelephonyManager)context.getSystemService("phone");
        if (obj != null) goto _L2; else goto _L1
_L1:
        obj = null;
_L4:
        return ((String) (obj));
_L2:
        String s;
        String s1;
        s1 = ((TelephonyManager) (obj)).getDeviceId();
        s = "";
        if (s1 != null)
        {
            s = (new String(s1)).replace("0", "");
        }
        if (s1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = s1;
        if (s.length() > 0) goto _L4; else goto _L3
_L3:
        obj = s1;
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            Object obj1;
            try
            {
                obj1 = Class.forName("android.os.SystemProperties");
                obj1 = (String)((Class) (obj1)).getMethod("get", new Class[] {
                    java/lang/String, java/lang/String
                }).invoke(obj1, new Object[] {
                    "ro.serialno", "unknown"
                });
            }
            catch (Throwable throwable)
            {
                throwable.printStackTrace();
                return null;
            }
            return ((String) (obj1));
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public String getDeviceKey()
    {
        String s;
        try
        {
            s = getMacAddress();
            String s1 = getDeviceId();
            String s2 = getModel();
            s = Data.byteToHex(Data.SHA1((new StringBuilder(String.valueOf(s))).append(":").append(s1).append(":").append(s2).toString()));
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return null;
        }
        return s;
    }

    public String getFactory()
    {
        return Build.MANUFACTURER;
    }

    public ArrayList getInstalledApp(boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        PackageManager packagemanager;
        Iterator iterator;
        packagemanager = context.getPackageManager();
        iterator = packagemanager.getInstalledPackages(0).iterator();
_L3:
        if (!iterator.hasNext())
        {
            return arraylist;
        }
        PackageInfo packageinfo;
        HashMap hashmap;
        try
        {
            packageinfo = (PackageInfo)iterator.next();
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return arraylist;
        }
        if (flag) goto _L2; else goto _L1
_L1:
        if (isSystemApp(packageinfo)) goto _L3; else goto _L2
_L2:
        hashmap = new HashMap();
        hashmap.put("pkg", packageinfo.packageName);
        hashmap.put("name", packageinfo.applicationInfo.loadLabel(packagemanager).toString());
        hashmap.put("version", packageinfo.versionName);
        arraylist.add(hashmap);
          goto _L3
    }

    public String getMacAddress()
    {
        Object obj = (WifiManager)context.getSystemService("wifi");
        if (obj != null)
        {
            if ((obj = ((WifiManager) (obj)).getConnectionInfo()) != null)
            {
                String s = ((WifiInfo) (obj)).getMacAddress();
                obj = s;
                if (s == null)
                {
                    obj = null;
                }
                return ((String) (obj));
            }
        }
        return null;
    }

    public String getModel()
    {
        return Build.MODEL;
    }

    public String getNetworkOperator()
    {
        return ((TelephonyManager)context.getSystemService("phone")).getNetworkOperator();
    }

    public String getNetworkType()
    {
        Object obj = (ConnectivityManager)context.getSystemService("connectivity");
        if (obj != null)
        {
            if ((obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo()) != null && ((NetworkInfo) (obj)).isAvailable())
            {
                int i = ((NetworkInfo) (obj)).getType();
                if (1 == i)
                {
                    return "wifi";
                }
                if (i == 0)
                {
                    String s2 = Proxy.getDefaultHost();
                    String s1 = "";
                    String s = s1;
                    if (s2 != null)
                    {
                        s = s1;
                        if (s2.length() > 0)
                        {
                            s = " wap";
                        }
                    }
                    if (isFastMobileNetwork())
                    {
                        s1 = "3G";
                    } else
                    {
                        s1 = "2G";
                    }
                    return (new StringBuilder(String.valueOf(s1))).append(s).toString();
                }
            }
        }
        return null;
    }

    public String getOSVersion()
    {
        return String.valueOf(android.os.Build.VERSION.SDK_INT);
    }

    public String getPackageName()
    {
        return context.getPackageName();
    }

    public int getPlatformCode()
    {
        return 1;
    }

    public JSONArray getRunningApp()
    {
        JSONArray jsonarray;
        Object obj;
        jsonarray = new JSONArray();
        obj = (ActivityManager)context.getSystemService("activity");
        if (obj != null) goto _L2; else goto _L1
_L1:
        return jsonarray;
_L2:
        if ((obj = ((ActivityManager) (obj)).getRunningAppProcesses()) != null)
        {
            obj = ((List) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                jsonarray.put(((android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next()).processName);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public String getRunningAppStr()
        throws JSONException
    {
        JSONArray jsonarray = getRunningApp();
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                return stringbuilder.toString();
            }
            if (i > 0)
            {
                stringbuilder.append(',');
            }
            stringbuilder.append(String.valueOf(jsonarray.get(i)));
            i++;
        } while (true);
    }

    public String getScreenSize()
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (context.getResources().getConfiguration().orientation == 1)
        {
            return (new StringBuilder(String.valueOf(displaymetrics.widthPixels))).append("x").append(displaymetrics.heightPixels).toString();
        } else
        {
            return (new StringBuilder(String.valueOf(displaymetrics.heightPixels))).append("x").append(displaymetrics.widthPixels).toString();
        }
    }

    public String getSdcardPath()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public boolean getSdcardState()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public String getTopTaskPackageName()
    {
        String s;
        try
        {
            s = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return null;
        }
        return s;
    }

    public boolean isRooted()
    {
        return false;
    }
}
