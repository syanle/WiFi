// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.baidu.lbsapi.auth.e;
import com.baidu.lbsapi.auth.i;
import com.baidu.platform.comapi.c.c;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.utils:
//            a

public class PermissionCheck
{
    private static class a
        implements i
    {

        public void a(int j, String s)
        {
            if (s != null)
            {
                b b1 = new b();
                try
                {
                    s = new JSONObject(s);
                    if (s.has("status"))
                    {
                        b1.a = s.optInt("status");
                    }
                    if (s.has("appid"))
                    {
                        b1.c = s.optString("appid");
                    }
                    if (s.has("uid"))
                    {
                        b1.b = s.optString("uid");
                    }
                    if (s.has("message"))
                    {
                        b1.d = s.optString("message");
                    }
                    if (s.has("token"))
                    {
                        b1.e = s.optString("token");
                    }
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                }
                if (PermissionCheck.a() != null)
                {
                    PermissionCheck.a().a(b1);
                    return;
                }
            }
        }

        private a()
        {
        }

    }

    public static class b
    {

        public int a;
        public String b;
        public String c;
        public String d;
        public String e;

        public String toString()
        {
            return String.format("errorcode: %d uid: %s appid %s msg: %s", new Object[] {
                Integer.valueOf(a), b, c, d
            });
        }

        public b()
        {
            a = 0;
            b = "-1";
            c = "-1";
            d = "";
        }
    }

    public static interface c
    {

        public abstract void a(b b1);
    }


    private static final String a = com/baidu/mapapi/utils/PermissionCheck.getSimpleName();
    private static Context b;
    private static Hashtable c;
    private static e d = null;
    private static i e = null;
    private static c f = null;

    public PermissionCheck()
    {
    }

    static c a()
    {
        return f;
    }

    public static void destory()
    {
        f = null;
        b = null;
        d = null;
        e = null;
    }

    public static void init(Context context)
    {
        b = context;
        if (c == null)
        {
            c = new Hashtable();
        }
        if (d == null)
        {
            d = new e(b);
        }
        if (e == null)
        {
            e = new a();
        }
        Object obj = "";
        try
        {
            context = context.getPackageManager().getPackageInfo(b.getPackageName(), 0).applicationInfo.loadLabel(b.getPackageManager()).toString();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            context = ((Context) (obj));
        }
        Log.d("auth info", (new StringBuilder()).append("mcode: ").append(com.baidu.mapapi.utils.a.a(b)).toString());
        obj = com.baidu.platform.comapi.c.c.c();
        c.put("mb", ((Bundle) (obj)).getString("mb"));
        c.put("os", ((Bundle) (obj)).getString("os"));
        c.put("sv", ((Bundle) (obj)).getString("sv"));
        c.put("imt", "1");
        c.put("im", ((Bundle) (obj)).getString("im"));
        c.put("imrand", ((Bundle) (obj)).getString("imrand"));
        c.put("net", ((Bundle) (obj)).getString("net"));
        c.put("cpu", ((Bundle) (obj)).getString("cpu"));
        c.put("glr", ((Bundle) (obj)).getString("glr"));
        c.put("glv", ((Bundle) (obj)).getString("glv"));
        c.put("resid", ((Bundle) (obj)).getString("resid"));
        c.put("appid", "-1");
        c.put("ver", "1");
        c.put("screen", String.format("(%d,%d)", new Object[] {
            Integer.valueOf(((Bundle) (obj)).getInt("screen_x")), Integer.valueOf(((Bundle) (obj)).getInt("screen_y"))
        }));
        c.put("dpi", String.format("(%d,%d)", new Object[] {
            Integer.valueOf(((Bundle) (obj)).getInt("dpi_x")), Integer.valueOf(((Bundle) (obj)).getInt("dpi_y"))
        }));
        c.put("pcn", ((Bundle) (obj)).getString("pcn"));
        c.put("cuid", ((Bundle) (obj)).getString("cuid"));
        c.put("name", context);
    }

    public static int permissionCheck()
    {
        boolean flag = false;
        com/baidu/mapapi/utils/PermissionCheck;
        JVM INSTR monitorenter ;
        int i = ((flag) ? 1 : 0);
        if (d == null) goto _L2; else goto _L1
_L1:
        i = ((flag) ? 1 : 0);
        if (e == null) goto _L2; else goto _L3
_L3:
        Context context = b;
        if (context != null) goto _L5; else goto _L4
_L4:
        i = ((flag) ? 1 : 0);
_L2:
        com/baidu/mapapi/utils/PermissionCheck;
        JVM INSTR monitorexit ;
        return i;
_L5:
        i = d.a(false, "lbs_androidsdk", c, e);
        if (true) goto _L2; else goto _L6
_L6:
        Exception exception;
        exception;
        throw exception;
    }

    public static void setPermissionCheckResultListener(c c1)
    {
        f = c1;
    }

}
