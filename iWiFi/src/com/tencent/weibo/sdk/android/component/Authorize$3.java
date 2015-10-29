// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.util.Log;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            Authorize

class this._cls0 extends WebChromeClient
{

    final Authorize this$0;

    public void onProgressChanged(WebView webview, int i)
    {
        super.onProgressChanged(webview, i);
        Log.d("newProgress", (new StringBuilder(String.valueOf(i))).append("..").toString());
    }

    _cls9()
    {
        this$0 = Authorize.this;
        super();
    }
}
