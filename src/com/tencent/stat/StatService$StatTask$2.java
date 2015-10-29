// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;


// Referenced classes of package com.tencent.stat:
//            StatDispatchCallback, StatService, StatStore, StatConfig

class this._cls0
    implements StatDispatchCallback
{

    final eportCount this$0;

    public void onDispatchFailure()
    {
    }

    public void onDispatchSuccess()
    {
        if (StatStore.getInstance().getNumStoredEvents() >= StatConfig.getMaxBatchReportCount())
        {
            StatStore.getInstance().loadEvents(StatConfig.getMaxBatchReportCount());
        }
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
