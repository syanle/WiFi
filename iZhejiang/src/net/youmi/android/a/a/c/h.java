// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import net.youmi.android.a.a.i.a.b.f;

class h extends WebViewClient
{

    private f a;

    h(f f1)
    {
        a = f1;
    }

    static h a(f f1)
    {
        try
        {
            f1 = new h(f1);
        }
        // Misplaced declaration of an exception variable
        catch (f f1)
        {
            return null;
        }
        return f1;
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        try
        {
            if (a != null)
            {
                a.a(webview, s);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        try
        {
            if (a != null)
            {
                a.a(webview, s, bitmap);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        try
        {
            if (a != null)
            {
                a.a(webview, i, s, s1);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        return a.b(webview, s);
    }
}
