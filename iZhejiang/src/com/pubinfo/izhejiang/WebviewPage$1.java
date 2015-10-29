// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;

// Referenced classes of package com.pubinfo.izhejiang:
//            WebviewPage

class this._cls0 extends Handler
{

    final WebviewPage this$0;

    public void handleMessage(Message message)
    {
        if (message.what == 404)
        {
            WebviewPage.access$0(WebviewPage.this).loadUrl("file:///android_asset/404.html");
            return;
        } else
        {
            WebviewPage.access$0(WebviewPage.this).loadUrl(url);
            return;
        }
    }

    ()
    {
        this$0 = WebviewPage.this;
        super();
    }
}
