// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.storage;


// Referenced classes of package com.tencent.mm.sdk.storage:
//            MStorageEvent

class cc
    implements Runnable
{

    final Object cb;
    final Object cc;
    final MStorageEvent cd;

    public void run()
    {
        cd.processEvent(cb, cc);
    }

    (MStorageEvent mstorageevent, Object obj, Object obj1)
    {
        cd = mstorageevent;
        cb = obj;
        cc = obj1;
        super();
    }
}
