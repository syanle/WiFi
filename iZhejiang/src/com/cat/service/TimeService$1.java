// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.service;

import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.cat.service:
//            TimeService

class this._cls0
    implements Runnable
{

    final TimeService this$0;

    public void run()
    {
        TimeService timeservice = TimeService.this;
        TimeService.access$1(timeservice, TimeService.access$0(timeservice) + 1);
        intents.setAction("com.settings.timer");
        intents.putExtra("times", TimeService.access$0(TimeService.this));
        sendBroadcast(intents);
        handler.postDelayed(this, 1000L);
    }

    ()
    {
        this$0 = TimeService.this;
        super();
    }
}
