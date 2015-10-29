// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a.a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.d.b;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.a.i.a.i;
import net.youmi.android.a.a.j.b.l;
import net.youmi.android.a.a.j.d;
import net.youmi.android.a.a.j.j;
import net.youmi.android.a.b.k.m;
import org.apache.http.util.EncodingUtils;

// Referenced classes of package net.youmi.android.a.a.i.a.a:
//            b

public abstract class a extends Dialog
    implements f, b, net.youmi.android.a.a.i.a.b.a, net.youmi.android.a.a.j.a.a, l, j
{

    net.youmi.android.a.a.i.a.b a;
    d b;
    protected Context c;
    protected h d;
    private RelativeLayout e;
    private RelativeLayout f;
    private int g;
    private int h;
    private g i;

    public a(Context context, g g1, h h1, int i1)
    {
        super(context, i1);
        g = 0;
        h = 0;
        a(context, g1, h1, g1.w());
    }

    private void a(Context context, g g1, h h1, boolean flag)
    {
        getWindow().requestFeature(1);
        if (!flag)
        {
            getWindow().addFlags(2);
        }
        i = g1;
        c = context;
        setCanceledOnTouchOutside(true);
        d = h1;
        if (d != null)
        {
            d.a(this);
        }
        a(g1);
        if (!flag)
        {
            try
            {
                a.getCurrentView().setBackgroundColor(-1);
            }
            // Misplaced declaration of an exception variable
            catch (Context context) { }
        }
        if (g1.m() == 2 && g1.n() != null && g1.o() != null)
        {
            a.postUrl(g1.o(), EncodingUtils.getBytes(g1.n(), "BASE64"));
            return;
        } else
        {
            a.loadUrl(g1.o());
            return;
        }
    }

    private void a(g g1)
    {
        boolean flag;
        Object obj = null;
        e = new RelativeLayout(c);
        f = new net.youmi.android.a.a.i.a.a.b(c, this);
        float f1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        int i1;
        int j1;
        try
        {
            if (i != null)
            {
                obj = i.h();
            }
        }
        catch (Throwable throwable)
        {
            throwable = null;
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        if ((g1.d() & 0x10) == 0)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        if ((g1.d() & 0x20) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            b = new d(c, g1.j(), this, flag);
            b.setId(1);
            net.youmi.android.a.a.j.a.b.a().a(this);
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams1.addRule(10);
            f.addView(b, layoutparams1);
            layoutparams.addRule(3, b.getId());
        }
        catch (Throwable throwable1) { }
        a = new net.youmi.android.a.a.i.a.b(c, d, g1.d(), this, i.k(), i.l(), 0, ((net.youmi.android.a.a.e.a.a.b) (obj)), this);
        layoutparams.addRule(13);
        try
        {
            g1 = net.youmi.android.a.b.k.f.a(c);
            i1 = g1.a(8);
            f.setPadding(i1, i1, i1, i1);
            e.setPadding(i1, i1, i1, i1);
            if (!i.w())
            {
                f1 = g1.a(6F);
                g1 = new ShapeDrawable(new RoundRectShape(new float[] {
                    f1, f1, f1, f1, f1, f1, f1, f1
                }, null, null));
                g1.getPaint().setColor(Color.parseColor("#cc999999"));
                f.setBackgroundDrawable(g1);
                g1 = getWindow();
                obj = g1.getAttributes();
                obj.dimAmount = 0.7F;
                g1.setAttributes(((android.view.WindowManager.LayoutParams) (obj)));
            }
        }
        // Misplaced declaration of an exception variable
        catch (g g1) { }
        f.addView(a.getCurrentView(), layoutparams);
        g1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        g1.addRule(13);
        e.addView(f, g1);
        setContentView(e, new android.view.ViewGroup.LayoutParams(-1, -1));
        i1 = i.a(c);
        j1 = i.b(c);
        if (i1 > 0 && j1 > 0)
        {
            a(i.s(), i.t(), i1, j1);
        }
        return;
    }

    private void b()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (a.b() != null)
        {
            a.b().b();
            return;
        }
        try
        {
            a.reload();
            return;
        }
        catch (Throwable throwable) { }
    }

    void a()
    {
        int i1;
        int j1;
        i1 = i.a(c);
        j1 = i.b(c);
        if (i1 <= 0 || j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        if (i1 == g && j1 == h)
        {
            return;
        }
        try
        {
            a(i.s(), i.t(), i1, j1);
            return;
        }
        catch (Throwable throwable) { }
    }

    public void a(int i1)
    {
        if (b != null)
        {
            b.setTitleBackgroundColor(i1);
        }
    }

    public void a(int i1, int j1, int k1, int l1)
    {
        Window window;
        android.view.WindowManager.LayoutParams layoutparams;
        byte byte0;
        try
        {
            window = getWindow();
            layoutparams = window.getAttributes();
        }
        catch (Throwable throwable)
        {
            return;
        }
        finally
        {
            throw exception;
        }
        if (i1 != -9999) goto _L2; else goto _L1
_L1:
        i1 = 1;
          goto _L3
_L7:
        layoutparams.width = k1;
        layoutparams.height = l1;
        net.youmi.android.a.b.k.f f1 = net.youmi.android.a.b.k.f.a(c);
        layoutparams.width = layoutparams.width + f1.a(16);
        layoutparams.height = layoutparams.height + f1.a(16);
        if (layoutparams.width > f1.b())
        {
            layoutparams.width = f1.b();
        }
        if (layoutparams.height > f1.c())
        {
            layoutparams.height = f1.c();
        }
        g = k1;
        h = l1;
        window.setGravity(i1);
        window.setAttributes(layoutparams);
        return;
_L2:
        byte0 = 3;
        layoutparams.x = i1;
        i1 = byte0;
          goto _L3
_L5:
        i1 |= 0x30;
        layoutparams.y = j1;
        continue; /* Loop/switch isn't completed */
_L3:
        if (j1 != -9999) goto _L5; else goto _L4
_L4:
        i1 |= 0x10;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a(CharSequence charsequence)
    {
        if (b != null)
        {
            b.setTitle(charsequence);
        }
    }

    public void a(String s)
    {
    }

    public void a(net.youmi.android.a.a.j.b.f f1)
    {
        try
        {
            if (a != null)
            {
                a.reload();
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.j.b.f f1)
        {
            return;
        }
    }

    public boolean a(Runnable runnable)
    {
        boolean flag;
        try
        {
            flag = net.youmi.android.a.b.k.m.a().a(runnable);
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return false;
        }
        return flag;
    }

    public boolean a(String s, byte abyte0[])
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        a.postUrl(s, abyte0);
        return true;
        s;
        return false;
    }

    public void b(int i1)
    {
        if (b != null)
        {
            b.setPoints(i1);
        }
    }

    public void b(CharSequence charsequence)
    {
        if (b != null)
        {
            b.setPointsUnit(charsequence);
        }
    }

    public boolean b(String s)
    {
        if (a == null || s == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        a.loadUrl(s);
        return true;
        s;
        return false;
    }

    public void c(int i1)
    {
        if (b != null)
        {
            b.setPointsLayoutVisibility(i1);
        }
    }

    public net.youmi.android.a.a.e.a f()
    {
        net.youmi.android.a.a.e.a a1;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        a.clearHistory();
        a1 = net.youmi.android.a.a.e.a.b;
        return a1;
        Throwable throwable;
        throwable;
        return net.youmi.android.a.a.e.a.c;
    }

    public void g()
    {
        try
        {
            if (a != null && a.canGoBack())
            {
                a.c();
                return;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        cancel();
        return;
    }

    public void h()
    {
    }

    public void i()
    {
        b();
    }

    public void j()
    {
    }

    public void k()
    {
        b();
    }

    public boolean l()
    {
        try
        {
            cancel();
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    public boolean m()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        a.clearHistory();
        return true;
        Throwable throwable;
        throwable;
        return false;
    }

    public void onBackPressed()
    {
        if (a != null && a.a())
        {
            return;
        } else
        {
            cancel();
            return;
        }
    }
}
