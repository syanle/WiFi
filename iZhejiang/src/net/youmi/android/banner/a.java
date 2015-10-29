// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.i.a.a.c;
import net.youmi.android.a.a.i.a.b.d;
import net.youmi.android.a.a.i.a.g;
import net.youmi.android.a.b.e.b;

// Referenced classes of package net.youmi.android.banner:
//            b

public class a
    implements f, d, net.youmi.android.a.a.i.a.b.f
{

    protected g a;
    protected h b;
    protected String c;
    protected String d;
    protected String e;
    private Context f;
    private net.youmi.android.banner.b g;
    private int h;
    private String i;
    private String j;

    public a(Context context, h h1)
    {
        h = 0;
        i = "";
        j = "";
        f = context;
        b = h1;
    }

    public void a()
    {
        c c1 = new c();
        c1.a(1);
        c1.a(this);
        c1.a(b);
        c1.a(this);
        c1.a(this);
        a = new g(f, c1);
        a.getSettings().setCacheMode(1);
        a.setEnableOffersJsFileLoader(false);
    }

    public void a(int k, String s, String s1, String s2, String s3, String s4)
    {
        h = k;
        i = s;
        j = s1;
        d = s3;
        e = s2;
        c = s4;
    }

    public void a(WebView webview, int k)
    {
    }

    public void a(WebView webview, int k, String s, String s1)
    {
    }

    public void a(WebView webview, String s)
    {
        try
        {
            if (g != null)
            {
                g.a(h);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            net.youmi.android.a.b.e.b.a(webview);
        }
    }

    public void a(WebView webview, String s, Bitmap bitmap)
    {
    }

    protected void a(net.youmi.android.banner.b b1)
    {
        g = b1;
    }

    public boolean a(Runnable runnable)
    {
        boolean flag;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        flag = a.getCurrentView().post(runnable);
        return flag;
        runnable;
        return false;
    }

    public void b()
    {
        if (e != null && !e.equals(""))
        {
            net.youmi.android.a.a.e.e.a.a().a(c, e);
        }
        if (d != null && !d.equals(""))
        {
            net.youmi.android.a.a.e.e.a.a().a(c, d);
        }
    }

    public boolean b(WebView webview, String s)
    {
        return false;
    }

    public void c()
    {
        a.loadUrl(c);
    }

    public void c(WebView webview, String s)
    {
    }

    public void d()
    {
        a.loadUrl((new StringBuilder()).append("javascript:").append(e).toString());
    }

    public g e()
    {
        return a;
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
        return null;
    }
}
