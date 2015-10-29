// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.tencent.sdkutil:
//            AsynLoadImg

class this._cls0 extends Handler
{

    final AsynLoadImg this$0;

    public void handleMessage(Message message)
    {
        Log.v("AsynLoadImg", (new StringBuilder()).append("handleMessage:").append(message.arg1).toString());
        if (message.arg1 == 0)
        {
            String s = (String)message.obj;
            setLocalImageLocalPath(s);
            AsynLoadImg.access$000(AsynLoadImg.this).saved(message.arg1, s);
            return;
        } else
        {
            AsynLoadImg.access$000(AsynLoadImg.this).saved(message.arg1, null);
            return;
        }
    }

    ynLoadImgBack()
    {
        this$0 = AsynLoadImg.this;
        super();
    }
}
