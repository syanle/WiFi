// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.res.Resources;

// Referenced classes of package u.aly:
//            br

public class bs
{

    private static final String a = u/aly/bs.getName();
    private static bs b = null;
    private Resources c;
    private final String d;
    private final String e = "drawable";
    private final String f = "id";
    private final String g = "layout";
    private final String h = "anim";
    private final String i = "style";
    private final String j = "string";
    private final String k = "array";

    private bs(Context context)
    {
        c = context.getResources();
        d = context.getPackageName();
    }

    private int a(String s, String s1)
    {
        int i1 = c.getIdentifier(s, s1, d);
        int l = i1;
        if (i1 == 0)
        {
            br.b(a, (new StringBuilder("getRes(")).append(s1).append("/ ").append(s).append(")").toString());
            br.b(a, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
            l = 0;
        }
        return l;
    }

    public static bs a(Context context)
    {
        u/aly/bs;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new bs(context.getApplicationContext());
        }
        context = b;
        u/aly/bs;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public int a(String s)
    {
        return a(s, "anim");
    }

    public int b(String s)
    {
        return a(s, "id");
    }

    public int c(String s)
    {
        return a(s, "drawable");
    }

    public int d(String s)
    {
        return a(s, "layout");
    }

    public int e(String s)
    {
        return a(s, "style");
    }

    public int f(String s)
    {
        return a(s, "string");
    }

    public int g(String s)
    {
        return a(s, "array");
    }

}
