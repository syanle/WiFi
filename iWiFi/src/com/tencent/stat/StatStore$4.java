// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import com.tencent.stat.event.Event;

// Referenced classes of package com.tencent.stat:
//            StatStore, StatDispatchCallback

class Callback
    implements Runnable
{

    final StatStore this$0;
    final StatDispatchCallback val$cb;
    final Event val$ev;

    public void run()
    {
        directStoreEvent(val$ev, val$cb);
    }

    Callback()
    {
        this$0 = final_statstore;
        val$ev = event;
        val$cb = StatDispatchCallback.this;
        super();
    }
}
