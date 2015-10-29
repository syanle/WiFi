// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.b;

import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.d;

public class a
    implements d
{

    private String a;
    private String b;
    private long c;
    private boolean d;

    public a(String s)
    {
        boolean flag = false;
        super();
        d = false;
        a = e.b(s);
        if (a != null)
        {
            flag = true;
        }
        d = flag;
    }

    public void a(long l1)
    {
        c = l1;
    }

    public boolean a()
    {
        return d;
    }

    public boolean a(String s)
    {
        while (a == null || s == null) 
        {
            return false;
        }
        b = s;
        return true;
    }

    public String b()
    {
        return b;
    }

    public void b(String s)
    {
        b = s;
    }

    public String l()
    {
        return b;
    }

    public long m()
    {
        return c;
    }

    public String n()
    {
        return a;
    }
}
