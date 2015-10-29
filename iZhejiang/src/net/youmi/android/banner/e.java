// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.util.List;
import java.util.Timer;
import net.youmi.android.AdBrowser;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.g.d;
import net.youmi.android.a.a.g.e.c;
import net.youmi.android.a.a.i.a.g;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.c.b.a;
import net.youmi.android.c.a.f;
import net.youmi.android.c.a.u;

// Referenced classes of package net.youmi.android.banner:
//            b, d, g, AdView, 
//            AdViewListener, h, BannerManager, c, 
//            f, a

public class e
    implements h, net.youmi.android.banner.b, net.youmi.android.banner.d
{

    public Context a;
    protected Handler b;
    protected AdView c;
    int d;
    public int e;
    net.youmi.android.banner.g f;
    net.youmi.android.banner.a g;
    net.youmi.android.banner.c h;
    private int i;
    private int j;
    private Timer k;
    private net.youmi.android.banner.f l;

    protected e(Context context, AdView adview)
    {
        i = 30000;
        b = new Handler();
        d = 0;
        j = 0;
        e = 0;
        f = new net.youmi.android.banner.g(this);
        a = context;
        c = adview;
        k = new Timer();
    }

    static int a(e e1)
    {
        return e1.j;
    }

    static void a(e e1, net.youmi.android.banner.h h1)
    {
        e1.b(h1);
    }

    private void b(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        if (!s.equals(""))
        {
            break MISSING_BLOCK_LABEL_52;
        }
        net.youmi.android.a.c.b.a.d("\u7F51\u7EDC\u8FDE\u63A5\u5931\u8D25\uFF0C\u7B49\u5F8530s\u540E\u518D\u6B21\u8BF7\u6C42");
        i = 30000;
        if (c.a != null)
        {
            c.a.onFailedToReceivedAd(c);
            return;
        }
        break MISSING_BLOCK_LABEL_411;
        org.json.JSONObject jsonobject;
        int i1;
        jsonobject = net.youmi.android.a.b.b.b.a(s);
        i1 = net.youmi.android.a.b.b.b.a(jsonobject, "c", -1);
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        int j1;
        i1 = net.youmi.android.a.b.b.b.a(jsonobject, o(), 0);
        s = net.youmi.android.a.b.b.b.a(jsonobject, "rsd", null);
        s1 = net.youmi.android.a.b.b.b.a(jsonobject, "e", null);
        s2 = net.youmi.android.a.b.b.b.a(jsonobject, "html", null);
        s3 = net.youmi.android.a.b.b.b.a(jsonobject, "jsc", "");
        s4 = net.youmi.android.a.b.b.b.a(jsonobject, "jsc", "");
        s5 = net.youmi.android.a.b.b.b.a(jsonobject, "plc", "");
        j1 = net.youmi.android.a.b.b.b.a(jsonobject, "st", 30);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if ("".equals(s) || s1 == null)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if (s1.equals("") || s2 == null)
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if (s2.equals(""))
        {
            break MISSING_BLOCK_LABEL_411;
        }
        j = i1;
        net.youmi.android.a.b.e.b.a(u.a, (new StringBuilder()).append("bannerId is:").append(i1).toString());
        net.youmi.android.banner.h h1 = new net.youmi.android.banner.h();
        h1.a(i1);
        h1.b(s1);
        h1.c(s2);
        h1.d(s3);
        h1.e(s4);
        h1.a(s);
        h1.b(j1);
        h1.f(s5);
        BannerManager.setBannerObject(i1, h1);
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_310;
        }
        i = j1 * 1000;
        e = 1;
        f.sendEmptyMessage(1);
        if (c.a != null)
        {
            c.a.onReceivedAd(c);
            return;
        }
        break MISSING_BLOCK_LABEL_411;
        s;
        net.youmi.android.a.b.e.b.b(s);
        return;
        s;
        throw s;
        net.youmi.android.a.c.b.a.c("YoumiAd request result code:%d, %s", new Object[] {
            Integer.valueOf(i1), net.youmi.android.c.a.f.a(i1)
        });
        if (c.a != null)
        {
            c.a.onFailedToReceivedAd(c);
        }
    }

    private void b(net.youmi.android.banner.h h1)
    {
        try
        {
            int i1 = h1.a();
            String s = h1.b();
            String s1 = h1.c();
            h1 = h1.g();
            if (h == null)
            {
                h = new net.youmi.android.banner.c(a, this);
                h.a();
                h.a(this);
            }
            h.a(i1, s, s1, h1);
            h.b();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.banner.h h1)
        {
            net.youmi.android.a.c.b.a.b(h1);
        }
    }

    private String n()
    {
        String s;
        try
        {
            s = net.youmi.android.c.a.b.a(a, c.b);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.b(throwable);
            return "";
        }
        return s;
    }

    private static String o()
    {
        String s;
        try
        {
            s = net.youmi.android.a.c.a.a.b("5b54565655455d50", "android");
        }
        catch (Exception exception)
        {
            return "";
        }
label0:
        {
            if (s != null)
            {
                return s;
            }
            break label0;
        }
    }

    public String a(String s, String s1)
    {
        try
        {
            s = net.youmi.android.a.a.g.d.a.a(h(), s, s1, 500);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public String a(net.youmi.android.a.a.e.g.b b1)
    {
        try
        {
            b1 = net.youmi.android.a.a.g.d.a.a(h(), b1);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.b b1)
        {
            return null;
        }
        return b1;
    }

    public net.youmi.android.a.a.e.a a(int i1, net.youmi.android.a.a.e.g.b b1)
    {
        try
        {
            net.youmi.android.a.c.a.a(new net.youmi.android.a.a.g.d.a.f(a, b1, i1));
            b1 = net.youmi.android.a.a.e.a.b;
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.b b1)
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
            return net.youmi.android.a.a.e.a.a;
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
        try
        {
            net.youmi.android.a.a.g.c.a.a(a).a(a1, f1);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.a a1)
        {
            return net.youmi.android.a.a.e.a.a;
        }
        return net.youmi.android.a.a.e.a.b;
    }

    public net.youmi.android.a.a.e.a a(net.youmi.android.a.a.e.g.c c1)
    {
        return net.youmi.android.a.a.e.a.a;
    }

    public net.youmi.android.a.a.e.a a(d d1)
    {
        try
        {
            net.youmi.android.a.c.b.a.d("\u6253\u5F00\u65B0\u7684\u6D4F\u89C8\u5668");
            d1 = d1.a(0);
            Intent intent = new Intent(a, net/youmi/android/AdBrowser);
            intent.putExtra("aca5522945c72310f9f22b333c68f2b3", d1);
            intent.setFlags(0x10000000);
            a.startActivity(intent);
        }
        // Misplaced declaration of an exception variable
        catch (d d1)
        {
            return net.youmi.android.a.a.e.a.c;
        }
        return net.youmi.android.a.a.e.a.b;
    }

    public net.youmi.android.a.a.e.a a(net.youmi.android.a.a.e.g.g g1)
    {
        return null;
    }

    protected void a()
    {
        try
        {
            e = 0;
            l = new net.youmi.android.banner.f(this);
            if (k == null)
            {
                k = new Timer();
            }
            k.schedule(l, 0L, 30000L);
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.b(throwable);
        }
    }

    public void a(int i1)
    {
        if (BannerManager.getBannerObject(i1) != null)
        {
            if (c.getChildCount() == 0)
            {
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(c.c, c.d);
                c.addView(g.e().getCurrentView(), layoutparams);
            }
            c.setVisibility(0);
            g.a.setVisibility(0);
            e = 1;
            net.youmi.android.a.c.b.a.d("\u5207\u6362\u5E7F\u544A");
            if (c.a != null)
            {
                c.a.onSwitchedAd(c);
            }
        }
    }

    public void a(net.youmi.android.a.a.i.a.b.a a1)
    {
    }

    public void a(net.youmi.android.banner.h h1)
    {
        Object obj = net.youmi.android.a.a.e.b.d.a(a).a((new StringBuilder()).append(net.youmi.android.c.a.c.r()).append(net.youmi.android.banner.BannerManager.a()).toString());
        if (obj != null) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        String s2;
        int i1;
        try
        {
            d = 0;
        }
        catch (Throwable throwable)
        {
            try
            {
                net.youmi.android.a.b.e.b.b(u.a, throwable);
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.banner.h h1)
            {
                net.youmi.android.a.c.b.a.b(h1);
                return;
            }
        }
        i1 = h1.a();
        obj = h1.b();
        s = h1.c();
        s1 = h1.e();
        s2 = h1.f();
        h1 = h1.d();
        if (g == null)
        {
            g = new net.youmi.android.banner.a(a, this);
            g.a();
            g.a(this);
        }
        g.a.setBackgroundColor(0);
        g.a(i1, ((String) (obj)), s, s1, s2, h1);
        if (d != 1)
        {
            break MISSING_BLOCK_LABEL_270;
        }
        net.youmi.android.a.a.e.b.d.a(a).b((new StringBuilder()).append(net.youmi.android.c.a.c.r()).append(net.youmi.android.banner.BannerManager.a()).toString());
        g.d();
        net.youmi.android.a.c.b.a.d("\u5207\u6362\u5E7F\u544A");
        if (c.a != null)
        {
            c.a.onSwitchedAd(c);
        }
_L3:
        net.youmi.android.banner.BannerManager.a(i1);
        c();
        return;
_L2:
        obj = ((net.youmi.android.a.a.e.b.a) (obj)).b();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        d = Integer.valueOf(((String) (obj))).intValue();
        break MISSING_BLOCK_LABEL_42;
        g.b();
        g.c();
        d = 1;
          goto _L3
    }

    public net.youmi.android.a.a.e.a b(net.youmi.android.a.a.e.g.g g1)
    {
        try
        {
            net.youmi.android.a.a.i.a.a.d.b(a, g1).show();
            net.youmi.android.a.c.b.a.d("\u4E0D\u652F\u6301\u6253\u5F00\u65B0\u7684dialog");
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.g.g g1) { }
        return net.youmi.android.a.a.e.a.a;
    }

    protected void b()
    {
        try
        {
            e = 3;
            k.cancel();
            l.cancel();
            k = null;
            l = null;
            d();
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.b(throwable);
        }
    }

    public void b(int i1)
    {
        net.youmi.android.banner.h h1 = BannerManager.getBannerObject(i1);
        if (h1 != null)
        {
            a(h1);
        }
    }

    public net.youmi.android.a.a.e.a c(int i1)
    {
        try
        {
            g.a.setVisibility(i1);
        }
        catch (Throwable throwable)
        {
            return net.youmi.android.a.a.e.a.a;
        }
        return net.youmi.android.a.a.e.a.b;
    }

    protected void c()
    {
        if (k != null)
        {
            k.cancel();
            k = null;
        }
        k = new Timer();
        l.cancel();
        l = null;
        l = new net.youmi.android.banner.f(this);
        k.schedule(l, i, 30000L);
    }

    public void d()
    {
        try
        {
            if (c != null)
            {
                c.removeAllViews();
            }
            if (g != null)
            {
                g.e().destroy();
                g = null;
            }
            if (h != null)
            {
                h.c().destroy();
                h = null;
            }
            net.youmi.android.a.a.e.b.d.a(a).b((new StringBuilder()).append(net.youmi.android.c.a.c.r()).append(net.youmi.android.banner.BannerManager.a()).toString());
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.b(throwable);
        }
    }

    protected void e()
    {
        f();
    }

    protected void f()
    {
        b(n());
    }

    public Activity g()
    {
        return null;
    }

    public Context h()
    {
        return a.getApplicationContext();
    }

    public net.youmi.android.a.a.e.a i()
    {
        c.setVisibility(8);
        return net.youmi.android.a.a.e.a.b;
    }

    public net.youmi.android.a.a.e.a j()
    {
        try
        {
            g.e().reload();
        }
        catch (Throwable throwable)
        {
            return net.youmi.android.a.a.e.a.c;
        }
        return net.youmi.android.a.a.e.a.b;
    }

    public int k()
    {
        return 500;
    }

    public int l()
    {
        return 1;
    }

    public int m()
    {
        return 8;
    }
}
