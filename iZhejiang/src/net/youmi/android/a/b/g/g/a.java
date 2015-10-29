// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.g.g;

import android.content.Context;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import net.youmi.android.a.b.g.d.f;

// Referenced classes of package net.youmi.android.a.b.g.g:
//            b, c

public class a extends WebView
    implements DownloadListener, Runnable
{

    private f a;
    private String b;
    private String c;
    private boolean d;

    public a(Context context, f f1, String s, String s1)
    {
        super(context);
        d = false;
        setDownloadListener(this);
        a = f1;
        a();
        setWebChromeClient(new b());
        setWebViewClient(new c());
        c = s;
        b = s1;
    }

    public void a()
    {
        try
        {
            WebSettings websettings = getSettings();
            websettings.setJavaScriptEnabled(true);
            websettings.setJavaScriptCanOpenWindowsAutomatically(false);
            websettings.setCacheMode(-1);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void b()
    {
        loadUrl(c);
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
        try
        {
            if (a != null)
            {
                s = new net.youmi.android.a.b.g.e.a(s, b, l);
                s.b(c);
                a.a(this, s, s1, s2, s3);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        d = true;
    }

    public void run()
    {
        net.youmi.android.a.b.g.e.a a1;
        try
        {
            Thread.sleep(60000L);
        }
        catch (Throwable throwable) { }
        try
        {
            if (a == null)
            {
                return;
            }
        }
        catch (Throwable throwable1)
        {
            return;
        }
        if (d)
        {
            a.a(this);
            return;
        }
        a1 = new net.youmi.android.a.b.g.e.a(c, b);
        a.a(this, a1);
        return;
    }
}
