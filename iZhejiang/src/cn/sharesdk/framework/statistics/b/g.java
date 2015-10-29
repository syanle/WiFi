// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.statistics.a.c;

// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class g extends cn.sharesdk.framework.statistics.b.c
{

    private static int a;
    private static long b;

    public g()
    {
    }

    protected String a()
    {
        return "[RUN]";
    }

    protected void a(long l)
    {
        b = l;
    }

    public boolean a(Context context)
    {
        c c1 = cn.sharesdk.framework.statistics.a.c.a(context);
        a = c1.c("insertRunEventCount");
        b = c1.b("lastInsertRunEventTime");
        return super.a(context);
    }

    protected int b()
    {
        return 5000;
    }

    public void b(Context context)
    {
        super.b(context);
        context = cn.sharesdk.framework.statistics.a.c.a(context);
        context.a("lastInsertRunEventTime", Long.valueOf(b));
        context.a("insertRunEventCount", a);
    }

    protected int c()
    {
        return 5;
    }

    protected long d()
    {
        return (long)a;
    }

    protected long e()
    {
        return b;
    }

    protected void f()
    {
        a++;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|');
        if (!TextUtils.isEmpty(m))
        {
            stringbuilder.append(m);
        }
        return stringbuilder.toString();
    }
}
