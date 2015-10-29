// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import java.util.Timer;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.h.a;
import net.youmi.android.a.a.i.a.b.c;
import net.youmi.android.a.a.i.a.b.d;
import net.youmi.android.a.a.i.a.b.e;
import net.youmi.android.a.a.i.a.b.g;
import net.youmi.android.a.a.j.b.l;
import net.youmi.android.a.b.k.i;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            i, k, j, g, 
//            d, f, c

public class b
    implements android.view.View.OnClickListener, f, net.youmi.android.a.a.i.a.b.b, c, d, net.youmi.android.a.a.i.a.b.f
{

    boolean a;
    boolean b;
    boolean c;
    String d;
    private net.youmi.android.a.a.e.d.b e;
    private c f;
    private e g;
    private RelativeLayout h;
    private net.youmi.android.a.a.i.a.i i;
    private k j;
    private j k;
    private Timer l;
    private l m;
    private Context n;
    private boolean o;
    private net.youmi.android.a.a.i.a.f p;

    public b(Context context, h h1, int i1, net.youmi.android.a.a.e.d.b b1, String s, String s1, int j1, 
            net.youmi.android.a.a.e.a.a.b b2, l l1)
    {
        a = false;
        b = false;
        c = false;
        o = false;
        n = context;
        e = b1;
        h = new RelativeLayout(context);
        h.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        b1 = new net.youmi.android.a.a.i.a.a.c();
        b1.a(i1);
        b1.a(this);
        b1.a(this);
        b1.a(this);
        b1.a(s);
        b1.b(s1);
        b1.a(h1);
        h1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        if ((i1 & 0x40) != 0)
        {
            o = true;
            net.youmi.android.a.a.i.a.b.g.a().a(this);
        } else
        {
            o = false;
        }
        if ((i1 & 0x20) != 0)
        {
            i = new net.youmi.android.a.a.i.a.i(n, b1, b2);
            if (l1 != null)
            {
                m = l1;
                i.setOnRefreshListener(m);
            }
            f = (c)i.getRefreshableView();
            h.addView(i, h1);
            i.setVisibility(8);
        } else
        {
            f = new net.youmi.android.a.a.i.a.g(n, b1, b2);
            CookieManager.getInstance().setAcceptCookie(true);
            h.addView(f.getCurrentView(), h1);
        }
        j = new k(n);
        j.a((new StringBuilder()).append(net.youmi.android.a.a.h.a.x()).append(" 0%").toString());
        h1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        h1.addRule(13);
        h.addView(j, h1);
        j.bringToFront();
        k = new j(context);
        context = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        h.addView(k, context);
        k.b().setOnClickListener(this);
        k.a().setOnClickListener(this);
        k.bringToFront();
        k.setVisibility(8);
    }

    static k a(b b1)
    {
        return b1.j;
    }

    static net.youmi.android.a.a.i.a.f b(b b1)
    {
        return b1.p;
    }

    private void k()
    {
        if (j != null && !c)
        {
            j.setVisibility(0);
            if (l != null)
            {
                l.cancel();
                l.purge();
                l = null;
            }
            if (l == null)
            {
                l = new Timer();
            }
            c = true;
            l.schedule(new net.youmi.android.a.a.i.a.d(this), 0L, 30L);
        }
    }

    private void l()
    {
        if (j != null)
        {
            if (l != null)
            {
                l.cancel();
                l.purge();
                l = null;
            }
            j.setVisibility(8);
            c = false;
        }
    }

    public void a(WebView webview, int i1)
    {
    }

    public void a(WebView webview, int i1, String s, String s1)
    {
        if (o && i != null)
        {
            i.f();
        }
        try
        {
            l();
            b = false;
            a = true;
        }
        catch (Throwable throwable1) { }
        try
        {
            k.a(net.youmi.android.a.a.h.a.w());
            f.getCurrentView().setVisibility(8);
            k.setVisibility(0);
        }
        catch (Throwable throwable) { }
        try
        {
            if (g != null)
            {
                g.a(webview, i1, s, s1);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(WebView webview, String s)
    {
        if (o && i != null)
        {
            i.f();
        }
        try
        {
            l();
            b = false;
        }
        catch (Throwable throwable) { }
        try
        {
            if (g != null)
            {
                g.a(webview, s);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(WebView webview, String s, Bitmap bitmap)
    {
        try
        {
            if (!o)
            {
                k();
            }
            b = true;
        }
        catch (Throwable throwable) { }
        try
        {
            if (g != null)
            {
                g.a(webview, s, bitmap);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(e e1)
    {
        g = e1;
    }

    public boolean a()
    {
        boolean flag;
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        flag = f.c();
        return flag;
        Throwable throwable;
        throwable;
        return false;
    }

    public boolean a(Runnable runnable)
    {
        if (runnable == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        boolean flag = net.youmi.android.a.b.k.m.a().a(runnable);
        return flag;
        runnable;
        return false;
    }

    public net.youmi.android.a.a.i.a.i b()
    {
        return i;
    }

    public boolean b(WebView webview, String s)
    {
        return false;
    }

    public void c(WebView webview, String s)
    {
        if (e != null)
        {
            e.a(s);
        }
    }

    public boolean c()
    {
        return f.c();
    }

    public boolean canGoBack()
    {
        return f.canGoBack();
    }

    public boolean canGoForward()
    {
        return f.canGoForward();
    }

    public void clearHistory()
    {
        f.clearHistory();
    }

    public boolean d()
    {
        return f.d();
    }

    public void e()
    {
        f.e();
    }

    public net.youmi.android.a.a.e.a f()
    {
        net.youmi.android.a.a.e.a a1;
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        f.clearHistory();
        a1 = net.youmi.android.a.a.e.a.b;
        return a1;
        Throwable throwable;
        throwable;
        return null;
    }

    public void g()
    {
        f.g();
    }

    public View getCurrentView()
    {
        return h;
    }

    public void h()
    {
        f.h();
    }

    public void i()
    {
        if (!o);
    }

    public void j()
    {
        if (o && p != null)
        {
            String s1 = p.a;
            String s = s1;
            if (!net.youmi.android.a.b.b.e.a(p.a))
            {
                s = s1;
                if (p.a.contains("null"))
                {
                    s = p.a.replace("null", net.youmi.android.a.a.e.g.e.p());
                }
            }
            net.youmi.android.a.b.k.m.a().a(new net.youmi.android.a.a.i.a.c(this, s));
        }
    }

    public void loadUrl(String s)
    {
        if (!o || net.youmi.android.a.a.i.a.b.g.a().d()) goto _L2; else goto _L1
_L1:
        k();
        if (p == null)
        {
            p = new net.youmi.android.a.a.i.a.f(this);
        }
        p.a = s;
        p.c = 1;
_L4:
        return;
_L2:
        try
        {
            if (i != null)
            {
                i.setVisibility(0);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null) goto _L4; else goto _L3
_L3:
        if (f == null) goto _L4; else goto _L5
_L5:
        b = false;
        a = false;
        d = s;
        f.loadUrl(s);
        return;
    }

    public void onClick(View view)
    {
        if (view == k.b())
        {
            f.reload();
            k.setVisibility(8);
            f.getCurrentView().setVisibility(0);
            return;
        }
        try
        {
            if (view == k.a())
            {
                net.youmi.android.a.b.k.i.a(n);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (View view) { }
        return;
    }

    public void postUrl(String s, byte abyte0[])
    {
        if (!o || net.youmi.android.a.a.i.a.b.g.a().d()) goto _L2; else goto _L1
_L1:
        k();
        if (p == null)
        {
            p = new net.youmi.android.a.a.i.a.f(this);
        }
        p.a = s;
        p.c = 2;
        p.b = abyte0;
_L4:
        return;
_L2:
        try
        {
            if (i != null)
            {
                i.setVisibility(0);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null) goto _L4; else goto _L3
_L3:
        if (f == null) goto _L4; else goto _L5
_L5:
        b = false;
        a = false;
        d = s;
        f.postUrl(d, abyte0);
        return;
    }

    public void reload()
    {
        if (o && !net.youmi.android.a.a.i.a.b.g.a().d())
        {
            if (p == null)
            {
                p = new net.youmi.android.a.a.i.a.f(this);
            }
            p.c = 3;
        } else
        {
            try
            {
                if (i != null)
                {
                    i.setVisibility(0);
                }
                if (f != null)
                {
                    b = false;
                    a = false;
                    f.reload();
                    return;
                }
            }
            catch (Throwable throwable)
            {
                return;
            }
        }
    }
}
