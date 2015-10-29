// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.content.Context;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import net.youmi.android.a.b.e.b;
import net.youmi.android.a.c.b.a;
import net.youmi.android.c.a.u;

// Referenced classes of package net.youmi.android.banner:
//            AdSize, BannerManager, e, AdViewListener

public class AdView extends RelativeLayout
{

    private static int h = 1;
    private static boolean i = true;
    protected AdViewListener a;
    protected AdSize b;
    protected int c;
    protected int d;
    private e e;
    private String f;
    private Context g;

    public AdView(Context context)
    {
        super(context);
        g = context;
        b = AdSize.FIT_SCREEN;
        setVisibility(8);
        i = a(context);
        if (!i)
        {
            net.youmi.android.a.c.b.a.b("Invalid Banner size for showing ads.");
            return;
        }
        f = BannerManager.checkPermissions(context);
        if (f != null && !f.equals(""))
        {
            a();
            h = 0;
            return;
        } else
        {
            net.youmi.android.a.b.e.b.a(u.a, "\u6B63\u5E38\u5E7F\u544A\u6A21\u5F0F!");
            h = 1;
            return;
        }
    }

    public AdView(Context context, AdSize adsize)
    {
        super(context);
        g = context;
        b = adsize;
        setVisibility(8);
        i = a(context);
        if (!i)
        {
            net.youmi.android.a.c.b.a.b("Invalid Banner size for showing ads.");
            return;
        }
        f = BannerManager.checkPermissions(context);
        if (f != null && !f.equals(""))
        {
            a();
            h = 0;
            return;
        } else
        {
            net.youmi.android.a.b.e.b.a(u.a, "\u6B63\u5E38\u5E7F\u544A\u6A21\u5F0F!");
            h = 1;
            return;
        }
    }

    private void a()
    {
        try
        {
            WebView webview = new WebView(g);
            webview.loadData((new StringBuilder()).append("<html>\n<body>\n").append(f).append("</body>\n").append("</html>").toString(), "text/html", "utf-8");
            addView(webview, new android.widget.RelativeLayout.LayoutParams(c, d));
            setVisibility(0);
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.b(u.a, throwable);
        }
    }

    private boolean a(Context context)
    {
        c = b.resizeWidth(context);
        d = b.resizeHeight(context);
        return d != 0 && c != 0;
    }

    public int getVisibility()
    {
        return super.getVisibility();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        try
        {
            if (i && h == 1)
            {
                if (e == null)
                {
                    e = new e(g, this);
                }
                e.a();
            }
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.b(u.a, throwable);
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        try
        {
            if (i && h == 1 && e != null)
            {
                e.b();
            }
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.b.e.b.b(u.a, throwable);
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag)
        {
            try
            {
                if (e != null)
                {
                    e.e = 1;
                    return;
                }
            }
            catch (Throwable throwable)
            {
                net.youmi.android.a.b.e.b.b(u.a, throwable);
            }
            break MISSING_BLOCK_LABEL_50;
        }
        if (e != null)
        {
            e.e = 2;
            return;
        }
    }

    public void setAdListener(AdViewListener adviewlistener)
    {
        a = adviewlistener;
    }

    public void setVisibility(int j)
    {
        if (getVisibility() != j) goto _L2; else goto _L1
_L1:
        return;
_L2:
        super.setVisibility(j);
        if (j == 0) goto _L1; else goto _L3
_L3:
        if (!i || h != 1 || e == null) goto _L1; else goto _L4
_L4:
        e.b();
        return;
        Throwable throwable;
        throwable;
    }

}
