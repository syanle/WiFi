// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a;

import net.youmi.android.a.a.e.a.a.b;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.g;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.i;
import net.youmi.android.a.a.e.a.b.j;

public abstract class a
{

    private h a;
    private f b;
    private b c;
    private i d;
    private net.youmi.android.a.a.e.a.a.a e;

    public a(h h1, f f1)
    {
        a = h1;
        b = f1;
    }

    public a(h h1, f f1, b b1)
    {
        a = h1;
        b = f1;
        c = b1;
    }

    public String a(int k, int l, String s)
    {
        k;
        JVM INSTR lookupswitch 9: default 84
    //                   0: 198
    //                   1: 208
    //                   2: 218
    //                   3: 228
    //                   4: 238
    //                   5: 248
    //                   6: 258
    //                   10: 268
    //                   100: 303;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        if (c == null || !c.a(k)) goto _L12; else goto _L11
_L11:
        Object obj = c.a(k, l);
_L17:
        if (obj == null) goto _L14; else goto _L13
_L13:
        try
        {
            if (obj instanceof j)
            {
                j j1 = (j)obj;
                if (d != null)
                {
                    j1.a(d);
                }
                if (e != null)
                {
                    j1.a(e);
                }
            }
        }
        catch (Throwable throwable) { }
        try
        {
            s = ((g) (obj)).a(a, b, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s = null;
        }
_L15:
        obj = s;
        if (s == null)
        {
            obj = j.b(3);
        }
        return ((String) (obj));
_L2:
        obj = a(l);
        continue; /* Loop/switch isn't completed */
_L3:
        obj = b(l);
        continue; /* Loop/switch isn't completed */
_L4:
        obj = c(l);
        continue; /* Loop/switch isn't completed */
_L5:
        obj = d(l);
        continue; /* Loop/switch isn't completed */
_L6:
        obj = e(l);
        continue; /* Loop/switch isn't completed */
_L7:
        obj = f(l);
        continue; /* Loop/switch isn't completed */
_L8:
        obj = g(l);
        continue; /* Loop/switch isn't completed */
_L9:
        obj = h(l);
        continue; /* Loop/switch isn't completed */
_L14:
        s = j.b(4);
        if (true) goto _L15; else goto _L12
_L12:
        obj = null;
        continue; /* Loop/switch isn't completed */
_L10:
        obj = null;
        if (true) goto _L17; else goto _L16
_L16:
    }

    abstract g a(int k);

    abstract g b(int k);

    abstract g c(int k);

    abstract g d(int k);

    public boolean d(String s)
    {
        try
        {
            net.youmi.android.a.c.b.a.d(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public boolean dd(String s)
    {
        return true;
    }

    public boolean de(String s)
    {
        return true;
    }

    public boolean di(String s)
    {
        return true;
    }

    public boolean dw(String s)
    {
        return true;
    }

    abstract g e(int k);

    public boolean e(String s)
    {
        try
        {
            net.youmi.android.a.c.b.a.b(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    abstract g f(int k);

    abstract g g(int k);

    abstract g h(int k);

    public boolean i(String s)
    {
        try
        {
            net.youmi.android.a.c.b.a.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public void setExtendJsObject(net.youmi.android.a.a.e.a.a.a a1)
    {
        e = a1;
    }

    public void setYmWebBrowser(i k)
    {
        d = k;
    }

    public boolean w(String s)
    {
        try
        {
            net.youmi.android.a.c.b.a.c(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }
}
