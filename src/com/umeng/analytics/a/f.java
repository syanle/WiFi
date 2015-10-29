// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import com.umeng.analytics.j;
import com.umeng.common.b;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            g

public class f
    implements g
{

    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    private final String G;
    private final String H;
    private final String I;
    private final String J;
    private final String K;
    private final String L;
    private final String M;
    private final String N;
    private final String O;
    private final String P;
    private final String Q;
    private final String R;
    private final String S;
    private final String T;
    private final String U;
    private final String V;
    private final String W;
    private final String X;
    private final String Y;
    private final String Z;
    public String a;
    private final String aa;
    private final String ab;
    private final String ac;
    private final String ad;
    private final String ae;
    private final String af;
    private final String ag;
    private final String ah;
    private final String ai;
    private final String aj;
    private final String ak;
    private final String al;
    public String b;
    public String c;
    public String d;
    public String e;
    public long f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public long p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public int y;
    public String z;

    public f()
    {
        G = "appkey";
        H = "channel";
        I = "device_id";
        J = "idmd5";
        K = "mc";
        L = "req_time";
        M = "device_model";
        N = "os";
        O = "os_version";
        P = "resolution";
        Q = "cpu";
        R = "gpu_vender";
        S = "gpu_renderer";
        T = "device_board";
        U = "device_brand";
        V = "device_manutime";
        W = "device_manufacturer";
        X = "device_manuid";
        Y = "device_name";
        Z = "app_version";
        aa = "version_code";
        ab = "package_name";
        ac = "sdk_type";
        ad = "sdk_version";
        ae = "timezone";
        af = "country";
        ag = "language";
        ah = "access";
        ai = "access_subtype";
        aj = "carrier";
        ak = "wrapper_type";
        al = "wrapper_version";
    }

    public f(String s1, String s2)
    {
        G = "appkey";
        H = "channel";
        I = "device_id";
        J = "idmd5";
        K = "mc";
        L = "req_time";
        M = "device_model";
        N = "os";
        O = "os_version";
        P = "resolution";
        Q = "cpu";
        R = "gpu_vender";
        S = "gpu_renderer";
        T = "device_board";
        U = "device_brand";
        V = "device_manutime";
        W = "device_manufacturer";
        X = "device_manuid";
        Y = "device_name";
        Z = "app_version";
        aa = "version_code";
        ab = "package_name";
        ac = "sdk_type";
        ad = "sdk_version";
        ae = "timezone";
        af = "country";
        ag = "language";
        ah = "access";
        ai = "access_subtype";
        aj = "carrier";
        ak = "wrapper_type";
        al = "wrapper_version";
        a = s1;
        b = s2;
    }

    private void c(JSONObject jsonobject)
        throws Exception
    {
        a = jsonobject.getString("appkey");
        c = jsonobject.getString("device_id");
        d = jsonobject.getString("idmd5");
        if (jsonobject.has("mc"))
        {
            e = jsonobject.getString("mc");
        }
        if (jsonobject.has("channel"))
        {
            b = jsonobject.getString("channel");
        }
        if (jsonobject.has("req_time"))
        {
            f = jsonobject.getLong("req_time");
        }
    }

    private void d(JSONObject jsonobject)
        throws Exception
    {
        Object obj = null;
        String s1;
        long l1;
        if (jsonobject.has("device_model"))
        {
            s1 = jsonobject.getString("device_model");
        } else
        {
            s1 = null;
        }
        g = s1;
        if (jsonobject.has("os"))
        {
            s1 = jsonobject.getString("os");
        } else
        {
            s1 = null;
        }
        h = s1;
        if (jsonobject.has("os_version"))
        {
            s1 = jsonobject.getString("os_version");
        } else
        {
            s1 = null;
        }
        i = s1;
        if (jsonobject.has("resolution"))
        {
            s1 = jsonobject.getString("resolution");
        } else
        {
            s1 = null;
        }
        j = s1;
        if (jsonobject.has("cpu"))
        {
            s1 = jsonobject.getString("cpu");
        } else
        {
            s1 = null;
        }
        k = s1;
        if (jsonobject.has("gpu_vender"))
        {
            s1 = jsonobject.getString("gpu_vender");
        } else
        {
            s1 = null;
        }
        l = s1;
        if (jsonobject.has("gpu_renderer"))
        {
            s1 = jsonobject.getString("gpu_renderer");
        } else
        {
            s1 = null;
        }
        m = s1;
        if (jsonobject.has("device_board"))
        {
            s1 = jsonobject.getString("device_board");
        } else
        {
            s1 = null;
        }
        n = s1;
        if (jsonobject.has("device_brand"))
        {
            s1 = jsonobject.getString("device_brand");
        } else
        {
            s1 = null;
        }
        o = s1;
        if (jsonobject.has("device_manutime"))
        {
            l1 = jsonobject.getLong("device_manutime");
        } else
        {
            l1 = 0L;
        }
        p = l1;
        if (jsonobject.has("device_manufacturer"))
        {
            s1 = jsonobject.getString("device_manufacturer");
        } else
        {
            s1 = null;
        }
        q = s1;
        if (jsonobject.has("device_manuid"))
        {
            s1 = jsonobject.getString("device_manuid");
        } else
        {
            s1 = null;
        }
        r = s1;
        s1 = obj;
        if (jsonobject.has("device_name"))
        {
            s1 = jsonobject.getString("device_name");
        }
        s = s1;
    }

    private void e(JSONObject jsonobject)
        throws Exception
    {
        Object obj = null;
        String s1;
        if (jsonobject.has("app_version"))
        {
            s1 = jsonobject.getString("app_version");
        } else
        {
            s1 = null;
        }
        t = s1;
        if (jsonobject.has("version_code"))
        {
            s1 = jsonobject.getString("version_code");
        } else
        {
            s1 = null;
        }
        u = s1;
        s1 = obj;
        if (jsonobject.has("package_name"))
        {
            s1 = jsonobject.getString("package_name");
        }
        v = s1;
    }

    private void f(JSONObject jsonobject)
        throws Exception
    {
        w = jsonobject.getString("sdk_type");
        x = jsonobject.getString("sdk_version");
    }

    private void g(JSONObject jsonobject)
        throws Exception
    {
        Object obj = null;
        String s1;
        int i1;
        if (jsonobject.has("timezone"))
        {
            i1 = jsonobject.getInt("timezone");
        } else
        {
            i1 = 8;
        }
        y = i1;
        if (jsonobject.has("country"))
        {
            s1 = jsonobject.getString("country");
        } else
        {
            s1 = null;
        }
        z = s1;
        s1 = obj;
        if (jsonobject.has("language"))
        {
            s1 = jsonobject.getString("language");
        }
        A = s1;
    }

    private void h(JSONObject jsonobject)
        throws Exception
    {
        Object obj = null;
        String s1;
        if (jsonobject.has("access"))
        {
            s1 = jsonobject.getString("access");
        } else
        {
            s1 = null;
        }
        B = s1;
        if (jsonobject.has("access_subtype"))
        {
            s1 = jsonobject.getString("access_subtype");
        } else
        {
            s1 = null;
        }
        C = s1;
        s1 = obj;
        if (jsonobject.has("carrier"))
        {
            s1 = jsonobject.getString("carrier");
        }
        D = s1;
    }

    private void i(JSONObject jsonobject)
        throws Exception
    {
        Object obj = null;
        String s1;
        if (jsonobject.has("wrapper_type"))
        {
            s1 = jsonobject.getString("wrapper_type");
        } else
        {
            s1 = null;
        }
        E = s1;
        s1 = obj;
        if (jsonobject.has("wrapper_version"))
        {
            s1 = jsonobject.getString("wrapper_version");
        }
        F = s1;
    }

    private void j(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("appkey", a);
        jsonobject.put("device_id", c);
        jsonobject.put("idmd5", d);
        if (b != null)
        {
            jsonobject.put("channel", b);
        }
        if (e != null)
        {
            jsonobject.put("mc", e);
        }
        if (f > 0L)
        {
            jsonobject.put("req_time", f);
        }
    }

    private void k(JSONObject jsonobject)
        throws Exception
    {
        if (g != null)
        {
            jsonobject.put("device_model", g);
        }
        if (h != null)
        {
            jsonobject.put("os", h);
        }
        if (i != null)
        {
            jsonobject.put("os_version", i);
        }
        if (j != null)
        {
            jsonobject.put("resolution", j);
        }
        if (k != null)
        {
            jsonobject.put("cpu", k);
        }
        if (l != null)
        {
            jsonobject.put("gpu_vender", l);
        }
        if (m != null)
        {
            jsonobject.put("gpu_vender", m);
        }
        if (n != null)
        {
            jsonobject.put("device_board", n);
        }
        if (o != null)
        {
            jsonobject.put("device_brand", o);
        }
        if (p > 0L)
        {
            jsonobject.put("device_manutime", p);
        }
        if (q != null)
        {
            jsonobject.put("device_manufacturer", q);
        }
        if (r != null)
        {
            jsonobject.put("device_manuid", r);
        }
        if (s != null)
        {
            jsonobject.put("device_name", s);
        }
    }

    private void l(JSONObject jsonobject)
        throws Exception
    {
        if (t != null)
        {
            jsonobject.put("app_version", t);
        }
        if (u != null)
        {
            jsonobject.put("version_code", u);
        }
        if (v != null)
        {
            jsonobject.put("package_name", v);
        }
    }

    private void m(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("sdk_type", w);
        jsonobject.put("sdk_version", x);
    }

    private void n(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("timezone", y);
        if (z != null)
        {
            jsonobject.put("country", z);
        }
        if (A != null)
        {
            jsonobject.put("language", A);
        }
    }

    private void o(JSONObject jsonobject)
        throws Exception
    {
        if (B != null)
        {
            jsonobject.put("access", B);
        }
        if (C != null)
        {
            jsonobject.put("access_subtype", C);
        }
        if (D != null)
        {
            jsonobject.put("carrier", D);
        }
    }

    private void p(JSONObject jsonobject)
        throws Exception
    {
        if (E != null)
        {
            jsonobject.put("wrapper_type", E);
        }
        if (F != null)
        {
            jsonobject.put("wrapper_version", F);
        }
    }

    public void a(Context context)
    {
        g = Build.MODEL;
        h = "Android";
        i = android.os.Build.VERSION.RELEASE;
        j = com.umeng.common.b.s(context);
        k = com.umeng.common.b.a();
        n = Build.BOARD;
        o = Build.BRAND;
        p = Build.TIME;
        q = Build.MANUFACTURER;
        r = Build.ID;
        s = Build.DEVICE;
    }

    public transient void a(Context context, String as[])
    {
        if (as != null && as.length == 2)
        {
            a = as[0];
            b = as[1];
        }
        if (a == null)
        {
            a = com.umeng.common.b.q(context);
        }
        if (b == null)
        {
            b = com.umeng.common.b.u(context);
        }
        c = com.umeng.common.b.g(context);
        d = com.umeng.common.b.h(context);
        e = com.umeng.common.b.r(context);
        context = com.umeng.analytics.j.c(context);
        if (context != null)
        {
            f = context.getLong("req_time", 0L);
        }
    }

    public void a(JSONObject jsonobject)
        throws Exception
    {
        if (jsonobject == null)
        {
            return;
        } else
        {
            c(jsonobject);
            d(jsonobject);
            e(jsonobject);
            f(jsonobject);
            g(jsonobject);
            h(jsonobject);
            i(jsonobject);
            return;
        }
    }

    public boolean a()
    {
        if (a == null)
        {
            Log.e("MobclickAgent", "missing appkey ");
            return false;
        }
        if (c == null || d == null)
        {
            Log.e("MobclickAgent", "missing device id");
            return false;
        } else
        {
            return true;
        }
    }

    public void b(Context context)
    {
        t = com.umeng.common.b.e(context);
        u = com.umeng.common.b.d(context);
        v = com.umeng.common.b.v(context);
    }

    public transient void b(Context context, String as[])
    {
        a(context, as);
        a(context);
        b(context);
        c(context);
        d(context);
        e(context);
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        j(jsonobject);
        k(jsonobject);
        l(jsonobject);
        m(jsonobject);
        n(jsonobject);
        o(jsonobject);
        p(jsonobject);
    }

    public boolean b()
    {
        return a != null && c != null;
    }

    public void c(Context context)
    {
        w = "Android";
        x = "4.6.3";
    }

    public void d(Context context)
    {
        y = com.umeng.common.b.o(context);
        context = com.umeng.common.b.p(context);
        z = context[0];
        A = context[1];
    }

    public void e(Context context)
    {
        String as[] = com.umeng.common.b.k(context);
        B = as[0];
        C = as[1];
        D = com.umeng.common.b.t(context);
    }
}
