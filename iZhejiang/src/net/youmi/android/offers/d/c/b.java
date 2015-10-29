// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.c;

import android.content.Context;
import java.util.Locale;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.a.i.a.b.a;
import net.youmi.android.a.a.i.a.g;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.offers.d.c:
//            a

public class b
    implements f, a
{

    private g a;
    private c b;

    public b(Context context)
    {
        c c1 = new c(3, 500);
        c1.b(1);
        Object obj1 = (new StringBuilder()).append(net.youmi.android.offers.b.b.g()).append("?type=").append(b()).append("&model=").append(0).toString();
        Object obj = obj1;
        if (Locale.getDefault().getCountry() != null)
        {
            obj = (new StringBuilder()).append(((String) (obj1))).append("&lang=").append(Locale.getDefault().getCountry().toLowerCase()).toString();
        }
        c1.e(((String) (obj)));
        b = c1;
        obj = new net.youmi.android.a.a.e.a.b.a(context, this, c1);
        obj1 = new net.youmi.android.a.a.i.a.a.c();
        ((net.youmi.android.a.a.i.a.a.c) (obj1)).a(1);
        ((net.youmi.android.a.a.i.a.a.c) (obj1)).a(((net.youmi.android.a.a.e.a.b.h) (obj)));
        ((net.youmi.android.a.a.i.a.a.c) (obj1)).a(this);
        a = new g(context, ((net.youmi.android.a.a.i.a.a.c) (obj1)));
        net.youmi.android.a.a.e.f.a.a().a(a);
    }

    private static int b()
    {
        return 33;
    }

    public void a()
    {
        try
        {
            String s = b.o();
            a.loadUrl(s);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public boolean a(int i, int j, float f1)
    {
        return false;
    }

    public boolean a(Runnable runnable)
    {
        boolean flag;
        try
        {
            flag = net.youmi.android.a.b.k.m.a().a(runnable);
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return false;
        }
        return flag;
    }

    public boolean a(String s, byte abyte0[])
    {
        if (a == null || s == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        a.postUrl(s, abyte0);
        return true;
        s;
        return false;
    }

    public boolean b(String s)
    {
        if (a == null || s == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        a.loadUrl(s);
        return true;
        s;
        return false;
    }

    public net.youmi.android.a.a.e.a f()
    {
        return null;
    }

    public boolean l()
    {
        net.youmi.android.offers.d.c.a.a();
        return true;
    }

    public boolean m()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        a.clearHistory();
        return true;
        Throwable throwable;
        throwable;
        return false;
    }
}
