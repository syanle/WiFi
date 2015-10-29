// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;
import com.tencent.tauth.UiError;
import org.json.JSONObject;

// Referenced classes of package com.tencent.jsutil:
//            JsTokenListener

class this._cls0 extends Handler
{

    final JsTokenListener this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            message = (JSONObject)message.obj;
            JsTokenListener.access$000(JsTokenListener.this, message);
            return;

        case 1: // '\001'
            message = (UiError)message.obj;
            JsTokenListener.access$100(JsTokenListener.this, message);
            return;

        case 2: // '\002'
            JsTokenListener.access$200(JsTokenListener.this);
            break;
        }
    }

    ()
    {
        this$0 = JsTokenListener.this;
        super();
    }
}
