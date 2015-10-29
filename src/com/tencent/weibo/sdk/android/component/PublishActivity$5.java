// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0 extends TimerTask
{

    final PublishActivity this$0;

    public void run()
    {
        Message message = PublishActivity.access$8(PublishActivity.this).obtainMessage();
        message.what = 0;
        PublishActivity.access$8(PublishActivity.this).sendMessage(message);
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
