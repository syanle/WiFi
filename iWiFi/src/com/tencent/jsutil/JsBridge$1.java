// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.webkit.WebView;

// Referenced classes of package com.tencent.jsutil:
//            JsBridge

class this._cls0 extends Handler
{

    final JsBridge this$0;

    public void handleMessage(Message message)
    {
        Log.i("JsBridge", "handleMessage");
        if (message.what == 0)
        {
            message = (String)message.obj;
            Log.i("JsBridge", (new StringBuilder()).append("url =").append(message).toString());
            JsBridge.access$000(JsBridge.this).loadUrl(message);
        }
    }

    ()
    {
        this$0 = JsBridge.this;
        super();
    }
}
