// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.b;

import net.youmi.android.a.b.c.d;

public class b
    implements d
{

    private long a;
    private String b;
    private String c;

    public b(String s)
    {
        a = -1L;
        b = s;
    }

    public b(String s, long l1)
    {
        a = -1L;
        b = s;
        a = l1;
    }

    public String a()
    {
        return c;
    }

    public boolean a(String s)
    {
        if (s != null && s.length() > 0)
        {
            c = s;
            return true;
        } else
        {
            return false;
        }
    }

    public void b(String s)
    {
        c = s;
    }

    public String l()
    {
        return c;
    }

    public long m()
    {
        return a;
    }

    public String n()
    {
        return b;
    }
}
