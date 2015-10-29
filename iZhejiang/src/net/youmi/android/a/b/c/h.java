// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.c;

import android.content.Context;

// Referenced classes of package net.youmi.android.a.b.c:
//            i, d, g

public class h
{

    private i a;

    public h(Context context, String s, g g)
    {
        a = new i(s, g);
    }

    public h(Context context, String s, g g, int j)
    {
        a = new i(s, g, j);
    }

    public int a()
    {
        return a.a();
    }

    public boolean a(d d1)
    {
        if (d1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String s;
        boolean flag;
        try
        {
            s = d1.n();
        }
        // Misplaced declaration of an exception variable
        catch (d d1)
        {
            return false;
        }
        if (s == null) goto _L1; else goto _L3
_L3:
        String s1 = d1.l();
        flag = a.a(s, s1, d1.m());
        return flag;
    }

    public g b()
    {
        return a.c();
    }

    public boolean b(d d1)
    {
        if (d1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String s;
        boolean flag;
        try
        {
            s = d1.n();
            s = a.a(s, null);
        }
        // Misplaced declaration of an exception variable
        catch (d d1)
        {
            return false;
        }
        if (s == null) goto _L1; else goto _L3
_L3:
        flag = d1.a(s);
        return flag;
    }

    public String c()
    {
        return a.b();
    }

    public boolean c(String s)
    {
        return a.a(s);
    }
}
