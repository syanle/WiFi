// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.a.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import java.util.List;
import net.youmi.android.AdBrowser;
import net.youmi.android.a.a.e.g.b;
import net.youmi.android.a.a.e.g.d;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.a.g.d.a.f;
import net.youmi.android.a.a.g.e.c;
import net.youmi.android.a.a.i.a.a.e;
import net.youmi.android.a.b.k.m;
import org.apache.http.util.EncodingUtils;

// Referenced classes of package net.youmi.android.a.a.e.a.b:
//            h, e, b, c, 
//            d

public class a
    implements h
{

    protected Activity a;
    protected Context b;
    protected net.youmi.android.a.a.i.a.b.a c;
    protected net.youmi.android.a.a.e.g.c d;

    public a(Context context, net.youmi.android.a.a.i.a.b.a a1, net.youmi.android.a.a.e.g.c c1)
    {
        if (context instanceof Activity)
        {
            a = (Activity)context;
        }
        b = context.getApplicationContext();
        c = a1;
        d = c1;
    }

    protected Context a()
    {
        if (a != null)
        {
            return a;
        } else
        {
            return b;
        }
    }

    public String a(String s, String s1)
    {
        try
        {
            s = net.youmi.android.a.a.g.d.a.a(h(), s, s1, k());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public String a(b b1)
    {
        try
        {
            b1 = net.youmi.android.a.a.g.d.a.a(h(), b1);
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            return null;
        }
        return b1;
    }

    public net.youmi.android.a.a.e.a a(int i1, b b1)
    {
        try
        {
            net.youmi.android.a.c.a.a(new f(b, b1, i1));
            b1 = net.youmi.android.a.a.e.a.b;
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            return net.youmi.android.a.a.e.a.c;
        }
        return b1;
    }

    public net.youmi.android.a.a.e.a a(Context context, List list)
    {
        try
        {
            net.youmi.android.a.a.g.e.c.a(context, list);
            context = net.youmi.android.a.a.e.a.b;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return net.youmi.android.a.a.e.a.c;
        }
        return context;
    }

    public net.youmi.android.a.a.e.a a(String s)
    {
        return net.youmi.android.a.a.e.a.a;
    }

    public net.youmi.android.a.a.e.a a(String s, String s1, String s2, long l1)
    {
        return net.youmi.android.a.a.e.a.a;
    }

    public net.youmi.android.a.a.e.a a(net.youmi.android.a.a.e.g.a a1, net.youmi.android.a.a.e.g.f f1)
    {
        if (!net.youmi.android.a.b.k.m.a().a(new net.youmi.android.a.a.e.a.b.e(this, a1, f1)))
        {
            break MISSING_BLOCK_LABEL_26;
        }
        a1 = net.youmi.android.a.a.e.a.b;
        return a1;
        a1;
        return net.youmi.android.a.a.e.a.c;
    }

    public net.youmi.android.a.a.e.a a(net.youmi.android.a.a.e.g.c c1)
    {
        if (c1 != null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        return net.youmi.android.a.a.e.a.c;
        Object obj;
        Object obj1;
        if (!(d instanceof g))
        {
            break MISSING_BLOCK_LABEL_274;
        }
        obj = (g)d;
        obj1 = new g(l(), k());
        ((g) (obj1)).g(((g) (obj)).v());
        ((g) (obj1)).f(((g) (obj)).u());
        ((g) (obj1)).d(((g) (obj)).s());
        ((g) (obj1)).e(((g) (obj)).t());
        ((g) (obj1)).a(((g) (obj)).x());
        ((g) (obj1)).b(((g) (obj)).y());
        ((g) (obj1)).a(((g) (obj)).c());
        ((g) (obj1)).a(((g) (obj)).b());
        net.youmi.android.a.a.j.a a1;
        if (c1.d() != 0)
        {
            ((g) (obj1)).b(c1.d());
        } else
        {
            ((g) (obj1)).b(((g) (obj)).d());
        }
        if (c1.j() == null)
        {
            break MISSING_BLOCK_LABEL_263;
        }
        if (((g) (obj)).j() == null || ((g) (obj)).j().e == -1) goto _L2; else goto _L1
_L1:
        a1 = c1.j();
        a1.e = ((g) (obj)).j().e;
        ((g) (obj1)).a(a1);
_L3:
        ((g) (obj1)).b(c1.k());
        ((g) (obj1)).c(c1.l());
        ((g) (obj1)).d(c1.n());
        ((g) (obj1)).a(((g) (obj)).w());
        ((g) (obj1)).e(c1.o());
        ((g) (obj1)).g(c1.q());
        ((g) (obj1)).a(((g) (obj)).h());
        b(((g) (obj1)));
        return net.youmi.android.a.a.e.a.b;
_L2:
        try
        {
            ((g) (obj1)).a(c1.j());
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.c c1)
        {
            return net.youmi.android.a.a.e.a.c;
        }
          goto _L3
        ((g) (obj1)).a(((g) (obj)).j());
          goto _L3
        obj1 = d;
        obj = new net.youmi.android.a.a.e.g.c(l(), k());
        ((net.youmi.android.a.a.e.g.c) (obj)).a(((net.youmi.android.a.a.e.g.c) (obj1)).c());
        ((net.youmi.android.a.a.e.g.c) (obj)).a(((net.youmi.android.a.a.e.g.c) (obj1)).b());
        net.youmi.android.a.a.j.a a2;
        if (c1.d() != 0)
        {
            ((net.youmi.android.a.a.e.g.c) (obj)).b(c1.d());
        } else
        {
            ((net.youmi.android.a.a.e.g.c) (obj)).b(((net.youmi.android.a.a.e.g.c) (obj1)).d());
        }
        if (c1.j() == null)
        {
            break MISSING_BLOCK_LABEL_469;
        }
        if (((net.youmi.android.a.a.e.g.c) (obj1)).j() == null || ((net.youmi.android.a.a.e.g.c) (obj1)).j().e == -1) goto _L5; else goto _L4
_L4:
        a2 = c1.j();
        a2.e = ((net.youmi.android.a.a.e.g.c) (obj1)).j().e;
        ((net.youmi.android.a.a.e.g.c) (obj)).a(a2);
_L6:
        ((net.youmi.android.a.a.e.g.c) (obj)).b(c1.k());
        ((net.youmi.android.a.a.e.g.c) (obj)).c(c1.l());
        ((net.youmi.android.a.a.e.g.c) (obj)).d(c1.n());
        ((net.youmi.android.a.a.e.g.c) (obj)).e(c1.o());
        ((net.youmi.android.a.a.e.g.c) (obj)).g(c1.q());
        ((net.youmi.android.a.a.e.g.c) (obj)).a(((net.youmi.android.a.a.e.g.c) (obj1)).h());
        c1 = new d();
        c1.a(((net.youmi.android.a.a.e.g.c) (obj)));
        a(((d) (c1)));
        return net.youmi.android.a.a.e.a.b;
_L5:
        ((net.youmi.android.a.a.e.g.c) (obj)).a(c1.j());
          goto _L6
        ((net.youmi.android.a.a.e.g.c) (obj)).a(((net.youmi.android.a.a.e.g.c) (obj1)).j());
          goto _L6
    }

    public net.youmi.android.a.a.e.a a(d d1)
    {
        net.youmi.android.a.a.e.g.c c1 = d1.a(0);
        if (c1 == null) goto _L2; else goto _L1
_L1:
        try
        {
            if (d != null && d.h() != null && c1.h() == null)
            {
                c1.a(d.h());
            }
        }
        // Misplaced declaration of an exception variable
        catch (d d1) { }
        if (a == null) goto _L4; else goto _L3
_L3:
        d1 = new Intent(a, net/youmi/android/AdBrowser);
_L5:
        d1.putExtra("aca5522945c72310f9f22b333c68f2b3", c1);
        a().startActivity(d1);
_L2:
        return net.youmi.android.a.a.e.a.b;
_L4:
        d1 = new Intent(b, net/youmi/android/AdBrowser);
        d1.addFlags(0x10000000);
          goto _L5
        d1;
          goto _L2
    }

    public net.youmi.android.a.a.e.a a(g g1)
    {
        return net.youmi.android.a.a.e.a.a;
    }

    public void a(net.youmi.android.a.a.i.a.b.a a1)
    {
        c = a1;
    }

    public net.youmi.android.a.a.e.a b(g g1)
    {
        if (a != null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        g1 = net.youmi.android.a.a.e.a.c;
        return g1;
        try
        {
            if (d != null && d.h() != null && g1.h() == null)
            {
                g1.a(d.h());
            }
        }
        catch (Throwable throwable) { }
        if (!net.youmi.android.a.b.k.m.a().a(new e(a, g1)))
        {
            break MISSING_BLOCK_LABEL_76;
        }
        g1 = net.youmi.android.a.a.e.a.b;
        return g1;
        g1;
        return net.youmi.android.a.a.e.a.c;
    }

    public net.youmi.android.a.a.e.a c(int i1)
    {
        net.youmi.android.a.a.e.a a1;
        if (!c.a(i1, -1, -1F))
        {
            break MISSING_BLOCK_LABEL_24;
        }
        a1 = net.youmi.android.a.a.e.a.b;
        return a1;
        Throwable throwable;
        throwable;
        return net.youmi.android.a.a.e.a.c;
    }

    public Activity g()
    {
        return a;
    }

    public Context h()
    {
        return b;
    }

    public net.youmi.android.a.a.e.a i()
    {
        net.youmi.android.a.a.e.a a1;
        if (!c.l())
        {
            break MISSING_BLOCK_LABEL_19;
        }
        a1 = net.youmi.android.a.a.e.a.b;
        return a1;
        Throwable throwable;
        throwable;
        return net.youmi.android.a.a.e.a.c;
    }

    public net.youmi.android.a.a.e.a j()
    {
        Object obj;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_193;
        }
        obj = c;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_193;
        }
        if (!net.youmi.android.a.b.k.m.b()) goto _L2; else goto _L1
_L1:
        c.m();
_L4:
        if (d.m() != 2 || d.n() == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        if (!net.youmi.android.a.b.k.m.b())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!c.a(d.o(), EncodingUtils.getBytes(d.n(), "BASE64")))
        {
            break MISSING_BLOCK_LABEL_193;
        }
        obj = net.youmi.android.a.a.e.a.b;
        return ((net.youmi.android.a.a.e.a) (obj));
_L2:
        try
        {
            net.youmi.android.a.b.k.m.a().a(new net.youmi.android.a.a.e.a.b.b(this));
        }
        catch (Throwable throwable) { }
        if (true) goto _L4; else goto _L3
_L3:
        if (net.youmi.android.a.b.k.m.a().a(new net.youmi.android.a.a.e.a.b.c(this)))
        {
            return net.youmi.android.a.a.e.a.b;
        }
        break MISSING_BLOCK_LABEL_193;
        if (net.youmi.android.a.b.k.m.b())
        {
            if (c.b(d.o()))
            {
                return net.youmi.android.a.a.e.a.b;
            }
            break MISSING_BLOCK_LABEL_193;
        }
        if (!net.youmi.android.a.b.k.m.a().a(new net.youmi.android.a.a.e.a.b.d(this)))
        {
            break MISSING_BLOCK_LABEL_193;
        }
        throwable = net.youmi.android.a.a.e.a.b;
        return throwable;
        Throwable throwable1;
        throwable1;
        return net.youmi.android.a.a.e.a.c;
    }

    public int k()
    {
        if (d != null)
        {
            return d.e();
        } else
        {
            return 0;
        }
    }

    public int l()
    {
        if (d != null)
        {
            return d.f();
        } else
        {
            return 0;
        }
    }

    public int m()
    {
        return d.g();
    }
}
