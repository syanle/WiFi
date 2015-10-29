// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import java.util.List;

// Referenced classes of package com.tencent.stat:
//            StatStore

class val.evs
    implements Runnable
{

    final StatStore this$0;
    final List val$evs;

    public void run()
    {
        StatStore.access$200(StatStore.this, val$evs);
    }

    ()
    {
        this$0 = final_statstore;
        val$evs = List.this;
        super();
    }
}
