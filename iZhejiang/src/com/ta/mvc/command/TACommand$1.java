// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import android.os.Handler;
import android.os.Message;
import com.ta.mvc.common.TAIResponseListener;

// Referenced classes of package com.ta.mvc.command:
//            TACommand

class this._cls0 extends Handler
{

    final TACommand this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            TACommand.access$0(TACommand.this).onStart();
            return;

        case 2: // '\002'
            TACommand.access$0(TACommand.this).onRuning(getResponse());
            return;

        case 4: // '\004'
            TACommand.access$0(TACommand.this).onSuccess(getResponse());
            return;

        case 3: // '\003'
            TACommand.access$0(TACommand.this).onFailure(getResponse());
            return;

        case 5: // '\005'
            TACommand.access$0(TACommand.this).onFinish();
            break;
        }
    }

    stener()
    {
        this$0 = TACommand.this;
        super();
    }
}
