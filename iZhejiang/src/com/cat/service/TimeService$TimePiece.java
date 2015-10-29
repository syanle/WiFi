// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.service;

import android.content.Intent;
import android.os.CountDownTimer;

// Referenced classes of package com.cat.service:
//            TimeService

class this._cls0 extends CountDownTimer
{

    final TimeService this$0;

    public void onFinish()
    {
        intents.setAction("com.settings.timer");
        intents.putExtra("times", 0);
        sendBroadcast(intents);
    }

    public void onTick(long l)
    {
        intents.setAction("com.settings.timer");
        intents.putExtra("times", (int)l / 1000);
        sendBroadcast(intents);
    }

    public (long l, long l1)
    {
        this$0 = TimeService.this;
        super(l, l1);
    }
}
