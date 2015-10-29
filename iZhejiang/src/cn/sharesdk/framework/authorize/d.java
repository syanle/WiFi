// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.authorize;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;

// Referenced classes of package cn.sharesdk.framework.authorize:
//            RegisterView

class d extends WebChromeClient
{

    final int a;
    final RegisterView b;

    d(RegisterView registerview, int i)
    {
        b = registerview;
        a = i;
        super();
    }

    public void onProgressChanged(WebView webview, int i)
    {
        super.onProgressChanged(webview, i);
        webview = (android.widget.LinearLayout.LayoutParams)RegisterView.a(b).getLayoutParams();
        webview.width = (a * i) / 100;
        RegisterView.a(b).setLayoutParams(webview);
        if (i > 0 && i < 100)
        {
            RegisterView.a(b).setVisibility(0);
            return;
        } else
        {
            RegisterView.a(b).setVisibility(8);
            return;
        }
    }
}
