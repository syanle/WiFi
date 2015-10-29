// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.a;

import java.util.Locale;
import net.youmi.android.a.b.c.d;
import net.youmi.android.a.b.d.g;

// Referenced classes of package net.youmi.android.a.a.a.a:
//            b, g, d, c, 
//            f, e, j, h

public final class a
    implements d
{

    private int a;
    private int b;
    private String c;
    private f d;
    private c e;
    private net.youmi.android.a.a.a.a.g f;
    private e g;
    private net.youmi.android.a.a.a.a.d h;
    private j i;
    private h j;
    private long k;

    public a(int i1, int j1)
    {
        a = 0;
        b = 0;
        k = 0L;
        a = i1;
        b = j1;
    }

    public static String a(int i1, int j1)
    {
        String s;
        try
        {
            s = net.youmi.android.a.b.d.g.a(String.format(Locale.getDefault(), "APP_%d_%d", new Object[] {
                Integer.valueOf(i1), Integer.valueOf(j1)
            }));
        }
        catch (Throwable throwable)
        {
            return String.format(Locale.getDefault(), "%d_%d", new Object[] {
                Integer.valueOf(i1), Integer.valueOf(j1)
            });
        }
        return s;
    }

    public int a()
    {
        return a;
    }

    void a(long l1)
    {
        k = l1;
    }

    public void a(c c1)
    {
        e = c1;
    }

    public void a(net.youmi.android.a.a.a.a.d d1)
    {
        h = d1;
    }

    public void a(e e1)
    {
        g = e1;
    }

    public void a(f f1)
    {
        d = f1;
    }

    public void a(net.youmi.android.a.a.a.a.g g1)
    {
        f = g1;
    }

    public void a(h h1)
    {
        j = h1;
    }

    public void a(j j1)
    {
        i = j1;
    }

    public boolean a(String s)
    {
        return net.youmi.android.a.a.a.a.b.a(this, s);
    }

    public int b()
    {
        return b;
    }

    public long c()
    {
        return k;
    }

    public String d()
    {
        if (c == null)
        {
            c = a(a, b);
        }
        return c;
    }

    public f e()
    {
        return d;
    }

    public c f()
    {
        return e;
    }

    public net.youmi.android.a.a.a.a.g g()
    {
        return f;
    }

    public e h()
    {
        return g;
    }

    public net.youmi.android.a.a.a.a.d i()
    {
        return h;
    }

    public j j()
    {
        return i;
    }

    public h k()
    {
        return j;
    }

    public String l()
    {
        return net.youmi.android.a.a.a.a.b.a(this);
    }

    public long m()
    {
        return 0x9fa52400L;
    }

    public String n()
    {
        return d();
    }

    public String toString()
    {
        Object obj;
        try
        {
            obj = new StringBuilder(2048);
            ((StringBuilder) (obj)).append("ID:(").append(a).append("),TypeID:(").append(b).append("),\u670D\u52A1\u5668\u6700\u540E\u66F4\u65B0\u65F6\u95F4:(").append(k).append(")\n");
            ((StringBuilder) (obj)).append("Summary:\n");
            if (f != null)
            {
                ((StringBuilder) (obj)).append(f.toString());
            }
            ((StringBuilder) (obj)).append("Download:\n");
            if (h != null)
            {
                ((StringBuilder) (obj)).append(h.toString());
            }
            ((StringBuilder) (obj)).append("Detail:\n");
            if (e != null)
            {
                ((StringBuilder) (obj)).append(e.toString());
            }
            ((StringBuilder) (obj)).append("Status:\n");
            if (d != null)
            {
                ((StringBuilder) (obj)).append(d.toString());
            }
            ((StringBuilder) (obj)).append("Social:\n");
            if (g != null)
            {
                ((StringBuilder) (obj)).append(g.toString());
            }
            ((StringBuilder) (obj)).append("Dev:\n");
            if (i != null)
            {
                ((StringBuilder) (obj)).append(i.toString());
            }
            obj = ((StringBuilder) (obj)).toString();
        }
        catch (Throwable throwable)
        {
            return super.toString();
        }
        return ((String) (obj));
    }
}
