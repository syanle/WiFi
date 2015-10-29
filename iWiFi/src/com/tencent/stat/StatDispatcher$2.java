// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import java.util.List;

// Referenced classes of package com.tencent.stat:
//            StatDispatcher, StatDispatchCallback

class ack
    implements Runnable
{

    final StatDispatcher this$0;
    final StatDispatchCallback val$cb;
    final List val$evs;

    public void run()
    {
        sendHttpPost(val$evs, val$cb);
    }

    ack()
    {
        this$0 = final_statdispatcher;
        val$evs = list;
        val$cb = StatDispatchCallback.this;
        super();
    }
}
