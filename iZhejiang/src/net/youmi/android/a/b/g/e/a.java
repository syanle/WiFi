// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.e;

import java.io.File;
import java.util.Locale;
import net.youmi.android.a.b.d.g;

public class a
{

    private String a;
    private String b;
    private int c;
    private boolean d;
    private long e;
    private String f;
    private String g;
    private String h;
    private File i;
    private File j;

    public a(String s)
    {
        d = false;
        e = 0L;
        if (s == null)
        {
            d = false;
            return;
        }
        s = s.trim();
        if (s.length() <= 0)
        {
            d = false;
            return;
        } else
        {
            a = s;
            b = net.youmi.android.a.b.d.g.a(s);
            f = a;
            g = b;
            c = b.hashCode();
            d = true;
            return;
        }
    }

    public a(String s, String s1)
    {
        this(s);
        a(s1);
    }

    public a(String s, String s1, long l)
    {
        this(s, s1);
        a(l);
    }

    public String a()
    {
        return a;
    }

    public void a(long l)
    {
        e = l;
    }

    public void a(File file)
    {
        i = file;
    }

    protected void a(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((s = s.trim().toLowerCase(Locale.getDefault())).length() <= 0) goto _L1; else goto _L3
_L3:
        h = s;
        return;
        s;
    }

    public String b()
    {
        return b;
    }

    public void b(File file)
    {
        j = file;
    }

    public void b(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((s = s.trim()).length() <= 0) goto _L1; else goto _L3
_L3:
        String s1 = net.youmi.android.a.b.d.g.a(s);
        f = s;
        g = s1;
        b = s1;
        c = b.hashCode();
        return;
        s;
    }

    public String c()
    {
        return f;
    }

    public boolean d()
    {
        return d;
    }

    public long e()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        while (obj == null || obj.hashCode() != hashCode()) 
        {
            return false;
        }
        return true;
    }

    public String f()
    {
        return h;
    }

    public File g()
    {
        return i;
    }

    public File h()
    {
        return j;
    }

    public int hashCode()
    {
        return c;
    }

    public String toString()
    {
        return super.toString();
    }
}
