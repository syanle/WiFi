// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import net.youmi.android.a.a.e.a;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.i.a.b.d;
import net.youmi.android.a.a.i.a.g;
import net.youmi.android.a.b.e.b;

// Referenced classes of package net.youmi.android.banner:
//            d

public class c
    implements f, d, net.youmi.android.a.a.i.a.b.f
{

    protected g a;
    protected h b;
    protected String c;
    private Context d;
    private net.youmi.android.banner.d e;
    private int f;
    private String g;
    private String h;

    public c(Context context, h h1)
    {
        f = 0;
        g = "";
        h = "";
        d = context;
        b = h1;
    }

    public void a()
    {
        net.youmi.android.a.a.i.a.a.c c1 = new net.youmi.android.a.a.i.a.a.c();
        c1.a(1);
        c1.a(this);
        c1.a(b);
        c1.a(this);
        c1.a(this);
        a = new g(d, c1);
        a.getSettings().setCacheMode(1);
        a.setEnableOffersJsFileLoader(false);
    }

    public void a(int i, String s, String s1, String s2)
    {
        f = i;
        g = s;
        h = s1;
        c = s2;
    }

    public void a(WebView webview, int i)
    {
    }

    public void a(WebView webview, int i, String s, String s1)
    {
    }

    public void a(WebView webview, String s)
    {
        try
        {
            if (e != null)
            {
                e.b(f);
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

    protected void a(net.youmi.android.banner.d d1)
    {
        e = d1;
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
        a.loadDataWithBaseURL("", c, "text/html", "utf-8", "");
    }

    public boolean b(WebView webview, String s)
    {
        return false;
    }

    public g c()
    {
        return a;
    }

    public void c(WebView webview, String s)
    {
    }

    public a f()
    {
        a a1;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        a.clearHistory();
        a1 = a.b;
        return a1;
        Throwable throwable;
        throwable;
        return null;
    }
}
