// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            Authorize

class this._cls0 extends Handler
{

    final Authorize this$0;

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        switch (message.what)
        {
        default:
            return;

        case 100: // 'd'
            showDialog(4);
            break;
        }
    }

    _cls9()
    {
        this$0 = Authorize.this;
        super();
    }
}
