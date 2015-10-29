// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.os.Handler;

// Referenced classes of package com.pubinfo.freewifialliance.service:
//            WifiConnService

class this._cls0
    implements Runnable
{

    final WifiConnService this$0;

    public void run()
    {
        isNight();
        handler.postDelayed(nightRunnable, 0x1b7740L);
    }

    ()
    {
        this$0 = WifiConnService.this;
        super();
    }
}
