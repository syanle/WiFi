// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import net.youmi.android.a.a.e.a.b;
import net.youmi.android.a.a.e.a.b.i;
import net.youmi.android.a.a.e.d.a;
import net.youmi.android.a.a.i.a.b.c;
import net.youmi.android.a.a.i.a.b.d;
import net.youmi.android.a.a.i.a.b.f;
import net.youmi.android.a.b.b.e;

// Referenced classes of package net.youmi.android.a.a.i.a:
//            h

public final class g extends WebView
    implements i, a, c, d, f
{

    private boolean a;
    private boolean b;
    private String c;
    private String d;
    private String e;
    private d f;
    private f g;
    private Context h;
    private net.youmi.android.a.a.i.a.a.c i;
    private String j;
    private String k;
    private String l;
    private String m;

    public g(Context context, net.youmi.android.a.a.i.a.a.c c1)
    {
        this(context, c1, null, null);
    }

    public g(Context context, net.youmi.android.a.a.i.a.a.c c1, net.youmi.android.a.a.e.a.a.b b1)
    {
        this(context, c1, b1, null);
    }

    public g(Context context, net.youmi.android.a.a.i.a.a.c c1, net.youmi.android.a.a.e.a.a.b b1, net.youmi.android.a.a.e.a.a.a a1)
    {
        super(context);
        a = false;
        b = false;
        h = context;
        i = c1;
        if (b1 != null)
        {
            b1 = new b(c1.a(), c1.b(), b1);
        } else
        {
            b1 = new b(c1.a(), c1.b());
        }
        b1.setYmWebBrowser(this);
        if (a1 != null)
        {
            b1.setExtendJsObject(a1);
        }
        a(context, c1, b1);
    }

    static Context a(g g1)
    {
        return g1.h;
    }

    private void a()
    {
        setScrollBarStyle(0x2000000);
        setBackgroundColor(0);
    }

    private void a(int i1)
    {
        boolean flag = true;
        WebSettings websettings;
        try
        {
            websettings = getSettings();
            websettings.setCacheMode(-1);
            websettings.setAllowFileAccess(true);
            websettings.setJavaScriptEnabled(true);
            websettings.setJavaScriptCanOpenWindowsAutomatically(true);
            websettings.setSupportMultipleWindows(false);
            websettings.setUseWideViewPort(true);
        }
        catch (Throwable throwable)
        {
            return;
        }
        if ((i1 & 2) == 0)
        {
            flag = false;
        }
        websettings.setSupportZoom(flag);
        websettings.setBuiltInZoomControls(flag);
        websettings.setSavePassword(true);
        websettings.setSaveFormData(true);
        try
        {
            net.youmi.android.a.a.c.a.a(h, websettings);
            websettings.setLayoutAlgorithm(android.webkit.WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            websettings.setUseWideViewPort(true);
            websettings.setLoadWithOverviewMode(true);
            websettings.setDomStorageEnabled(true);
            return;
        }
        catch (Throwable throwable1)
        {
            return;
        }
    }

    private void a(Context context, net.youmi.android.a.a.i.a.a.c c1, net.youmi.android.a.a.e.a.a a1)
    {
        try
        {
            c = c1.d();
            e = c1.e();
            f = c1.f();
            g = c1.g();
            a();
            a(c1.c());
            b();
            a(((f) (this)));
            a(((d) (this)));
            a(a1, c1.c());
            setEnableOffersJsCodeLoader(true);
            setEnableOffersJsFileLoader(true);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private void a(net.youmi.android.a.a.e.a.a a1, int i1)
    {
        if ((i1 & 1) == 0 || a1 == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        addJavascriptInterface(a1, "ymsdk");
        return;
        a1;
    }

    private void a(d d1)
    {
        try
        {
            d1 = net.youmi.android.a.a.c.a.a(h, i);
        }
        // Misplaced declaration of an exception variable
        catch (d d1)
        {
            return;
        }
        if (d1 == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        setWebChromeClient(d1);
    }

    private void a(f f1)
    {
        try
        {
            f1 = net.youmi.android.a.a.c.a.a(f1);
        }
        // Misplaced declaration of an exception variable
        catch (f f1)
        {
            return;
        }
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        setWebViewClient(f1);
    }

    private void b()
    {
        try
        {
            setDownloadListener(new h(this));
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void a(WebView webview, int i1)
    {
        try
        {
            if (f != null)
            {
                f.a(webview, i1);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void a(WebView webview, int i1, String s, String s1)
    {
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
        try
        {
            if (a)
            {
                net.youmi.android.a.a.e.e.a.a().a(h, this, s);
            }
        }
        catch (Throwable throwable3) { }
        try
        {
            if (b)
            {
                net.youmi.android.a.a.e.e.b.a().a(h, this, s);
            }
        }
        catch (Throwable throwable2) { }
        try
        {
            if (c != null)
            {
                if (d == null)
                {
                    d = (new StringBuilder()).append(net.youmi.android.a.b.b.e.a()).append(c).toString();
                }
                webview.loadUrl(d);
            }
        }
        catch (Throwable throwable1) { }
        try
        {
            if (e != null)
            {
                net.youmi.android.a.a.e.e.c.a(h, webview, e);
            }
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

    public void a(String s, String s1)
    {
        try
        {
            if (!net.youmi.android.a.b.i.i.a(s, getUrl()))
            {
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        loadUrl(s1);
        return;
    }

    public void a(String s, String s1, String s2, String s3)
    {
        try
        {
            s = net.youmi.android.a.b.b.e.b(s);
            s1 = net.youmi.android.a.b.b.e.b(s1);
            s2 = net.youmi.android.a.b.b.e.b(s2);
            s3 = net.youmi.android.a.b.b.e.b(s3);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        j = s;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        k = s1;
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        l = s2;
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        m = s3;
    }

    public boolean b(WebView webview, String s)
    {
        if (f != null)
        {
            return g.b(webview, s);
        } else
        {
            return false;
        }
    }

    public void c(WebView webview, String s)
    {
        try
        {
            if (f != null)
            {
                f.c(webview, s);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public boolean c()
    {
        if (!canGoBack())
        {
            break MISSING_BLOCK_LABEL_14;
        }
        goBack();
        return true;
        Throwable throwable;
        throwable;
        return false;
    }

    public boolean d()
    {
        if (!canGoForward())
        {
            break MISSING_BLOCK_LABEL_14;
        }
        goForward();
        return true;
        Throwable throwable;
        throwable;
        return false;
    }

    public void e()
    {
        try
        {
            onResume();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void g()
    {
        try
        {
            onPause();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public View getCurrentView()
    {
        return this;
    }

    public String getUserAgentString()
    {
        String s;
        try
        {
            s = getSettings().getUserAgentString();
        }
        catch (Throwable throwable)
        {
            return null;
        }
        return s;
    }

    public void h()
    {
        try
        {
            stopLoading();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        try
        {
            net.youmi.android.a.a.e.f.a.a().a(this);
        }
        catch (Throwable throwable1) { }
        try
        {
            if (j != null)
            {
                loadUrl((new StringBuilder()).append("javascript:").append(j).append("();").toString());
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        try
        {
            net.youmi.android.a.a.e.f.a.a().b(this);
        }
        catch (Throwable throwable1) { }
        try
        {
            if (k != null)
            {
                loadUrl((new StringBuilder()).append("javascript:").append(k).append("();").toString());
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        int i1;
        try
        {
            if (l == null)
            {
                break MISSING_BLOCK_LABEL_61;
            }
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        loadUrl((new StringBuilder()).append("javascript:").append(l).append("(").append(i1).append(");").toString());
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        try
        {
            if (m != null)
            {
                loadUrl((new StringBuilder()).append("javascript:").append(m).append("(").append(i1).append(");").toString());
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void setEnableOffersJsCodeLoader(boolean flag)
    {
        a = flag;
    }

    public void setEnableOffersJsFileLoader(boolean flag)
    {
        b = flag;
    }

    public void setUserAgentString(String s)
    {
        try
        {
            getSettings().setUserAgentString(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return;
        }
    }
}
