// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

// Referenced classes of package com.umeng.socialize.controller:
//            UMWXHandler

class this._cls0 extends Handler
{

    final UMWXHandler this$0;

    public void handleMessage(Message message)
    {
        if (message.what == 1 && UMWXHandler.a(UMWXHandler.this))
        {
            Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u56FE\u7247\u5927\u5C0F\u8D85\u8FC732KB\uFF0C\u6B63\u5728\u5BF9\u56FE\u7247\u8FDB\u884C\u538B\u7F29...", 0).show();
        } else
        if (message.what == 2)
        {
            Toast.makeText(UMWXHandler.b(UMWXHandler.this), "\u6807\u9898\u957F\u5EA6\u8D85\u8FC7512 Bytes...", 0).show();
            return;
        }
    }

    ()
    {
        this$0 = UMWXHandler.this;
        super();
    }
}
