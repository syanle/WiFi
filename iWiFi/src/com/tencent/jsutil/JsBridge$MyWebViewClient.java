// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.tencent.jsutil:
//            JsBridge

class this._cls0 extends WebViewClient
{

    final JsBridge this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        JsBridge.access$102(JsBridge.this, 100);
        long l = System.nanoTime() / 0xf4240L;
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        JsBridge.access$102(JsBridge.this, 0);
        long l = System.nanoTime() / 0xf4240L;
    }

    ()
    {
        this$0 = JsBridge.this;
        super();
    }
}
