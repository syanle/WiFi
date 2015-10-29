// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.b;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package net.youmi.android.b:
//            b, g, j, d

public class k
{

    private static ExecutorService g = Executors.newCachedThreadPool();
    private Context a;
    private String b;
    private String c;
    private String d;
    private String e;
    private Queue f;

    public k(Context context, String s, String s1, String s2, String s3)
    {
        f = new ConcurrentLinkedQueue();
        a = context.getApplicationContext();
        b = a(s);
        c = a(s1);
        d = a(s2);
        e = a(s3);
        if (b == null || c == null || d == null || e == null)
        {
            throw new NullPointerException("params error!");
        } else
        {
            return;
        }
    }

    private String a(String s)
    {
        if (s != null)
        {
            if ((s = s.trim()).length() > 0)
            {
                return s;
            }
        }
        return null;
    }

    private void c(b b1)
    {
        try
        {
            b1.d(b);
            b1.c(d);
            b1.e(e);
            b1.f(c);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            return;
        }
    }

    public String a()
    {
        return b;
    }

    public k a(b b1)
    {
        c(b1);
        f.add(b1);
        return this;
    }

    public void a(int i)
    {
        try
        {
            g.execute(new g(a, this, i));
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void b()
    {
        ArrayList arraylist;
        try
        {
            arraylist = new ArrayList();
            for (; !f.isEmpty(); arraylist.add(((b)f.poll()).a(this))) { }
        }
        catch (Throwable throwable)
        {
            return;
        }
        j.a(a, arraylist);
        return;
    }

    public boolean b(b b1)
    {
        c(b1);
        b1 = b1.a(this);
        if (b1 != null)
        {
            return net.youmi.android.b.d.a(a, b1);
        } else
        {
            return false;
        }
    }

}
