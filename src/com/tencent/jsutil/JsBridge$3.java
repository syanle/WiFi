// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.jsutil:
//            JsBridge

class val.method
    implements Runnable
{

    final JsBridge this$0;
    final String val$method;

    public void run()
    {
        while (JsBridge.access$100(JsBridge.this) < 100) ;
        String s = (new StringBuilder()).append("javascript:").append(val$method).append(";").toString();
        Message message = new Message();
        message.what = 0;
        message.obj = s;
        handler.sendMessage(message);
    }

    ()
    {
        this$0 = final_jsbridge;
        val$method = String.this;
        super();
    }
}
