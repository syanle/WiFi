// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package u.aly:
//            ao, bq, bk, ar, 
//            bi, al, bf, z, 
//            aa, bn, q, f, 
//            d, ap, an, am, 
//            ba, az

public class s
{

    private List a;
    private am b;
    private ao c;
    private ar d;
    private bf e;
    private Context f;

    public s(Context context)
    {
        a = new ArrayList();
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        f = context;
    }

    private void a(Context context)
    {
        try
        {
            c.a(AnalyticsConfig.getAppkey(context));
            c.e(AnalyticsConfig.getChannel(context));
            if (AnalyticsConfig.mWrapperType != null && AnalyticsConfig.mWrapperVersion != null)
            {
                c.f(AnalyticsConfig.mWrapperType);
                c.g(AnalyticsConfig.mWrapperVersion);
            }
            c.c(bq.u(context));
            c.a(bk.a);
            c.d("5.5.3");
            c.b(bq.d(context));
            c.a(Integer.parseInt(bq.c(context)));
            c.c(AnalyticsConfig.mVerticalType);
            c.d(AnalyticsConfig.getSDKVersion());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    private void b(Context context)
    {
        try
        {
            d.f(bq.a());
            d.a(bq.f(context));
            d.b(bq.g(context));
            d.c(bq.p(context));
            d.e(Build.MODEL);
            d.g("Android");
            d.h(android.os.Build.VERSION.RELEASE);
            context = bq.r(context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        d.a(new bi(context[1], context[0]));
        if (AnalyticsConfig.GPU_RENDERER != null)
        {
            if (AnalyticsConfig.GPU_VENDER == null);
        }
        d.i(Build.BOARD);
        d.j(Build.BRAND);
        d.a(Build.TIME);
        d.k(Build.MANUFACTURER);
        d.l(Build.ID);
        d.m(Build.DEVICE);
        return;
    }

    private void c(Context context)
    {
        String as[] = bq.j(context);
        if (!"Wi-Fi".equals(as[0])) goto _L2; else goto _L1
_L1:
        e.a(al.c);
_L3:
        if (!"".equals(as[1]))
        {
            e.e(as[1]);
        }
        e.c(bq.s(context));
        as = bq.n(context);
        e.b(as[0]);
        e.a(as[1]);
        e.a(bq.m(context));
        return;
_L2:
label0:
        {
            if (!"2G/3G".equals(as[0]))
            {
                break label0;
            }
            e.a(al.b);
        }
          goto _L3
        try
        {
            e.a(al.a);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
          goto _L3
    }

    public Context a()
    {
        return f;
    }

    public void a(am am)
    {
        this;
        JVM INSTR monitorenter ;
        b = am;
        this;
        JVM INSTR monitorexit ;
        return;
        am;
        throw am;
    }

    public void a(bn bn1)
    {
        String s1;
        s1 = z.g(f);
        if (s1 == null)
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        if (b != null && (new aa(f)).f())
        {
            bn1.a(b);
            b = null;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((q)iterator.next()).a(bn1, s1)) { }
        break MISSING_BLOCK_LABEL_96;
        bn1;
        this;
        JVM INSTR monitorexit ;
        throw bn1;
        a.clear();
        this;
        JVM INSTR monitorexit ;
        bn1.a(c());
        bn1.a(d());
        bn1.a(e());
        bn1.a(h());
        bn1.a(f());
        bn1.a(g());
        bn1.a(i());
        return;
    }

    public void a(q q1)
    {
        this;
        JVM INSTR monitorenter ;
        a.add(q1);
        this;
        JVM INSTR monitorexit ;
        return;
        q1;
        throw q1;
    }

    protected boolean a(int j)
    {
        return true;
    }

    public int b()
    {
        this;
        JVM INSTR monitorenter ;
        am am;
        int k;
        k = a.size();
        am = b;
        int j;
        j = k;
        if (am != null)
        {
            j = k + 1;
        }
        this;
        JVM INSTR monitorexit ;
        return j;
        Exception exception;
        exception;
        throw exception;
    }

    public ao c()
    {
        this;
        JVM INSTR monitorenter ;
        ao ao1;
        if (c == null)
        {
            c = new ao();
            a(f);
        }
        ao1 = c;
        this;
        JVM INSTR monitorexit ;
        return ao1;
        Exception exception;
        exception;
        throw exception;
    }

    public ar d()
    {
        this;
        JVM INSTR monitorenter ;
        ar ar1;
        if (d == null)
        {
            d = new ar();
            b(f);
        }
        ar1 = d;
        this;
        JVM INSTR monitorexit ;
        return ar1;
        Exception exception;
        exception;
        throw exception;
    }

    public bf e()
    {
        this;
        JVM INSTR monitorenter ;
        bf bf1;
        if (e == null)
        {
            e = new bf();
            c(f);
        }
        bf1 = e;
        this;
        JVM INSTR monitorexit ;
        return bf1;
        Exception exception;
        exception;
        throw exception;
    }

    public ba f()
    {
        ba ba;
        try
        {
            ba = u.aly.f.a(f).a();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return ba;
    }

    public az g()
    {
        az az;
        try
        {
            az = u.aly.d.a(f).b();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return az;
    }

    public ap h()
    {
        ap ap1;
        try
        {
            ap1 = aa.a(f);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return new ap();
        }
        return ap1;
    }

    public an i()
    {
        String as[] = com.umeng.analytics.e.a(f);
        if (as != null && !TextUtils.isEmpty(as[0]) && !TextUtils.isEmpty(as[1]))
        {
            return new an(as[0], as[1]);
        } else
        {
            return null;
        }
    }
}
