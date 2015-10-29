// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

// Referenced classes of package com.umeng.socialize.controller:
//            UMQQSsoHandler

class this._cls0
    implements Runnable
{

    final UMQQSsoHandler this$0;

    public void run()
    {
        UMQQSsoHandler.access$0(UMQQSsoHandler.this, true);
        Toast.makeText(UMQQSsoHandler.mActivity, "\u7F51\u7EDC\u8D85\u65F6, \u8BF7\u91CD\u8BD5...", 0).show();
        Message message = Message.obtain(UMQQSsoHandler.access$1(UMQQSsoHandler.this));
        message.what = 123;
        UMQQSsoHandler.access$1(UMQQSsoHandler.this).sendMessage(message);
    }

    ()
    {
        this$0 = UMQQSsoHandler.this;
        super();
    }
}
