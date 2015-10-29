// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mob.tools.SSDKWebViewClient;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            g, AuthorizeHelper, AuthorizeListener

public abstract class b extends SSDKWebViewClient
{

    protected g a;
    protected String b;
    protected AuthorizeListener c;

    public b(g g1)
    {
        a = g1;
        g1 = g1.a();
        b = g1.getRedirectUri();
        c = g1.getAuthorizeListener();
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        webview.stopLoading();
        webview = a.a().getAuthorizeListener();
        a.finish();
        if (webview != null)
        {
            webview.onError(new Throwable((new StringBuilder()).append(s).append(" (").append(i).append("): ").append(s1).toString()));
        }
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        sslerrorhandler.proceed();
    }
}
