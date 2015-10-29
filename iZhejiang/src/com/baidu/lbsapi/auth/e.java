// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.baidu.android.bbalbs.common.util.CommonParam;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.lbsapi.auth:
//            f, j, i, ErrorMessage, 
//            a, b, c, h, 
//            g

public class e
{

    private static Context b;
    private static j d = null;
    private static int e = 0;
    private static Hashtable f = new Hashtable();
    private boolean a;
    private c c;
    private final Handler g = new f(this, Looper.getMainLooper());

    public e(Context context)
    {
        a = true;
        c = null;
        b = context;
        if (d != null && !d.isAlive())
        {
            d = null;
        }
        c();
    }

    private int a(String s)
    {
        int k;
        k = -1;
        int l = k;
        SimpleDateFormat simpledateformat;
        int i1;
        long l1;
        long l2;
        boolean flag;
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return l;
        }
        l = k;
        if (s.has("status"))
        {
            break MISSING_BLOCK_LABEL_37;
        }
        l = k;
        s.put("status", -1);
        l = k;
        i1 = s.getInt("status");
        k = i1;
        l = i1;
        if (!s.has("current")) goto _L2; else goto _L1
_L1:
        k = i1;
        if (i1 != 0) goto _L2; else goto _L3
_L3:
        l = i1;
        l1 = s.getLong("current");
        l = i1;
        l2 = System.currentTimeMillis();
        l = i1;
        if ((double)(l2 - l1) / 3600000D < 24D) goto _L5; else goto _L4
_L4:
        k = 601;
_L2:
        l = k;
        if (!s.has("current") || k != 602)
        {
            break; /* Loop/switch isn't completed */
        }
        l = k;
        l1 = s.getLong("current");
        l = k;
        if ((double)((System.currentTimeMillis() - l1) / 1000L) > 180D)
        {
            return 601;
        }
        break; /* Loop/switch isn't completed */
_L5:
        l = i1;
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        l = i1;
        flag = simpledateformat.format(Long.valueOf(l2)).equals(simpledateformat.format(Long.valueOf(l1)));
        k = i1;
        if (!flag)
        {
            k = 601;
        }
        if (true) goto _L2; else goto _L6
_L6:
        return k;
    }

    private String a(Context context)
    {
        int k = Process.myPid();
        for (context = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses().iterator(); context.hasNext();)
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)context.next();
            if (runningappprocessinfo.pid == k)
            {
                return runningappprocessinfo.processName;
            }
        }

        return null;
    }

    private String a(Context context, String s)
    {
        String s1;
        String s2;
        Object obj;
        s2 = "";
        obj = context.getPackageName();
        s1 = s2;
        context = context.getPackageManager().getApplicationInfo(((String) (obj)), 128);
        s1 = s2;
        if (((ApplicationInfo) (context)).metaData != null) goto _L2; else goto _L1
_L1:
        s1 = s2;
        context = (i)f.get(s);
        if (context == null) goto _L4; else goto _L3
_L3:
        s1 = s2;
        context.a(-1, ErrorMessage.a("AndroidManifest.xml\u7684application\u4E2D\u6CA1\u6709meta-data\u6807\u7B7E"));
          goto _L4
_L2:
        s1 = s2;
        s2 = ((ApplicationInfo) (context)).metaData.getString("com.baidu.lbsapi.API_KEY");
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        context = s2;
        s1 = s2;
        if (!s2.equals(""))
        {
            break MISSING_BLOCK_LABEL_149;
        }
        s1 = s2;
        obj = (i)f.get(s);
        context = s2;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        s1 = s2;
        ((i) (obj)).a(-1, ErrorMessage.a("\u65E0\u6CD5\u5728AndroidManifest.xml\u4E2D\u83B7\u53D6com.baidu.android.lbs.API_KEY\u7684\u503C"));
        context = s2;
_L5:
        return context;
        context;
        s = (i)f.get(s);
        context = s1;
        if (s != null)
        {
            s.a(-1, ErrorMessage.a("\u65E0\u6CD5\u5728AndroidManifest.xml\u4E2D\u83B7\u53D6com.baidu.android.lbs.API_KEY\u7684\u503C"));
            context = s1;
        }
        if (true) goto _L5; else goto _L4
_L4:
        return "";
    }

    static Hashtable a()
    {
        return f;
    }

    static void a(e e1, String s, String s1)
    {
        e1.a(s, s1);
    }

    static void a(e e1, boolean flag, String s, Hashtable hashtable, String s1)
    {
        e1.a(flag, s, hashtable, s1);
    }

    private void a(String s, String s1)
    {
        int l = -1;
        this;
        JVM INSTR monitorenter ;
        Object obj;
        obj = s;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        obj = d();
        s = g.obtainMessage();
        int k = l;
        obj = new JSONObject(((String) (obj)));
        k = l;
        if (((JSONObject) (obj)).has("status"))
        {
            break MISSING_BLOCK_LABEL_62;
        }
        k = l;
        ((JSONObject) (obj)).put("status", -1);
        k = l;
        if (((JSONObject) (obj)).has("current"))
        {
            break MISSING_BLOCK_LABEL_89;
        }
        k = l;
        ((JSONObject) (obj)).put("current", System.currentTimeMillis());
        k = l;
        c(((JSONObject) (obj)).toString());
        k = l;
        if (!((JSONObject) (obj)).has("current"))
        {
            break MISSING_BLOCK_LABEL_125;
        }
        k = l;
        ((JSONObject) (obj)).remove("current");
        k = l;
        l = ((JSONObject) (obj)).getInt("status");
        k = l;
        s.what = l;
        k = l;
        s.obj = ((JSONObject) (obj)).toString();
        k = l;
        obj = new Bundle();
        k = l;
        ((Bundle) (obj)).putString("listenerKey", s1);
        k = l;
        s.setData(((Bundle) (obj)));
        k = l;
        g.sendMessage(s);
_L1:
        d.c();
        e--;
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("httpRequest called mAuthCounter-- = ").append(e).toString());
        }
        if (e == 0)
        {
            d.a();
            if (d != null)
            {
                d = null;
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        s.what = k;
        s.obj = new JSONObject();
        Bundle bundle = new Bundle();
        bundle.putString("listenerKey", s1);
        s.setData(bundle);
        g.sendMessage(s);
          goto _L1
        s;
        throw s;
    }

    private void a(boolean flag, String s, Hashtable hashtable, String s1)
    {
        String s2 = a(b, s1);
        if (s2 == null || s2.equals(""))
        {
            return;
        }
        HashMap hashmap = new HashMap();
        hashmap.put("url", "https://sapi.map.baidu.com/sdkcs/verify");
        hashmap.put("output", "json");
        hashmap.put("ak", s2);
        hashmap.put("mcode", com.baidu.lbsapi.auth.b.a(b));
        hashmap.put("from", "lbs_yunsdk");
        if (hashtable != null && hashtable.size() > 0)
        {
            java.util.Map.Entry entry;
            for (hashtable = hashtable.entrySet().iterator(); hashtable.hasNext(); hashmap.put((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)hashtable.next();
            }

        }
        hashmap.put("cuid", CommonParam.a(b));
        hashmap.put("pcn", b.getPackageName());
        hashmap.put("version", "1.0.4");
        hashmap.put("macaddr", com.baidu.lbsapi.auth.b.b(b));
        if (flag)
        {
            if (flag)
            {
                hashtable = "1";
            } else
            {
                hashtable = "0";
            }
            hashmap.put("force", hashtable);
        }
        hashmap.put("from_service", s);
        c = new c(b);
        c.a(hashmap, new h(this, s1));
    }

    static boolean a(e e1, String s)
    {
        return e1.b(s);
    }

    static j b()
    {
        return d;
    }

    private boolean b(String s)
    {
        String s1;
        s1 = a(b, s);
        s = d();
        s = new JSONObject(s);
        if (!s.has("ak"))
        {
            return true;
        }
        try
        {
            s = s.getString("ak");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = "";
        }
        return s1 != null && s != null && !s1.equals(s);
    }

    private void c()
    {
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorenter ;
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        d = new j("auth");
        d.start();
_L1:
        Handler handler = d.a;
        if (handler != null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a("wait for create auth thread.");
        }
        Thread.sleep(3L);
          goto _L1
        Object obj;
        obj;
        ((InterruptedException) (obj)).printStackTrace();
          goto _L1
        obj;
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorexit ;
        throw obj;
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorexit ;
    }

    private void c(String s)
    {
        b.getSharedPreferences((new StringBuilder()).append("authStatus_").append(a(b)).toString(), 0).edit().putString("status", s).commit();
    }

    private String d()
    {
        return b.getSharedPreferences((new StringBuilder()).append("authStatus_").append(a(b)).toString(), 0).getString("status", "{\"status\":601}");
    }

    public int a(boolean flag, String s, Hashtable hashtable, i k)
    {
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorenter ;
        String s1 = (new StringBuilder()).append(System.currentTimeMillis()).append("").toString();
        if (k == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        f.put(s1, k);
        k = a(b, s1);
        if (k == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        if (!k.equals(""))
        {
            break MISSING_BLOCK_LABEL_73;
        }
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorexit ;
        return -1;
        int l;
        e++;
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append(" mAuthCounter  ++ = ").append(e).toString());
        }
        l = a(d());
        if (l != 601)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        c((new JSONObject()).put("status", 602).toString());
_L1:
        c();
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("mThreadLooper.mHandler = ").append(d.a).toString());
        }
        d.a.post(new g(this, l, flag, s1, s, hashtable));
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorexit ;
        return l;
        s;
        com/baidu/lbsapi/auth/e;
        JVM INSTR monitorexit ;
        throw s;
        k;
        k.printStackTrace();
          goto _L1
    }

}
