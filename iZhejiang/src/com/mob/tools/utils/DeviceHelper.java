// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.mob.tools.utils:
//            Ln, Data, R

public class DeviceHelper
{
    private class GSConnection
        implements ServiceConnection
    {

        boolean got;
        private final BlockingQueue iBinders;
        final DeviceHelper this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            try
            {
                iBinders.put(ibinder);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ComponentName componentname)
            {
                Ln.w(componentname);
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
        }

        public IBinder takeBinder()
            throws InterruptedException
        {
            if (got)
            {
                throw new IllegalStateException();
            } else
            {
                got = true;
                return (IBinder)iBinders.poll(1500L, TimeUnit.MILLISECONDS);
            }
        }

        private GSConnection()
        {
            this$0 = DeviceHelper.this;
            super();
            got = false;
            iBinders = new LinkedBlockingQueue();
        }

    }


    private static DeviceHelper deviceHelper;
    private Context context;

    private DeviceHelper(Context context1)
    {
        context = context1.getApplicationContext();
    }

    public static DeviceHelper getInstance(Context context1)
    {
        if (deviceHelper == null && context1 != null)
        {
            deviceHelper = new DeviceHelper(context1);
        }
        return deviceHelper;
    }

    private String getLocalDeviceKey()
        throws Throwable
    {
        Object obj;
        if (getSdcardState())
        {
            if (((File) (obj = new File(getSdcardPath(), "ShareSDK"))).exists() && ((File) (obj = new File(((File) (obj)), ".dk"))).exists())
            {
                ObjectInputStream objectinputstream = new ObjectInputStream(new FileInputStream(((File) (obj))));
                obj = objectinputstream.readObject();
                if (obj != null && (obj instanceof char[]))
                {
                    obj = String.valueOf((char[])(char[])obj);
                } else
                {
                    obj = null;
                }
                objectinputstream.close();
                return ((String) (obj));
            }
        }
        return null;
    }

    private Object getSystemService(String s)
    {
        try
        {
            s = ((String) (context.getSystemService(s)));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.e(s);
            return null;
        }
        return s;
    }

    private boolean is4GMobileNetwork()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        if (telephonymanager == null)
        {
            return false;
        }
        boolean flag;
        if (telephonymanager.getNetworkType() == 13)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private boolean isFastMobileNetwork()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        if (telephonymanager == null)
        {
            return false;
        }
        switch (telephonymanager.getNetworkType())
        {
        default:
            return false;

        case 7: // '\007'
            return false;

        case 4: // '\004'
            return false;

        case 2: // '\002'
            return false;

        case 5: // '\005'
            return true;

        case 6: // '\006'
            return true;

        case 1: // '\001'
            return false;

        case 8: // '\b'
            return true;

        case 10: // '\n'
            return true;

        case 9: // '\t'
            return true;

        case 3: // '\003'
            return true;

        case 14: // '\016'
            return true;

        case 12: // '\f'
            return true;

        case 15: // '\017'
            return true;

        case 11: // '\013'
            return false;

        case 13: // '\r'
            return true;

        case 0: // '\0'
            return false;
        }
    }

    private boolean isSystemApp(PackageInfo packageinfo)
    {
        boolean flag2 = false;
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
        if (flag || flag1)
        {
            flag2 = true;
        }
        return flag2;
    }

    private void saveLocalDeviceKey(String s)
        throws Throwable
    {
        if (!getSdcardState())
        {
            return;
        }
        Object obj = new File(getSdcardPath(), "ShareSDK");
        if (!((File) (obj)).exists())
        {
            ((File) (obj)).mkdirs();
        }
        obj = new File(((File) (obj)), ".dk");
        if (((File) (obj)).exists())
        {
            ((File) (obj)).delete();
        }
        obj = new ObjectOutputStream(new FileOutputStream(((File) (obj))));
        ((ObjectOutputStream) (obj)).writeObject(s.toCharArray());
        ((ObjectOutputStream) (obj)).flush();
        ((ObjectOutputStream) (obj)).close();
    }

    public String Base64AES(String s, String s1)
    {
        s = Base64.encodeToString(Data.AES128Encode(s1, s), 0);
        s1 = s;
        if (s.contains("\n"))
        {
            s1 = s.replace("\n", "");
        }
        return s1;
        s1;
        s = null;
_L2:
        Ln.w(s1);
        return s;
        s1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean checkPermission(String s)
        throws Throwable
    {
        return context.getPackageManager().checkPermission(s, getPackageName()) == 0;
    }

    public String getAdvertisingID()
    {
        Object obj2;
        try
        {
            Object obj = new Intent("com.google.android.gms.ads.identifier.service.START");
            ((Intent) (obj)).setPackage("com.google.android.gms");
            Object obj1 = new GSConnection();
            context.bindService(((Intent) (obj)), ((ServiceConnection) (obj1)), 1);
            obj2 = ((GSConnection) (obj1)).takeBinder();
            obj = Parcel.obtain();
            obj1 = Parcel.obtain();
            ((Parcel) (obj)).writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            ((IBinder) (obj2)).transact(1, ((Parcel) (obj)), ((Parcel) (obj1)), 0);
            ((Parcel) (obj1)).readException();
            obj2 = ((Parcel) (obj1)).readString();
            ((Parcel) (obj1)).recycle();
            ((Parcel) (obj)).recycle();
            Ln.i("getAdvertisingID === %s", new Object[] {
                obj2
            });
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return null;
        }
        return ((String) (obj2));
    }

    public String getAndroidID()
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        Ln.i("getAndroidID === %s", new Object[] {
            s
        });
        return s;
    }

    public String getAppName()
    {
        String s = context.getApplicationInfo().name;
        int i;
        if (s == null)
        {
            if ((i = context.getApplicationInfo().labelRes) > 0)
            {
                return context.getString(i);
            }
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
            Ln.d(throwable);
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
            Ln.d(throwable);
            return "1.0";
        }
        return s;
    }

    public String getBluetoothName()
    {
        Object obj = BluetoothAdapter.getDefaultAdapter();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        obj = ((BluetoothAdapter) (obj)).getName();
        return ((String) (obj));
        Exception exception;
        exception;
        Ln.e(exception);
        return null;
    }

    public String getBssid()
    {
        Object obj = (WifiManager)getSystemService("wifi");
        if (obj != null)
        {
            if ((obj = ((WifiManager) (obj)).getConnectionInfo()) != null)
            {
                String s = ((WifiInfo) (obj)).getBSSID();
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

    public String getCarrier()
    {
        Object obj = (TelephonyManager)getSystemService("phone");
        if (obj == null)
        {
            obj = "-1";
        } else
        {
            String s = ((TelephonyManager) (obj)).getSimOperator();
            obj = s;
            if (TextUtils.isEmpty(s))
            {
                return "-1";
            }
        }
        return ((String) (obj));
    }

    public String getCharAndNumr(int i)
    {
        long l = System.currentTimeMillis();
        long l1 = SystemClock.elapsedRealtime();
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(l ^ l1);
        Random random = new Random();
        int j = 0;
        while (j < i) 
        {
            String s;
            if (random.nextInt(2) % 2 == 0)
            {
                s = "char";
            } else
            {
                s = "num";
            }
            if ("char".equalsIgnoreCase(s))
            {
                stringbuffer.insert(j + 1, (char)(random.nextInt(26) + 97));
            } else
            {
                stringbuffer.insert(stringbuffer.length(), random.nextInt(10));
            }
            j++;
        }
        return stringbuffer.toString().substring(0, 40);
    }

    public String getDetailNetworkTypeForStatic()
    {
        String s1 = getNetworkType().toLowerCase();
        String s;
        if (TextUtils.isEmpty(s1) || "none".equals(s1))
        {
            s = "none";
        } else
        {
            if (s1.startsWith("wifi"))
            {
                return "wifi";
            }
            if (s1.startsWith("4g"))
            {
                return "4g";
            }
            if (s1.startsWith("3g"))
            {
                return "3g";
            }
            if (s1.startsWith("2g"))
            {
                return "2g";
            }
            s = s1;
            if (s1.startsWith("bluetooth"))
            {
                return "bluetooth";
            }
        }
        return s;
    }

    public String getDeviceData()
    {
        return Base64AES((new StringBuilder()).append(getModel()).append("|").append(getOSVersion()).append("|").append(getManufacturer()).append("|").append(getCarrier()).append("|").append(getScreenSize()).toString(), getDeviceKey().substring(0, 16));
    }

    public String getDeviceDataNotAES()
    {
        return (new StringBuilder()).append(getModel()).append("|").append(getOSVersion()).append("|").append(getManufacturer()).append("|").append(getCarrier()).append("|").append(getScreenSize()).toString();
    }

    public String getDeviceId()
    {
        String s1 = getMime();
        String s = s1;
        if (s1 == null)
        {
            s = getSerialNo();
        }
        return s;
    }

    public String getDeviceKey()
    {
        String s3;
        s3 = null;
        String s;
        try
        {
            s = getLocalDeviceKey();
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            throwable = null;
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        s3 = s;
_L4:
        return s3;
_L2:
        String s1;
        s1 = getMacAddress();
        String s4 = getDeviceId();
        String s5 = getModel();
        s1 = Data.byteToHex(Data.SHA1((new StringBuilder()).append(s1).append(":").append(s4).append(":").append(s5).toString()));
        s3 = s1;
_L5:
        String s2 = s3;
        if (TextUtils.isEmpty(s3))
        {
            s2 = getCharAndNumr(40);
        }
        s3 = s2;
        if (s2 != null)
        {
            try
            {
                saveLocalDeviceKey(s2);
            }
            catch (Throwable throwable2)
            {
                Ln.w(throwable2);
                return s2;
            }
            return s2;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Throwable throwable1;
        throwable1;
        Ln.d(throwable1);
          goto _L5
    }

    public ArrayList getInstalledApp(boolean flag)
    {
        PackageManager packagemanager;
        ArrayList arraylist;
        Object obj;
        packagemanager = context.getPackageManager();
        obj = packagemanager.getInstalledPackages(0);
        arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
_L3:
        PackageInfo packageinfo;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_151;
        }
        packageinfo = (PackageInfo)((Iterator) (obj)).next();
        if (flag) goto _L2; else goto _L1
_L1:
        if (isSystemApp(packageinfo)) goto _L3; else goto _L2
_L2:
        HashMap hashmap = new HashMap();
        hashmap.put("pkg", packageinfo.packageName);
        hashmap.put("name", packageinfo.applicationInfo.loadLabel(packagemanager).toString());
        hashmap.put("version", packageinfo.versionName);
        arraylist.add(hashmap);
          goto _L3
        Throwable throwable;
        throwable;
        Ln.w(throwable);
        return new ArrayList();
        return arraylist;
    }

    public String getLine1Number()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        if (telephonymanager == null)
        {
            return "-1";
        } else
        {
            return telephonymanager.getLine1Number();
        }
    }

    public String getMacAddress()
    {
        Object obj = (WifiManager)getSystemService("wifi");
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

    public String getManufacturer()
    {
        return Build.MANUFACTURER;
    }

    public String getMime()
    {
        Object obj = (TelephonyManager)getSystemService("phone");
        String s;
        if (obj == null)
        {
            s = null;
        } else
        {
            s = ((TelephonyManager) (obj)).getDeviceId();
            obj = "";
            if (s != null)
            {
                obj = (new String(s)).replace("0", "");
            }
            if (s == null || ((String) (obj)).length() <= 0)
            {
                return null;
            }
        }
        return s;
    }

    public String getModel()
    {
        return Build.MODEL;
    }

    public String getNetworkOperator()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        if (telephonymanager == null)
        {
            return null;
        } else
        {
            return telephonymanager.getNetworkOperator();
        }
    }

    public String getNetworkType()
    {
        Object obj = (ConnectivityManager)getSystemService("connectivity");
        if (obj == null)
        {
            return "none";
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null || !((NetworkInfo) (obj)).isAvailable())
        {
            return "none";
        }
        int i = ((NetworkInfo) (obj)).getType();
        switch (i)
        {
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        default:
            return String.valueOf(i);

        case 1: // '\001'
            return "wifi";

        case 0: // '\0'
            if (is4GMobileNetwork())
            {
                return "4G";
            }
            if (isFastMobileNetwork())
            {
                return "3G";
            } else
            {
                return "2G";
            }

        case 7: // '\007'
            return "bluetooth";

        case 8: // '\b'
            return "dummy";

        case 9: // '\t'
            return "ethernet";

        case 6: // '\006'
            return "wimax";
        }
    }

    public String getNetworkTypeForStatic()
    {
        String s = getNetworkType().toLowerCase();
        if (TextUtils.isEmpty(s) || "none".equals(s))
        {
            return "none";
        }
        if (s.startsWith("4g") || s.startsWith("3g") || s.startsWith("2g"))
        {
            return "cell";
        }
        if (s.startsWith("wifi"))
        {
            return "wifi";
        } else
        {
            return "other";
        }
    }

    public String getOSLanguage()
    {
        return Locale.getDefault().getLanguage();
    }

    public String getOSVersion()
    {
        return String.valueOf(android.os.Build.VERSION.SDK_INT);
    }

    public String getOSVersionName()
    {
        return android.os.Build.VERSION.RELEASE;
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
        JSONArray jsonarray = new JSONArray();
        Object obj = (ActivityManager)getSystemService("activity");
        if (obj == null)
        {
            return jsonarray;
        }
        obj = ((ActivityManager) (obj)).getRunningAppProcesses();
        if (obj == null)
        {
            return jsonarray;
        }
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); jsonarray.put(((android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next()).processName)) { }
        return jsonarray;
    }

    public String getRunningAppStr()
        throws JSONException
    {
        JSONArray jsonarray = getRunningApp();
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < jsonarray.length(); i++)
        {
            if (i > 0)
            {
                stringbuilder.append(',');
            }
            stringbuilder.append(String.valueOf(jsonarray.get(i)));
        }

        return stringbuilder.toString();
    }

    public String getSSID()
    {
        Object obj = (WifiManager)getSystemService("wifi");
        if (obj != null)
        {
            if ((obj = ((WifiManager) (obj)).getConnectionInfo()) != null)
            {
                String s = ((WifiInfo) (obj)).getSSID();
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

    public String getScreenSize()
    {
        int ai[] = R.getScreenSize(context);
        if (context.getResources().getConfiguration().orientation == 1)
        {
            return (new StringBuilder()).append(ai[0]).append("x").append(ai[1]).toString();
        } else
        {
            return (new StringBuilder()).append(ai[1]).append("x").append(ai[0]).toString();
        }
    }

    public String getSdcardPath()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public boolean getSdcardState()
    {
        boolean flag;
        try
        {
            flag = "mounted".equals(Environment.getExternalStorageState());
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return false;
        }
        return flag;
    }

    public String getSerialNo()
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            Object obj;
            try
            {
                obj = Class.forName("android.os.SystemProperties");
                obj = (String)(String)((Class) (obj)).getMethod("get", new Class[] {
                    java/lang/String, java/lang/String
                }).invoke(obj, new Object[] {
                    "ro.serialno", "unknown"
                });
            }
            catch (Throwable throwable)
            {
                Ln.d(throwable);
                return null;
            }
            return ((String) (obj));
        } else
        {
            return null;
        }
    }

    public String getSignMD5()
    {
        String s;
        try
        {
            s = Data.MD5(context.getPackageManager().getPackageInfo(getPackageName(), 64).signatures[0].toByteArray());
        }
        catch (Exception exception)
        {
            Ln.e(exception);
            return null;
        }
        return s;
    }

    public String getSimSerialNumber()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        if (telephonymanager == null)
        {
            return "-1";
        } else
        {
            return telephonymanager.getSimSerialNumber();
        }
    }

    public String getTopTaskPackageName()
    {
        Object obj;
        boolean flag;
        try
        {
            flag = checkPermission("android.permission.GET_TASKS");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Ln.w(((Throwable) (obj)));
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj = (ActivityManager)getSystemService("activity");
        if (obj == null)
        {
            return null;
        }
        obj = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager) (obj)).getRunningTasks(1).get(0)).topActivity.getPackageName();
        return ((String) (obj));
        Throwable throwable;
        throwable;
        Ln.w(throwable);
        return null;
    }

    public void hideSoftInput(View view)
    {
        Object obj = getSystemService("input_method");
        if (obj == null)
        {
            return;
        } else
        {
            ((InputMethodManager)obj).hideSoftInputFromWindow(view.getWindowToken(), 0);
            return;
        }
    }

    public boolean isMainProcess(Context context1)
    {
        Object obj;
        int i;
        if (context1 == null)
        {
            return false;
        }
        i = Process.myPid();
        obj = ((ActivityManager)context1.getSystemService("activity")).getRunningAppProcesses().iterator();
_L4:
        if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next();
        if (runningappprocessinfo.pid != i) goto _L4; else goto _L3
_L3:
        obj = runningappprocessinfo.processName;
_L6:
        return context1.getPackageName().equals(obj);
_L2:
        obj = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean isRooted()
    {
        return false;
    }

    public void showSoftInput(View view)
    {
        Object obj = getSystemService("input_method");
        if (obj == null)
        {
            return;
        } else
        {
            ((InputMethodManager)obj).toggleSoftInputFromWindow(view.getWindowToken(), 2, 0);
            return;
        }
    }
}
