// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.a;

import android.app.Activity;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.i.a.b.d;
import net.youmi.android.a.a.i.a.b.f;

public class c
{

    private int a;
    private String b;
    private String c;
    private f d;
    private d e;
    private h f;
    private net.youmi.android.a.a.e.a.b.f g;

    public c()
    {
        a = 0;
    }

    public h a()
    {
        return f;
    }

    public void a(int i)
    {
        a = i;
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(net.youmi.android.a.a.e.a.b.f f1)
    {
        g = f1;
    }

    public void a(h h1)
    {
        f = h1;
    }

    public void a(d d1)
    {
        e = d1;
    }

    public void a(f f1)
    {
        d = f1;
    }

    public net.youmi.android.a.a.e.a.b.f b()
    {
        return g;
    }

    public void b(String s)
    {
        c = s;
    }

    public int c()
    {
        return a;
    }

    public String d()
    {
        return b;
    }

    public String e()
    {
        return c;
    }

    public d f()
    {
        return e;
    }

    public f g()
    {
        return d;
    }

    public Activity h()
    {
        if (f == null)
        {
            return null;
        }
        Activity activity;
        try
        {
            activity = f.g();
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return activity;
    }
}
