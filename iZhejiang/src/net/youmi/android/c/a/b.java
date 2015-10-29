// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.Context;
import android.util.Log;
import net.youmi.android.a.a.g.d.a;
import net.youmi.android.a.b.d.j;
import net.youmi.android.a.c.d.c;
import net.youmi.android.banner.AdSize;
import org.json.JSONArray;

// Referenced classes of package net.youmi.android.c.a:
//            c

public class b
{

    public static final String a = net.youmi.android.c.a.c.j();
    public static final String b = net.youmi.android.c.a.c.k();
    public static final String c = net.youmi.android.c.a.c.n();
    public static final String d = net.youmi.android.c.a.c.p();
    public static final String e = net.youmi.android.c.a.c.q();
    private static final String f = net.youmi.android.c.a.c.h();
    private static final String g = net.youmi.android.c.a.c.i();
    private static final String h = net.youmi.android.c.a.c.l();
    private static final String i = net.youmi.android.c.a.c.m();
    private static final String j = net.youmi.android.c.a.c.o();

    public static final String a(Context context, String s, boolean flag)
    {
        net.youmi.android.a.b.i.a.b b1;
        try
        {
            s = net.youmi.android.a.a.g.d.a.a(context, g, s, 500);
            net.youmi.android.a.b.e.b.a((new StringBuilder()).append("request spot url:").append(s).toString(), new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.b.e.b.b(context);
            return null;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        Log.d("SDKChecking", (new StringBuilder()).append("your request url is :").append(s).toString());
        b1 = new net.youmi.android.a.b.i.a.b();
        b1.a(500);
        b1.a("st");
        b1.b("a_st_req");
        context = net.youmi.android.a.c.d.c.a(context, s, b1);
_L2:
        net.youmi.android.a.b.e.b.a("request spot result:%s", new Object[] {
            context
        });
        return context;
        context;
        net.youmi.android.a.c.b.a.a("Throw", context);
        context = "";
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String a(Context context, net.youmi.android.a.a.e.g.b b1)
    {
        Object obj;
        int k;
        obj = null;
        k = 0;
        Object obj1 = net.youmi.android.a.a.g.d.a.a(context, b1);
        String s = "";
        b1 = s;
        try
        {
            obj = new net.youmi.android.a.b.i.a.b();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return b1;
        }
        b1 = s;
        ((net.youmi.android.a.b.i.a.b) (obj)).a(500);
        b1 = s;
        ((net.youmi.android.a.b.i.a.b) (obj)).a("st");
        b1 = s;
        ((net.youmi.android.a.b.i.a.b) (obj)).b("a_st_shw_clk");
        b1 = s;
        s = net.youmi.android.a.c.d.c.a(context, ((String) (obj1)), ((net.youmi.android.a.b.i.a.b) (obj)));
        b1 = s;
        obj1 = net.youmi.android.a.b.b.b.a(s);
        obj = s;
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        b1 = s;
        obj1 = net.youmi.android.a.b.b.b.a(((org.json.JSONObject) (obj1)), "pings", null);
        obj = s;
        if (obj1 == null) goto _L2; else goto _L3
_L3:
        obj = s;
        b1 = s;
        if (((JSONArray) (obj1)).length() == 0) goto _L2; else goto _L4
_L4:
        obj = s;
        b1 = s;
        if (k >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        b1 = s;
        net.youmi.android.a.c.d.c.a(context, net.youmi.android.a.b.b.b.a(((JSONArray) (obj1)), 0, ""), new net.youmi.android.a.b.i.a.b());
        k++;
        if (true) goto _L4; else goto _L2
        context;
        net.youmi.android.a.b.e.b.b(context);
_L2:
        return ((String) (obj));
    }

    public static final String a(Context context, AdSize adsize)
    {
        net.youmi.android.a.b.i.a.b b1;
        try
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append((new StringBuilder()).append("h=").append(adsize.getAdHeight()).toString());
            stringbuilder.append((new StringBuilder()).append("&w=").append(adsize.getAdWidth()).toString());
            adsize = net.youmi.android.a.b.d.j.a(stringbuilder.toString());
            adsize = net.youmi.android.a.a.g.d.a.a(context, f, adsize, 500, "00001");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            net.youmi.android.a.b.e.b.b(context);
            return null;
        }
        b1 = new net.youmi.android.a.b.i.a.b();
        b1.a(500);
        b1.a("br");
        b1.b("a_br_req");
        context = net.youmi.android.a.c.d.c.a(context, adsize, b1);
_L2:
        net.youmi.android.a.b.e.b.a("request spot result:%s", new Object[] {
            context
        });
        return context;
        context;
        net.youmi.android.a.c.b.a.a("Throw", context);
        context = "";
        if (true) goto _L2; else goto _L1
_L1:
    }

}
