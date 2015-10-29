// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.c.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.a.g.a.f;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.b.i.a.b;
import net.youmi.android.a.c.d.c;
import net.youmi.android.offers.OffersBrowserConfig;
import net.youmi.android.offers.OffersManager;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
    implements Runnable
{

    private Context a;
    private long b;
    private String c;
    private String d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private String k;
    private List l;
    private List m;
    private List n;
    private List o;

    public a(Context context, String s, long l1, String s1, int i1, int j1, 
            int k1, int i2, int j2, int k2)
    {
        a = context;
        d = s;
        b = l1;
        c = s1;
        e = i1;
        f = j1;
        g = k1;
        h = i2;
        i = j2;
        j = k2;
    }

    private String a(String s)
    {
        b b1 = new b();
        b1.a("wl");
        String s1;
        if (e > 1)
        {
            s1 = "a_w_np";
        } else
        {
            s1 = "a_w_req";
        }
        b1.b(s1);
        b1.a(500);
        return net.youmi.android.a.c.d.c.a(a, s, b1);
    }

    private void a(int i1, String s)
    {
        switch (i1)
        {
        default:
            return;

        case 0: // '\0'
            try
            {
                StringBuilder stringbuilder = new StringBuilder(s.length() + 50);
                stringbuilder.append("javascript:").append(c).append("(").append(b).append(",").append(i1).append(",").append(s).append(")");
                net.youmi.android.a.a.e.f.a.a().a(d, stringbuilder.toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return;
            }

        case 1: // '\001'
        case 2: // '\002'
            break;
        }
        s = new StringBuilder(50);
        s.append("javascript:").append(c).append("(").append(b).append(",").append(i1).append(")");
        net.youmi.android.a.a.e.f.a.a().a(d, s.toString());
        return;
    }

    private boolean a()
    {
        while (e < 1 || f < 1 || g > 4 && g < 1 || h != -1 && h != 0 && h != 1 || i != -1 && i != 1 && i != 2 || j != -1 && j != 1 && j != 2) 
        {
            return false;
        }
        return true;
    }

    private String b()
    {
        if (!a())
        {
            return null;
        }
        Object obj;
        try
        {
            obj = new StringBuffer(512);
            ((StringBuffer) (obj)).append("p=");
            ((StringBuffer) (obj)).append(e);
            ((StringBuffer) (obj)).append("&n=");
            ((StringBuffer) (obj)).append(f);
            ((StringBuffer) (obj)).append("&rtype=");
            ((StringBuffer) (obj)).append(g);
            if (h != -1)
            {
                ((StringBuffer) (obj)).append("&nshw=");
                ((StringBuffer) (obj)).append(h);
            }
            if (i != -1)
            {
                ((StringBuffer) (obj)).append("&dtype=");
                ((StringBuffer) (obj)).append(i);
            }
            if (j != -1)
            {
                ((StringBuffer) (obj)).append("&sp=");
                ((StringBuffer) (obj)).append(j);
            }
            obj = net.youmi.android.a.b.d.j.a(((StringBuffer) (obj)).toString());
            obj = net.youmi.android.a.a.g.d.a.a(a, net.youmi.android.offers.b.b.j(), ((String) (obj)), 500);
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return ((String) (obj));
    }

    private void c()
    {
        try
        {
            if (l != null && l.size() > 0)
            {
                net.youmi.android.a.a.g.a.a.a.a(a).a(l);
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    private boolean d()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        net.youmi.android.a.a.g.a.b.a a1;
        String s;
        net.youmi.android.a.a.g.a.a.a a2;
        a1 = null;
        s = null;
        a2 = null;
        obj = null;
        obj1 = a1;
        obj3 = s;
        obj2 = a2;
        if (l == null) goto _L2; else goto _L1
_L1:
        obj1 = a1;
        obj3 = s;
        obj2 = a2;
        if (l.size() <= 0) goto _L2; else goto _L3
_L3:
        int i1 = 0;
_L22:
        obj1 = obj;
        obj3 = obj;
        obj2 = obj;
        if (i1 >= l.size()) goto _L2; else goto _L4
_L4:
        obj1 = obj;
        obj2 = obj;
        a1 = (net.youmi.android.a.a.g.a.b.a)l.get(i1);
        obj1 = obj;
        obj2 = obj;
        s = a1.a();
        obj1 = obj;
        obj2 = obj;
        obj3 = (String)m.get(i1);
        obj1 = obj;
        obj2 = obj;
        if (n == null) goto _L6; else goto _L5
_L5:
        obj1 = obj;
        obj2 = obj;
        if (n.size() <= 0) goto _L6; else goto _L7
_L7:
        obj1 = obj;
        obj2 = obj;
        if (!n.contains(obj3)) goto _L6; else goto _L8
_L6:
        obj1 = obj;
        obj2 = obj;
        if (!net.youmi.android.a.b.k.j.a(a, ((String) (obj3)))) goto _L8; else goto _L9
_L9:
        obj1 = obj;
        obj2 = obj;
        if (a1.d() != 0) goto _L8; else goto _L10
_L10:
        obj1 = obj;
        obj2 = obj;
        a2 = net.youmi.android.a.a.g.a.a.a.a(a);
        obj1 = obj;
        obj2 = obj;
        net.youmi.android.a.a.g.a.b.a a3 = a2.a(s);
        if (a3 == null) goto _L8; else goto _L11
_L11:
        obj1 = obj;
        obj2 = obj;
        if (a3.d() != 0) goto _L8; else goto _L12
_L12:
        obj1 = obj;
        obj2 = obj;
        if (o != null)
        {
            break MISSING_BLOCK_LABEL_270;
        }
        obj1 = obj;
        obj2 = obj;
        o = new ArrayList();
        obj1 = obj;
        obj2 = obj;
        a3 = new net.youmi.android.a.a.g.a.b.a();
        obj1 = obj;
        obj2 = obj;
        a3.a(s);
        obj1 = obj;
        obj2 = obj;
        a3.b(1);
        obj1 = obj;
        obj2 = obj;
        a3.c(1);
        obj1 = obj;
        obj2 = obj;
        net.youmi.android.a.a.g.a.f.a().a(s, 3, 1);
        obj1 = obj;
        obj2 = obj;
        net.youmi.android.a.a.g.a.f.a().a(s, 13, 1);
        obj1 = obj;
        obj2 = obj;
        if (a2.b(a1)) goto _L14; else goto _L13
_L13:
        obj1 = obj;
        obj2 = obj;
        if (!a2.a(a1))
        {
            break MISSING_BLOCK_LABEL_387;
        }
        obj1 = obj;
        obj2 = obj;
        o.add(s);
_L15:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_403;
        }
        obj1 = obj;
        obj2 = obj;
        obj = new ArrayList();
        ((List) (obj)).add(obj3);
          goto _L8
        obj1;
_L16:
        Exception exception;
        if (obj != null)
        {
            try
            {
                if (((List) (obj)).size() > 0)
                {
                    net.youmi.android.a.a.g.e.c.a(a, ((List) (obj)));
                }
            }
            catch (Throwable throwable)
            {
                return false;
            }
        }
_L18:
        return false;
_L14:
        obj1 = obj;
        obj2 = obj;
        o.add(s);
          goto _L15
        obj;
        obj = obj1;
          goto _L16
_L2:
        if (obj3 == null) goto _L18; else goto _L17
_L17:
        if (((List) (obj3)).size() <= 0) goto _L18; else goto _L19
_L19:
        net.youmi.android.a.a.g.e.c.a(a, ((List) (obj3)));
        return false;
        obj;
        return false;
        obj;
        obj1 = obj2;
_L20:
        if (obj1 != null)
        {
            try
            {
                if (((List) (obj1)).size() > 0)
                {
                    net.youmi.android.a.a.g.e.c.a(a, ((List) (obj1)));
                }
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1) { }
        }
        throw obj;
        exception;
        obj1 = obj;
        obj = exception;
        if (true) goto _L20; else goto _L8
_L8:
        i1++;
        if (true) goto _L22; else goto _L21
_L21:
    }

    private void e()
    {
        int i1 = 0;
_L2:
        net.youmi.android.a.a.g.a.b.a a1;
        if (i1 >= l.size())
        {
            break MISSING_BLOCK_LABEL_178;
        }
        a1 = (net.youmi.android.a.a.g.a.b.a)l.get(i1);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        String s;
        s = a1.a();
        if (o != null && o.contains(s))
        {
            break MISSING_BLOCK_LABEL_168;
        }
        net.youmi.android.a.a.g.a.b.a a2 = net.youmi.android.a.a.g.a.a.a.a(a).a(s);
        if (a2 != null)
        {
            try
            {
                if (a1.d() == 1 && a2.d() != 1)
                {
                    a2.b(1);
                    net.youmi.android.a.a.g.a.f.a().a(s, 3, 1);
                }
                if (a1.e() == 1 && a2.e() != 1)
                {
                    a2.c(1);
                    net.youmi.android.a.a.g.a.f.a().a(s, 13, 1);
                }
                net.youmi.android.a.a.g.a.a.a.a(a).b(a2);
                break MISSING_BLOCK_LABEL_168;
            }
            catch (Throwable throwable) { }
            break MISSING_BLOCK_LABEL_178;
        }
        net.youmi.android.a.a.g.a.a.a.a(a).a(a1);
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String f()
    {
        JSONObject jsonobject;
        Object obj;
        jsonobject = net.youmi.android.a.b.b.b.a(k);
        obj = net.youmi.android.a.b.b.b.a(jsonobject, "d", null);
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = net.youmi.android.a.b.b.b.a(((JSONObject) (obj)), "ad", null);
        if (obj == null) goto _L2; else goto _L3
_L3:
        int k1 = 0;
_L7:
        if (k1 >= ((JSONArray) (obj)).length()) goto _L2; else goto _L4
_L4:
        JSONObject jsonobject1;
        Object obj1;
        int j2;
        jsonobject1 = ((JSONArray) (obj)).getJSONObject(k1);
        j2 = net.youmi.android.a.b.b.b.a(jsonobject1, "wadid", 0);
        obj1 = net.youmi.android.a.b.b.b.a(jsonobject1, "pn", null);
        if (obj1 != null) goto _L6; else goto _L5
_L5:
        k1++;
          goto _L7
_L6:
        obj1 = a.getPackageManager().getPackageInfo(((String) (obj1)), 0);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_289;
        }
        int j1 = ((PackageInfo) (obj1)).versionCode;
        int i1 = 1;
_L13:
        int l1 = j1;
        j1 = i1;
        i1 = l1;
_L10:
        obj1 = net.youmi.android.a.a.g.a.a.a.a(a).a(j2);
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        int i2;
        j2 = ((net.youmi.android.a.a.g.a.b.a) (obj1)).d();
        i2 = ((net.youmi.android.a.a.g.a.b.a) (obj1)).e();
_L12:
        obj1 = new JSONObject();
        Throwable throwable;
        Throwable throwable1;
        int k2;
        if (j1 != 0)
        {
            k2 = 1;
        } else
        {
            k2 = 0;
        }
        ((JSONObject) (obj1)).put("a", k2);
        ((JSONObject) (obj1)).put("b", j2);
        ((JSONObject) (obj1)).put("c", i2);
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        ((JSONObject) (obj1)).put("d", i1);
        jsonobject1.put("localr", obj1);
          goto _L5
        throwable;
          goto _L5
        throwable1;
        i1 = 0;
_L11:
        i2 = 0;
        j1 = i1;
        i1 = i2;
          goto _L10
_L2:
        return jsonobject.toString();
        throwable1;
        i1 = 1;
          goto _L11
_L9:
        i2 = 0;
        j2 = 0;
          goto _L12
        j1 = 0;
        i1 = 0;
          goto _L13
    }

    public void run()
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        int i1;
        boolean flag;
        boolean flag1;
        obj1 = null;
        obj2 = null;
        obj = null;
        obj3 = null;
        flag1 = false;
        flag = false;
        i1 = 2;
        Object obj4 = b();
        if (!net.youmi.android.a.b.b.e.a(((String) (obj4)))) goto _L2; else goto _L1
_L1:
        net.youmi.android.a.c.b.a.b("request url invalid, please contract us");
        obj = null;
_L3:
        a(i1, ((String) (obj)));
        return;
_L2:
        boolean flag2;
        k = a(((String) (obj4)));
        flag2 = net.youmi.android.a.b.b.e.a(k);
label0:
        {
            if (!flag2)
            {
                break label0;
            }
            i1 = 1;
            obj = null;
        }
          goto _L3
        obj1 = obj3;
        obj2 = k;
        obj1 = obj2;
        obj = obj2;
        obj4 = net.youmi.android.a.b.b.b.a(net.youmi.android.a.b.b.b.a(k), "d", null);
        if (obj4 != null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        obj1 = obj2;
        obj = obj2;
        net.youmi.android.a.c.b.a.b("can't get data of Ad! error key : d");
        a(0, ((String) (obj2)));
        return;
        obj1 = obj2;
        obj = obj2;
        obj3 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj4)), "u", "");
        obj1 = obj2;
        obj = obj2;
        if (!((String) (obj3)).equals(""))
        {
            break MISSING_BLOCK_LABEL_170;
        }
        obj1 = obj2;
        obj = obj2;
        obj3 = net.youmi.android.a.a.h.a.I();
        obj1 = obj2;
        obj = obj2;
        if (net.youmi.android.a.b.b.b.a(((JSONObject) (obj4)), "ts", 0) == 0)
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        obj1 = obj2;
        obj = obj2;
        net.youmi.android.a.a.j.a.b.a().a(net.youmi.android.a.a.h.a.J());
        obj1 = obj2;
        obj = obj2;
        if (!OffersManager.isUsingServerCallBack()) goto _L5; else goto _L4
_L4:
        obj1 = obj2;
        obj = obj2;
        net.youmi.android.a.a.j.a.b.a().c(8);
_L9:
        obj1 = obj2;
        obj = obj2;
        obj3 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj4)), "ad", null);
        if (obj3 != null) goto _L7; else goto _L6
_L6:
        obj1 = obj2;
        obj = obj2;
        net.youmi.android.a.c.b.a.b("can't get data of Ad! error key : ad");
        a(0, ((String) (obj2)));
        return;
_L5:
        obj1 = obj2;
        obj = obj2;
        net.youmi.android.a.a.j.a.b.a().c(0);
        obj1 = obj2;
        obj = obj2;
        if (OffersBrowserConfig.isUsingSdkPointsUnitApi) goto _L9; else goto _L8
_L8:
        obj1 = obj2;
        obj = obj2;
        OffersBrowserConfig.setPointsUnit(((String) (obj3)));
          goto _L9
        obj;
        i1 = ((flag) ? 1 : 0);
_L12:
        a(i1, ((String) (obj1)));
        return;
_L7:
        obj1 = obj2;
        obj = obj2;
        l = new ArrayList();
        obj1 = obj2;
        obj = obj2;
        m = new ArrayList();
        i1 = 0;
_L13:
        obj1 = obj2;
        obj = obj2;
        int j1 = ((JSONArray) (obj3)).length();
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_653;
        }
        obj = obj2;
        obj1 = ((JSONArray) (obj3)).getJSONObject(i1);
        obj = obj2;
        j1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "wadid", 0);
        obj = obj2;
        obj4 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "pn", null);
        obj = obj2;
        String s = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "name", null);
        if (obj4 == null)
        {
            obj = obj2;
            String s1;
            net.youmi.android.a.a.g.a.b.a a1;
            int k1;
            int l1;
            int i2;
            try
            {
                net.youmi.android.a.c.b.a.b("ad id : %d has some problem, please contact us.", new Object[] {
                    Integer.valueOf(j1)
                });
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
            finally
            {
                i1 = ((flag1) ? 1 : 0);
            }
            break MISSING_BLOCK_LABEL_768;
        }
        obj = obj2;
        s1 = net.youmi.android.a.b.d.g.a(((String) (obj4)));
        obj = obj2;
        k1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "isr", 0);
        obj = obj2;
        l1 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "er", 0);
        obj = obj2;
        i2 = net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "at", 0);
        obj = obj2;
        a1 = new net.youmi.android.a.a.g.a.b.a();
        obj = obj2;
        a1.a(s1);
        obj = obj2;
        a1.a(j1);
        obj = obj2;
        a1.b(k1);
        obj = obj2;
        a1.c(l1);
        obj = obj2;
        a1.d(i2);
        obj = obj2;
        a1.b(s);
        obj = obj2;
        l.add(a1);
        obj = obj2;
        m.add(obj4);
        obj = obj2;
        if (net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "urlt", 0) != 1)
        {
            break MISSING_BLOCK_LABEL_768;
        }
        obj = obj2;
        if (net.youmi.android.a.b.b.e.a(net.youmi.android.a.b.b.b.a(((JSONObject) (obj1)), "url", null)))
        {
            break MISSING_BLOCK_LABEL_768;
        }
        obj = obj2;
        if (n != null)
        {
            break MISSING_BLOCK_LABEL_632;
        }
        obj = obj2;
        n = new ArrayList();
        obj = obj2;
        n.add(obj4);
        break MISSING_BLOCK_LABEL_768;
        obj1 = obj2;
        obj = obj2;
        if (l == null)
        {
            break MISSING_BLOCK_LABEL_684;
        }
        obj1 = obj2;
        obj = obj2;
        i1 = l.size();
        if (i1 > 0)
        {
            break MISSING_BLOCK_LABEL_691;
        }
        a(0, ((String) (obj2)));
        return;
        obj1 = obj2;
        obj = obj2;
        c();
        obj1 = obj2;
        obj = obj2;
        d();
        obj1 = obj2;
        obj = obj2;
        e();
        obj1 = obj2;
        obj = obj2;
        obj2 = f();
        obj = obj2;
        i1 = 0;
          goto _L3
        obj;
        i1 = 2;
        obj1 = obj;
_L11:
        a(i1, ((String) (obj2)));
        throw obj1;
        obj2 = obj;
        if (true) goto _L11; else goto _L10
_L10:
        Throwable throwable;
        throwable;
        i1 = 2;
          goto _L12
        i1++;
          goto _L13
    }
}
