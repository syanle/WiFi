// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Looper;
import android.webkit.WebView;
import com.iwifi.sdk.protocol.impl.AuthenticatedMethodsUtils;

// Referenced classes of package com.pubinfo.izhejiang:
//            WebviewPage

class this._cls0 extends Thread
{

    final WebviewPage this$0;

    public void run()
    {
        super.run();
        Looper.prepare();
        String as[] = WebviewPage.access$1(WebviewPage.this).sync_getPortalUrl(url);
        if (as[0].equals("false"))
        {
            if (as[1].contains("200"))
            {
                WebviewPage.access$0(WebviewPage.this).loadUrl(url);
            } else
            {
                WebviewPage.access$0(WebviewPage.this).loadUrl("file:///android_asset/404.html");
            }
            Looper.loop();
            return;
        } else
        {
            WebviewPage.access$0(WebviewPage.this).loadUrl(url);
            return;
        }
    }

    catedMethodsUtils()
    {
        this$0 = WebviewPage.this;
        super();
    }
}
