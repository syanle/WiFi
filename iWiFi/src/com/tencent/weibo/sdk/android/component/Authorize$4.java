// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.ProgressDialog;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            Authorize

class this._cls0 extends WebViewClient
{

    final Authorize this$0;

    public void onPageFinished(WebView webview, String s)
    {
        Log.d("backurl", s);
        if (s.indexOf("access_token") != -1 && !Authorize.access$0(Authorize.this))
        {
            jumpResultParser(s);
        }
        if (Authorize.access$1(Authorize.this) != null && Authorize.access$1(Authorize.this).isShowing())
        {
            Authorize.access$1(Authorize.this).cancel();
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.indexOf("access_token") != -1 && !Authorize.access$0(Authorize.this))
        {
            jumpResultParser(s);
        }
        return false;
    }

    _cls9()
    {
        this$0 = Authorize.this;
        super();
    }
}
