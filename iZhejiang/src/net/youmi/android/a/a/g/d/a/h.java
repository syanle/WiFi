// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.d.a;

import android.content.Context;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.a.g.d.a;

// Referenced classes of package net.youmi.android.a.a.g.d.a:
//            d, b, a, e

public class h
{

    private Context a;
    private b b;
    private int c[];
    private long d[];
    private String e[];
    private long f[];
    private d g;

    public h(Context context, b b1, int ai[], long al[], String as[], long al1[])
    {
        a = context.getApplicationContext();
        b = b1;
        c = ai;
        d = al;
        e = as;
        f = al1;
    }

    public h(Context context, d d1)
    {
        a = context.getApplicationContext();
        g = d1;
    }

    public void a()
    {
        if (g == null) goto _L2; else goto _L1
_L1:
        if (g.a());
        net.youmi.android.a.a.g.d.a.b.a(a).a(g);
        net.youmi.android.a.a.g.d.a.a.a(a).a(g);
_L10:
        net.youmi.android.a.a.g.d.a.e.a(a).a();
        return;
_L2:
        if (c == null) goto _L4; else goto _L3
_L3:
        if (d != null && d.length == c.length) goto _L6; else goto _L5
_L5:
        d = null;
        d = new long[c.length];
        int i = 0;
_L7:
        if (i >= c.length)
        {
            break; /* Loop/switch isn't completed */
        }
        d[i] = 0x1499700L;
        i++;
        if (true) goto _L7; else goto _L6
_L8:
        Object obj;
        Throwable throwable;
        Throwable throwable1;
        int j;
        int k;
        long l;
        long l1;
        boolean flag;
        for (; j >= c.length; j++)
        {
            continue; /* Loop/switch isn't completed */
        }

        k = c[j];
        l = d[j];
        obj = net.youmi.android.a.a.g.d.a.a(a, b, k);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        try
        {
            l1 = System.currentTimeMillis();
            obj = new d(l1, ((String) (obj)), k, l + l1);
            flag = ((d) (obj)).a();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        try
        {
            if (e != null)
            {
                obj.f = e[j];
            }
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable1) { }
        try
        {
            if (f != null && f[j] > 0L)
            {
                obj.g = f[j];
            }
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable1) { }
        net.youmi.android.a.a.g.d.a.b.a(a).a(((d) (obj)));
        net.youmi.android.a.a.g.d.a.a.a(a).a(((d) (obj)));
        break MISSING_BLOCK_LABEL_296;
_L4:
        return;
_L6:
        j = 0;
          goto _L8
        if (true) goto _L10; else goto _L9
_L9:
    }
}
