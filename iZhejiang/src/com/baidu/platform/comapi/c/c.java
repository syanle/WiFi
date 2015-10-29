// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.location.LocationManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.baidu.mapapi.VersionInfo;
import com.baidu.platform.comjni.map.commonmemcache.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Random;

public class c
{

    static String A = "-1";
    static String B = "-1";
    public static Context C;
    public static final int D;
    public static float E = 1.0F;
    public static String F;
    private static final String G = com/baidu/platform/comapi/c/c.getSimpleName();
    private static boolean H = true;
    private static int I = 0;
    private static int J = 0;
    static a a = new a();
    static com.baidu.platform.comjni.base.networkdetect.a b = new com.baidu.platform.comjni.base.networkdetect.a();
    static String c = "02";
    static String d;
    static String e;
    static String f;
    static String g;
    static int h;
    static int i;
    static int j;
    static int k;
    static int l;
    static int m;
    static String n;
    static String o;
    static String p;
    static String q;
    static String r;
    static String s;
    static String t = "baidu";
    static String u = "baidu";
    static String v = "";
    static String w = "";
    static String x = "";
    static String y;
    static String z;

    public c()
    {
    }

    public static String a()
    {
        Random random = new Random();
        StringBuffer stringbuffer = new StringBuffer(10);
        for (int i1 = 0; i1 < 10; i1++)
        {
            stringbuffer.append(random.nextInt(10));
        }

        return stringbuffer.toString();
    }

    public static String a(Context context)
    {
        Object obj;
        if (H)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        obj = a();
        try
        {
            context = context.openFileOutput("imei.dat", 32768);
            context.write((new StringBuilder()).append("|").append(((String) (obj))).toString().getBytes());
            context.close();
        }
        catch (Exception exception)
        {
            context = ((Context) (obj));
            obj = exception;
            continue; /* Loop/switch isn't completed */
        }
        return ((String) (obj));
        context = context.openFileInput("imei.dat");
        obj = new byte[context.available()];
        context.read(((byte []) (obj)));
        context.close();
        context = new String(((byte []) (obj)));
        obj = context.substring(context.indexOf('|') + 1);
        return ((String) (obj));
        obj;
        context = null;
_L2:
        ((Exception) (obj)).printStackTrace();
        return context;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(String s1)
    {
        q = s1;
        h();
    }

    public static void a(String s1, String s2)
    {
        A = s2;
        B = s1;
        h();
    }

    public static void b()
    {
        f();
        d();
    }

    public static byte[] b(Context context)
    {
        try
        {
            context = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return null;
        }
        return context;
    }

    public static Bundle c()
    {
        Bundle bundle = new Bundle();
        bundle.putString("cpu", v);
        bundle.putString("resid", c);
        bundle.putString("channel", t);
        bundle.putString("glr", w);
        bundle.putString("glv", x);
        bundle.putString("mb", i());
        bundle.putString("sv", k());
        bundle.putString("os", m());
        bundle.putInt("dpi_x", n());
        bundle.putInt("dpi_y", n());
        bundle.putString("net", q);
        bundle.putString("im", j(C));
        bundle.putString("imrand", a(C));
        bundle.putString("cuid", p());
        bundle.putByteArray("signature", b(C));
        bundle.putString("pcn", C.getPackageName());
        bundle.putInt("screen_x", j());
        bundle.putInt("screen_y", l());
        return bundle;
    }

    public static void c(Context context)
    {
        C = context;
        y = context.getFilesDir().getAbsolutePath();
        z = context.getCacheDir().getAbsolutePath();
        e = Build.MODEL;
        f = (new StringBuilder()).append("Android").append(android.os.Build.VERSION.SDK).toString();
        d = context.getPackageName();
        e(context);
        f(context);
        g(context);
        h(context);
        i(context);
        l(context);
        context = (LocationManager)context.getSystemService("location");
        int i1;
        if (context.isProviderEnabled("gps"))
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        I = i1;
        if (context.isProviderEnabled("network"))
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        try
        {
            J = i1;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void d()
    {
        if (b != null)
        {
            b.a();
        }
    }

    public static void d(Context context)
    {
        boolean flag2;
        boolean flag3;
        boolean flag4;
        flag4 = true;
        flag2 = true;
        flag3 = false;
        File file = new File(y);
        if (!file.exists())
        {
            file.mkdirs();
        }
        String as[];
        boolean flag1;
        context = context.getAssets();
        as = new String[14];
        as[0] = "CMRequire.dat";
        as[1] = "VerDatset.dat";
        as[2] = "cfg/a/ResPack.rs";
        as[3] = "cfg/h/DVHotcity.cfg";
        as[4] = "cfg/l/DVHotcity.cfg";
        as[5] = "cfg/h/DVHotMap.cfg";
        as[6] = "cfg/l/DVHotMap.cfg";
        as[7] = "cfg/l/DVDirectory.cfg";
        as[8] = "cfg/l/DVVersion.cfg";
        as[9] = "cfg/h/DVDirectory.cfg";
        as[10] = "cfg/h/DVVersion.cfg";
        as[11] = "cfg/a/mapstyle.sty";
        as[12] = "cfg/a/satellitestyle.sty";
        as[13] = "cfg/a/trafficstyle.sty";
        flag1 = flag4;
        Object obj = new File((new StringBuilder()).append(y).append("/ver.dat").toString());
        flag1 = flag4;
        byte abyte0[] = new byte[6];
        flag1 = flag4;
        abyte0;
        abyte0[0] = 2;
        abyte0[1] = 4;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = 0;
        abyte0[5] = 0;
        boolean flag;
        flag = flag2;
        flag1 = flag4;
        if (!((File) (obj)).exists())
        {
            break MISSING_BLOCK_LABEL_303;
        }
        flag1 = flag4;
        FileInputStream fileinputstream = new FileInputStream(((File) (obj)));
        flag1 = flag4;
        byte abyte2[] = new byte[fileinputstream.available()];
        flag1 = flag4;
        fileinputstream.read(abyte2);
        flag1 = flag4;
        fileinputstream.close();
        flag = flag2;
        flag1 = flag4;
        if (Arrays.equals(abyte2, abyte0))
        {
            flag = false;
        }
        flag2 = flag;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_541;
        }
        flag1 = flag;
        if (!((File) (obj)).exists())
        {
            break MISSING_BLOCK_LABEL_332;
        }
        flag1 = flag;
        ((File) (obj)).delete();
        flag1 = flag;
        ((File) (obj)).createNewFile();
        flag1 = flag;
        obj = new FileOutputStream(((File) (obj)));
        flag1 = flag;
        ((FileOutputStream) (obj)).write(abyte0);
        flag1 = flag;
        ((FileOutputStream) (obj)).close();
        flag1 = flag;
        File file1 = new File((new StringBuilder()).append(y).append("/cfg/a").toString());
        flag1 = flag;
        if (file1.exists())
        {
            break MISSING_BLOCK_LABEL_425;
        }
        flag1 = flag;
        file1.mkdirs();
        flag1 = flag;
        file1 = new File((new StringBuilder()).append(y).append("/cfg/h").toString());
        flag1 = flag;
        if (file1.exists())
        {
            break MISSING_BLOCK_LABEL_479;
        }
        flag1 = flag;
        file1.mkdirs();
        flag1 = flag;
        file1 = new File((new StringBuilder()).append(y).append("/cfg/l").toString());
        flag2 = flag;
        flag1 = flag;
        if (file1.exists())
        {
            break MISSING_BLOCK_LABEL_541;
        }
        flag1 = flag;
        file1.mkdirs();
        flag2 = flag;
_L1:
        if (flag2)
        {
            int i1 = ((flag3) ? 1 : 0);
            while (i1 < as.length) 
            {
                Exception exception;
                try
                {
                    Object obj1 = context.open((new String[] {
                        "CMRequire.dat", "VerDatset.dat", "cfg/a/ResPack.cfg", "cfg/h/DVHotcity.cfg", "cfg/l/DVHotcity.cfg", "cfg/h/DVHotMap.cfg", "cfg/l/DVHotMap.cfg", "cfg/l/DVDirectory.cfg", "cfg/l/DVVersion.cfg", "cfg/h/DVDirectory.cfg", 
                        "cfg/h/DVVersion.cfg", "cfg/a/mapstyle.sty", "cfg/a/satellitestyle.sty", "cfg/a/trafficstyle.sty"
                    })[i1]);
                    byte abyte1[] = new byte[((InputStream) (obj1)).available()];
                    ((InputStream) (obj1)).read(abyte1);
                    ((InputStream) (obj1)).close();
                    obj1 = new File((new StringBuilder()).append(y).append("/").append(as[i1]).toString());
                    if (((File) (obj1)).exists())
                    {
                        ((File) (obj1)).delete();
                    }
                    ((File) (obj1)).createNewFile();
                    obj1 = new FileOutputStream(((File) (obj1)));
                    ((FileOutputStream) (obj1)).write(abyte1);
                    ((FileOutputStream) (obj1)).close();
                }
                catch (Exception exception1)
                {
                    exception1.printStackTrace();
                }
                i1++;
            }
        }
        break MISSING_BLOCK_LABEL_765;
        context;
        context.printStackTrace();
        return;
        exception;
        exception.printStackTrace();
        flag2 = flag1;
          goto _L1
    }

    public static void e()
    {
        if (a != null)
        {
            a.a();
        }
    }

    private static void e(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            context = packagemanager.getPackageInfo(context.getPackageName(), 0);
            g = VersionInfo.getApiVersion();
            h = ((PackageInfo) (context)).versionCode;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            g = "1.0.0";
        }
        h = 1;
    }

    public static void f()
    {
        if (a != null)
        {
            a.b();
        }
    }

    private static void f(Context context)
    {
        context = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        if (context != null)
        {
            context = context.getDefaultDisplay();
        } else
        {
            context = null;
        }
        if (context != null)
        {
            i = context.getWidth();
            j = context.getHeight();
            context.getMetrics(displaymetrics);
        }
        E = displaymetrics.density;
        k = (int)displaymetrics.xdpi;
        l = (int)displaymetrics.ydpi;
        if (D > 3)
        {
            m = displaymetrics.densityDpi;
        } else
        {
            m = 160;
        }
        if (m == 0)
        {
            m = 160;
        }
    }

    public static String g()
    {
        return q;
    }

    private static void g(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        if (telephonymanager != null)
        {
            n = j(context);
            o = telephonymanager.getSubscriberId();
            p = a(context);
        }
    }

    public static void h()
    {
        Bundle bundle = new Bundle();
        bundle.putString("cpu", v);
        bundle.putString("resid", c);
        bundle.putString("channel", t);
        bundle.putString("glr", w);
        bundle.putString("glv", x);
        bundle.putString("mb", i());
        bundle.putString("sv", k());
        bundle.putString("os", m());
        bundle.putInt("dpi_x", n());
        bundle.putInt("dpi_y", n());
        bundle.putString("net", q);
        bundle.putString("im", j(C));
        bundle.putString("imrand", a(C));
        bundle.putString("cuid", p());
        bundle.putString("pcn", C.getPackageName());
        bundle.putInt("screen_x", j());
        bundle.putInt("screen_y", l());
        bundle.putString("appid", A);
        bundle.putString("uid", B);
        bundle.putString("token", F);
        if (a != null)
        {
            a.a(bundle);
        }
    }

    private static void h(Context context)
    {
        r = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String i()
    {
        return e;
    }

    private static void i(Context context)
    {
        if ((TelephonyManager)context.getSystemService("phone") != null)
        {
            s = ((WifiManager)context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
    }

    public static int j()
    {
        return i;
    }

    private static String j(Context context)
    {
        Object obj = new File((new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("/").append("imei.dat").toString());
        if (((File) (obj)).exists())
        {
            break MISSING_BLOCK_LABEL_78;
        }
        H = false;
        obj = k(context);
        try
        {
            context = context.openFileOutput("imei.dat", 32768);
            context.write(((String) (obj)).getBytes());
            context.close();
        }
        catch (Exception exception)
        {
            context = ((Context) (obj));
            obj = exception;
            continue; /* Loop/switch isn't completed */
        }
        return ((String) (obj));
        H = true;
        context = context.openFileInput("imei.dat");
        obj = new byte[context.available()];
        context.read(((byte []) (obj)));
        context.close();
        context = new String(((byte []) (obj)));
        obj = context.substring(0, context.indexOf('|'));
        return ((String) (obj));
        obj;
        context = null;
_L2:
        ((Exception) (obj)).printStackTrace();
        return context;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String k()
    {
        return g;
    }

    private static String k(Context context)
    {
        context = (TelephonyManager)context.getSystemService("phone");
        if (context == null) goto _L2; else goto _L1
_L1:
        context = context.getDeviceId();
_L4:
        Object obj = context;
        if (TextUtils.isEmpty(context))
        {
            obj = "000000000000000";
        }
        return ((String) (obj));
        context;
        context.printStackTrace();
_L2:
        context = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static int l()
    {
        return j;
    }

    private static void l(Context context)
    {
        q = "0";
    }

    public static String m()
    {
        return f;
    }

    public static int n()
    {
        return m;
    }

    public static String o()
    {
        return y;
    }

    public static String p()
    {
        String s2 = CommonParam.a(C);
        String s1 = s2;
        if (s2 == null)
        {
            s1 = "";
        }
        return s1;
    }

    static 
    {
        D = Integer.parseInt(android.os.Build.VERSION.SDK);
    }
}
