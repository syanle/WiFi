// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.weibo.sdk.android.api.util.Util;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

class this._cls0
    implements Runnable
{

    final PublishActivity this$0;

    public void run()
    {
        Looper.prepare();
        Message message = PublishActivity.access$8(PublishActivity.this).obtainMessage();
        message.what = 15;
        if (PublishActivity.access$9(PublishActivity.this) == null)
        {
            PublishActivity.access$11(PublishActivity.this, Util.getLocation(PublishActivity.access$10(PublishActivity.this)));
            if (PublishActivity.access$9(PublishActivity.this) != null)
            {
                message.what = 10;
            }
        }
        PublishActivity.access$8(PublishActivity.this).sendMessage(message);
        Looper.loop();
    }

    ()
    {
        this$0 = PublishActivity.this;
        super();
    }
}
