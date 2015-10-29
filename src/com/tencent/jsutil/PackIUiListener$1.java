// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import android.os.Handler;
import android.os.Message;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONObject;

// Referenced classes of package com.tencent.jsutil:
//            PackIUiListener

class this._cls0 extends Handler
{

    final PackIUiListener this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            message = (JSONObject)message.obj;
            PackIUiListener.access$000(PackIUiListener.this).onComplete(message);
            return;

        case 1: // '\001'
            PackIUiListener.access$000(PackIUiListener.this).onCancel();
            return;

        case 2: // '\002'
            message = (UiError)message.obj;
            break;
        }
        PackIUiListener.access$000(PackIUiListener.this).onError(message);
    }

    ()
    {
        this$0 = PackIUiListener.this;
        super();
    }
}
