// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;

import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.d;
import net.youmi.android.a.b.d.g;

class a
    implements d
{

    private String a;
    private String b;
    private long c;

    a(String s)
    {
        c = 0L;
        s = e.b(s);
        if (s != null)
        {
            b = g.a((new StringBuilder()).append("ZdWpvx74").append(s).toString());
        }
    }

    String a()
    {
        return a;
    }

    public void a(long l1)
    {
        c = l1;
    }

    public boolean a(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        a = s;
        return true;
        s;
        return false;
    }

    void b(String s)
    {
        a = e.b(s);
    }

    public String l()
    {
        return a;
    }

    public long m()
    {
        return c;
    }

    public String n()
    {
        return b;
    }
}
