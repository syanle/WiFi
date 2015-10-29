// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.c;

import android.app.NotificationManager;
import android.content.Context;
import java.io.File;
import net.youmi.android.AdManager;
import net.youmi.android.a.a.a.b.d;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.a.g.a.h;
import net.youmi.android.a.a.g.f.a.a;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;
import net.youmi.android.a.b.k.f;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.b.k.o;

// Referenced classes of package net.youmi.android.a.a.g.c:
//            j, l, k, d, 
//            a

public class i extends a
{

    private static int c = 0;
    private String a;
    private Context b;
    private int d;

    public i(String s)
    {
        int i1 = c + 1;
        c = i1;
        d = i1;
        try
        {
            a = e.b(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }

    static Context a(i i1)
    {
        return i1.b;
    }

    private void a()
    {
        a(net.youmi.android.a.a.h.a.E(), 0);
    }

    private void a(String s)
    {
        a(s, 3000);
    }

    private void a(String s, int i1)
    {
        int j1;
        int k1;
        boolean flag;
        try
        {
            flag = e.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (flag)
        {
            return;
        }
        j1 = 0;
        k1 = f.a(b).b();
        j1 = (int)((double)k1 * 0.90000000000000002D);
_L2:
        m.a().a(new j(this, s, j1), i1);
        return;
        Throwable throwable;
        throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(Context context)
    {
        System.currentTimeMillis();
        if (a == null) goto _L2; else goto _L1
_L1:
        if (context == null)
        {
            return;
        }
        b = context.getApplicationContext();
        if (b == null) goto _L2; else goto _L3
_L3:
        net.youmi.android.a.a.a.b.a a1 = net.youmi.android.a.a.a.b.d.a(b).a(b, a, net.youmi.android.a.a.g.c.l.b());
        if (a1 != null) goto _L5; else goto _L4
_L4:
        Object obj;
        String s;
        String s1;
        boolean flag;
        boolean flag1;
        int i1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        try
        {
            if ("1".equals(net.youmi.android.a.b.c.f.a(b, g.a((new StringBuilder()).append("ydic").append(a).toString()), "0")))
            {
                a();
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        finally
        {
            throw context;
        }
          goto _L2
_L5:
        flag2 = true;
        flag3 = false;
        flag4 = true;
        obj = net.youmi.android.a.a.g.a.a.a.a(b).a(g.a(a1.d()));
        if (obj != null) goto _L7; else goto _L6
_L6:
        flag = false;
        i1 = ((flag3) ? 1 : 0);
        flag1 = flag4;
_L24:
        flag2 = flag1;
        flag1 = flag;
        flag = i1;
_L18:
        obj = a1.j();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        if (!((b) (obj)).e())
        {
            break MISSING_BLOCK_LABEL_323;
        }
        long l1 = System.currentTimeMillis();
        s = net.youmi.android.a.a.g.d.a.a(b, ((b) (obj)), 3);
        net.youmi.android.a.a.g.d.a.d d1 = new net.youmi.android.a.a.g.d.a.d(l1, s, 3, l1 + 0x1499700L);
        d1.h = a1.d();
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(b, d1));
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        s1 = g.a(a1.d());
        net.youmi.android.a.b.c.f.a(b, h.b(s1), net.youmi.android.a.c.a.a.a(((b) (obj)).f(), h.b(s1)), 0x1499700L);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        if (a1.b() > 0L)
        {
            net.youmi.android.a.b.c.f.a(b, h.a(s1), net.youmi.android.a.c.a.a.a(s, h.a(s1)), 0x1499700L);
        }
        Object obj1;
        Throwable throwable;
        int j1;
        boolean flag5;
        try
        {
            if (a1.f() != null)
            {
                obj = new File(a1.f());
                if (((File) (obj)).exists())
                {
                    ((File) (obj)).delete();
                }
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        try
        {
            if (a1.e())
            {
                net.youmi.android.a.b.k.h.c(b, a);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        if (a1.g() == null || !flag2)
        {
            break MISSING_BLOCK_LABEL_398;
        }
        try
        {
            a(a1.g());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        System.currentTimeMillis();
        obj = null;
        obj1 = a1.i();
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        if (!(obj1 instanceof k)) goto _L9; else goto _L10
_L10:
        obj1 = (k)obj1;
        obj = obj1;
_L22:
        i1 = 0;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_441;
        }
        i1 = ((k) (obj)).b();
        if (!AdManager.isInstallationSuccessTipsDisplayOnNotification()) goto _L12; else goto _L11
_L11:
        net.youmi.android.a.a.g.c.d.a(b, i1, a);
_L19:
        System.currentTimeMillis();
        i1 = 0;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_477;
        }
        i1 = ((k) (obj)).c();
        net.youmi.android.a.a.g.c.a.a(b).a(i1);
        net.youmi.android.a.a.g.c.a.a(b).b(i1);
_L21:
        if (!a1.h()) goto _L14; else goto _L13
_L13:
        context = a1.c();
        if (context == null) goto _L16; else goto _L15
_L15:
        net.youmi.android.a.b.k.h.a(b, context, 0x10000000);
_L20:
        if (!flag1 || flag) goto _L14; else goto _L17
_L17:
        try
        {
            if (a1.b() > 0L)
            {
                context = new net.youmi.android.a.a.g.a.b.b();
                context.b(g.a(a1.d()));
                context.a(a1.a());
                context.c(a1.b());
                context.a(System.currentTimeMillis());
                net.youmi.android.a.a.g.a.g.a(b, context);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
_L14:
        try
        {
            flag5 = net.youmi.android.a.a.a.b.d.a(b).a(a);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (flag5)
        {
            return;
        }
          goto _L2
_L7:
        flag1 = flag4;
        i1 = ((flag3) ? 1 : 0);
        flag = flag2;
        if (((net.youmi.android.a.a.g.a.b.a) (obj)).d() != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = ((net.youmi.android.a.a.g.a.b.a) (obj)).e();
        flag1 = flag4;
        i1 = ((flag3) ? 1 : 0);
        flag = flag2;
        if (j1 == 1)
        {
            i1 = 1;
            flag1 = false;
            flag = flag2;
        }
        continue; /* Loop/switch isn't completed */
        obj;
        flag2 = true;
        flag = false;
        flag1 = true;
          goto _L18
_L12:
        context = o.a(context);
        try
        {
            context.cancel(i1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
          goto _L19
_L16:
        net.youmi.android.a.b.k.h.b(b, a);
          goto _L20
        context;
          goto _L21
        context;
          goto _L19
        throwable;
          goto _L22
_L9:
        obj = null;
          goto _L22
_L2:
        return;
        if (true) goto _L24; else goto _L23
_L23:
    }

}
