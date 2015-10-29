// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a.b;

import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.c.d;
import net.youmi.android.a.b.d.g;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.a.b:
//            b, c

public class a
    implements d
{

    private String a;
    private String b;
    private net.youmi.android.a.a.a.b.b c;
    private c d;
    private String e;
    private boolean f;
    private String g;
    private long h;
    private String i;
    private long j;
    private boolean k;
    private net.youmi.android.a.a.e.g.b l;
    private String m;
    private long n;
    private String o;

    public a(String s, net.youmi.android.a.a.a.b.b b1)
    {
        f = false;
        j = 0x75300L;
        k = true;
        n = 0L;
        s = net.youmi.android.a.b.b.e.b(s);
        if (s == null)
        {
            throw new NullPointerException("packageName is null");
        } else
        {
            a = s;
            b = net.youmi.android.a.b.d.g.a(s);
            c = b1;
            return;
        }
    }

    public String a()
    {
        return o;
    }

    public void a(long l1)
    {
        n = l1;
    }

    public void a(c c1)
    {
        d = c1;
    }

    public void a(net.youmi.android.a.a.e.g.b b1)
    {
        l = b1;
    }

    public void a(boolean flag)
    {
        k = flag;
    }

    public boolean a(String s)
    {
        String s1;
        String s2;
        String s3;
        String s4;
        net.youmi.android.a.a.e.g.b b1;
        boolean flag;
        try
        {
            s = net.youmi.android.a.b.b.b.a(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        if (s == null)
        {
            return false;
        }
        s1 = net.youmi.android.a.b.b.b.a(s, "a", null);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_361;
        }
        s1 = net.youmi.android.a.c.a.a.b(s1, "xVoyEjF1");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_361;
        }
        flag = s1.equals(a);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_361;
        }
        s1 = net.youmi.android.a.b.b.b.a(s, "o", null);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        s1 = net.youmi.android.a.c.a.a.b(s1, "xVoyEjF1");
        if (s1 != null)
        {
            try
            {
                b(s1);
            }
            catch (Throwable throwable9) { }
        }
        s1 = net.youmi.android.a.b.b.b.a(s, "b", null);
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        s1 = net.youmi.android.a.c.a.a.b(s1, "xVoyEjF1");
        if (s1 != null)
        {
            try
            {
                e = s1;
            }
            catch (Throwable throwable8) { }
        }
        try
        {
            g = net.youmi.android.a.b.b.b.a(s, "c", g);
        }
        catch (Throwable throwable7) { }
        try
        {
            f = net.youmi.android.a.b.b.b.a(s, "d", f);
        }
        catch (Throwable throwable6) { }
        try
        {
            k = net.youmi.android.a.b.b.b.a(s, "l", k);
        }
        catch (Throwable throwable5) { }
        try
        {
            h = net.youmi.android.a.b.b.b.a(s, "e", h);
        }
        catch (Throwable throwable4) { }
        try
        {
            i = net.youmi.android.a.b.b.b.a(s, "k", null);
        }
        catch (Throwable throwable3) { }
        try
        {
            m = net.youmi.android.a.b.b.b.a(s, "m", null);
        }
        catch (Throwable throwable2) { }
        try
        {
            n = net.youmi.android.a.b.b.b.a(s, "n", 0L);
        }
        catch (Throwable throwable1) { }
        try
        {
            s1 = net.youmi.android.a.b.b.b.a(s, "g", null);
            s2 = net.youmi.android.a.b.b.b.a(s, "h", null);
            s3 = net.youmi.android.a.b.b.b.a(s, "i", null);
            s4 = net.youmi.android.a.b.b.b.a(s, "j", null);
            b1 = new net.youmi.android.a.a.e.g.b();
            b1.a(s1);
            b1.c(s3);
            b1.b(s2);
            b1.d(s4);
            if (b1.e())
            {
                l = b1;
            }
        }
        catch (Throwable throwable) { }
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_312;
        }
        s = net.youmi.android.a.b.b.b.a(s, "f", null);
        if (s != null)
        {
            try
            {
                d = c.a(s, d);
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return true;
        return false;
    }

    public long b()
    {
        return n;
    }

    public void b(long l1)
    {
        h = l1;
    }

    public void b(String s)
    {
        String s1 = s;
        if (s != null)
        {
            s = s.trim();
            s1 = s;
            if (s.length() == 0)
            {
                s1 = null;
            }
        }
        o = s1;
    }

    public void b(boolean flag)
    {
        f = flag;
    }

    public String c()
    {
        return m;
    }

    public void c(String s)
    {
        m = s;
    }

    public String d()
    {
        return a;
    }

    public void d(String s)
    {
        e = s;
    }

    public void e(String s)
    {
        i = s;
    }

    public boolean e()
    {
        return k;
    }

    public String f()
    {
        return e;
    }

    public String g()
    {
        return i;
    }

    public boolean h()
    {
        return f;
    }

    public c i()
    {
        return d;
    }

    public net.youmi.android.a.a.e.g.b j()
    {
        return l;
    }

    public String l()
    {
        Object obj;
        Object obj1;
        boolean flag;
        try
        {
            obj = new JSONObject();
            ((JSONObject) (obj)).put("a", net.youmi.android.a.c.a.a.a(a, "xVoyEjF1"));
            if (o != null)
            {
                ((JSONObject) (obj)).put("o", net.youmi.android.a.c.a.a.a(o, "xVoyEjF1"));
            }
            if (e != null)
            {
                ((JSONObject) (obj)).put("b", net.youmi.android.a.c.a.a.a(e, "xVoyEjF1"));
            }
            if (g != null)
            {
                ((JSONObject) (obj)).put("c", g);
            }
            ((JSONObject) (obj)).put("d", f);
            ((JSONObject) (obj)).put("e", h);
            obj1 = d;
        }
        catch (Throwable throwable)
        {
            return null;
        }
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        obj1 = d.a();
        if (obj1 != null)
        {
            try
            {
                ((JSONObject) (obj)).put("f", obj1);
            }
            catch (Throwable throwable2) { }
        }
        if (l == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        flag = l.e();
        if (flag)
        {
            try
            {
                ((JSONObject) (obj)).put("g", l.a());
                ((JSONObject) (obj)).put("h", l.b());
                ((JSONObject) (obj)).put("i", l.c());
                ((JSONObject) (obj)).put("j", l.d());
            }
            catch (Throwable throwable1) { }
        }
        ((JSONObject) (obj)).put("l", k);
        ((JSONObject) (obj)).put("m", m);
        ((JSONObject) (obj)).put("n", n);
        if (i != null)
        {
            ((JSONObject) (obj)).put("k", i);
        }
        obj = ((JSONObject) (obj)).toString();
        return ((String) (obj));
    }

    public long m()
    {
        return j;
    }

    public String n()
    {
        return b;
    }
}
