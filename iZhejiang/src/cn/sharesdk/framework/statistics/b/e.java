// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.statistics.b;

import android.content.Context;
import android.text.TextUtils;
import cn.sharesdk.framework.statistics.a.c;

// Referenced classes of package cn.sharesdk.framework.statistics.b:
//            c

public class e extends cn.sharesdk.framework.statistics.b.c
{

    private static int b;
    private static long c;
    public long a;

    public e()
    {
    }

    protected String a()
    {
        return "[EXT]";
    }

    protected void a(long l)
    {
        c = l;
    }

    public boolean a(Context context)
    {
        c c1 = cn.sharesdk.framework.statistics.a.c.a(context);
        b = c1.c("insertExitEventCount");
        c = c1.b("lastInsertExitEventTime");
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
        context.a("lastInsertExitEventTime", Long.valueOf(c));
        context.a("insertExitEventCount", b);
    }

    protected int c()
    {
        return 5;
    }

    protected long d()
    {
        return (long)b;
    }

    protected long e()
    {
        return c;
    }

    protected void f()
    {
        b++;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(super.toString());
        stringbuilder.append('|');
        if (!TextUtils.isEmpty(m))
        {
            stringbuilder.append(m);
        }
        stringbuilder.append('|').append(Math.round((float)a / 1000F));
        return stringbuilder.toString();
    }
}
