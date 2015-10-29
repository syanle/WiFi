// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.tencent.jsutil:
//            JsBridge

class val.params
    implements Runnable
{

    final JsBridge this$0;
    final String val$method;
    final String val$params[];

    public void run()
    {
        while (JsBridge.access$100(JsBridge.this) < 100) ;
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("javascript:");
        stringbuffer.append(val$method);
        stringbuffer.append("(");
        if (val$params != null)
        {
            int i = 0;
            while (i < val$params.length) 
            {
                try
                {
                    Integer.valueOf(val$params[i]);
                    stringbuffer.append(val$params[i]);
                }
                catch (Exception exception)
                {
                    stringbuffer.append((new StringBuilder()).append("'").append(JsBridge.access$200(JsBridge.this, val$params[i])).append("'").toString());
                }
                if (i != val$params.length - 1)
                {
                    stringbuffer.append(",");
                }
                i++;
            }
        }
        stringbuffer.append(");");
        Log.i("JsBridge", (new StringBuilder()).append("excuteMethod:").append(stringbuffer.toString()).toString());
        Message message = new Message();
        message.what = 0;
        message.obj = stringbuffer.toString();
        handler.sendMessage(message);
    }

    ()
    {
        this$0 = final_jsbridge;
        val$method = s;
        val$params = _5B_Ljava.lang.String_3B_.this;
        super();
    }
}
