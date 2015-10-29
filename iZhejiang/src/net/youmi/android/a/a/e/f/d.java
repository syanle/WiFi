// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.f;

import android.content.Context;
import net.youmi.android.a.a.e.b.e;
import net.youmi.android.a.b.i.a.b;
import net.youmi.android.a.c.d.c;

// Referenced classes of package net.youmi.android.a.a.e.f:
//            a

public class d
    implements Runnable
{

    Context a;
    long b;
    String c;
    String d;
    String e;
    String f;
    long g;
    boolean h;
    String i;
    boolean j;
    private int k;

    public d(Context context, String s, String s1, String s2, long l, long l1, boolean flag, String s3, int i1)
    {
        h = false;
        i = "";
        j = false;
        k = 0;
        a = context;
        e = s;
        d = s1;
        f = s2;
        b = l;
        g = l1;
        h = true;
        j = flag;
        i = s3;
        k = i1;
    }

    public d(Context context, String s, String s1, String s2, long l, boolean flag, 
            String s3, int i1)
    {
        h = false;
        i = "";
        j = false;
        k = 0;
        a = context;
        e = s;
        d = s1;
        f = s2;
        b = l;
        h = false;
        j = flag;
        i = s3;
        k = i1;
    }

    protected int a()
    {
        if (!j)
        {
            String s = net.youmi.android.a.a.e.b.e.a(a, f);
            if (s != null)
            {
                c = s;
                return 1;
            }
        }
        Object obj = new b();
        ((b) (obj)).b(i);
        ((b) (obj)).a(k);
        obj = net.youmi.android.a.c.d.c.a(a, f, ((b) (obj)));
        if (obj != null)
        {
            if (h)
            {
                net.youmi.android.a.a.e.b.e.a(a, f, ((String) (obj)), g);
            }
            c = ((String) (obj));
            return 0;
        } else
        {
            return 2;
        }
    }

    protected void a(int l)
    {
        try
        {
            if (d != null)
            {
                if (c == null)
                {
                    c = "";
                }
                String s = String.format("javascript:%s(%d,%d,'%s','%s')", new Object[] {
                    d, Long.valueOf(b), Integer.valueOf(l), f, c
                });
                net.youmi.android.a.a.e.f.a.a().a(e, s);
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void run()
    {
        try
        {
            a(a());
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
