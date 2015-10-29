// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.i.a;

import android.webkit.WebView;

public class a
    implements Runnable
{

    private WebView a;
    private String b;

    public a(WebView webview, String s)
    {
        a = webview;
        b = s;
    }

    public void run()
    {
        try
        {
            if (a != null && b != null)
            {
                a.loadUrl(b);
            }
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
