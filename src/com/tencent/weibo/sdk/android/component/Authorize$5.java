// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import com.tencent.weibo.sdk.android.api.util.Util;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            Authorize

class this._cls0
    implements android.content.ace.OnClickListener
{

    final Authorize this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (Util.isNetworkAvailable(Authorize.this))
        {
            webView.loadUrl(path);
            return;
        } else
        {
            dialoginterface = Message.obtain();
            dialoginterface.what = 100;
            handle.sendMessage(dialoginterface);
            return;
        }
    }

    _cls9()
    {
        this$0 = Authorize.this;
        super();
    }
}
