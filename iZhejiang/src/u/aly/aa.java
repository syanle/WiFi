// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.h;

// Referenced classes of package u.aly:
//            r, x, ap

public class aa
    implements r
{

    private static final String h = "successful_request";
    private static final String i = "failed_requests ";
    private static final String j = "last_request_spent_ms";
    private static final String k = "last_request_time";
    private static final String l = "first_activate_time";
    private static final String m = "last_req";
    public int a;
    public int b;
    public long c;
    private final int d = 0x36ee80;
    private int e;
    private long f;
    private long g;
    private Context n;

    public aa(Context context)
    {
        f = 0L;
        g = 0L;
        b(context);
    }

    public static ap a(Context context)
    {
        context = x.a(context);
        ap ap1 = new ap();
        ap1.c(context.getInt("failed_requests ", 0));
        ap1.d(context.getInt("last_request_spent_ms", 0));
        ap1.a(context.getInt("successful_request", 0));
        return ap1;
    }

    private void b(Context context)
    {
        n = context.getApplicationContext();
        context = x.a(context);
        a = context.getInt("successful_request", 0);
        b = context.getInt("failed_requests ", 0);
        e = context.getInt("last_request_spent_ms", 0);
        c = context.getLong("last_request_time", 0L);
        f = context.getLong("last_req", 0L);
    }

    public void a()
    {
        i();
    }

    public void b()
    {
        j();
    }

    public void c()
    {
        g();
    }

    public void d()
    {
        h();
    }

    public int e()
    {
        if (e > 0x36ee80)
        {
            return 0x36ee80;
        } else
        {
            return e;
        }
    }

    public boolean f()
    {
        boolean flag;
        boolean flag1;
        if (c == 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!com.umeng.analytics.h.a(n).h())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag && flag1;
    }

    public void g()
    {
        a = a + 1;
        c = f;
    }

    public void h()
    {
        b = b + 1;
    }

    public void i()
    {
        f = System.currentTimeMillis();
    }

    public void j()
    {
        e = (int)(System.currentTimeMillis() - f);
    }

    public void k()
    {
        x.a(n).edit().putInt("successful_request", a).putInt("failed_requests ", b).putInt("last_request_spent_ms", e).putLong("last_request_time", c).putLong("last_req", f).commit();
    }

    public void l()
    {
        x.a(n).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
    }

    public boolean m()
    {
        if (g == 0L)
        {
            g = x.a(n).getLong("first_activate_time", 0L);
        }
        return g == 0L;
    }

    public long n()
    {
        if (m())
        {
            return System.currentTimeMillis();
        } else
        {
            return g;
        }
    }

    public long o()
    {
        return f;
    }
}
