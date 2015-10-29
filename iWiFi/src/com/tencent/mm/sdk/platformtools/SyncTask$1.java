// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            SyncTask, Util

class bk
    implements Runnable
{

    final SyncTask bk;

    public void run()
    {
        SyncTask.a(bk, Util.ticksToNow(SyncTask.a(bk)));
        bk.setResult(bk.run());
    }

    (SyncTask synctask)
    {
        bk = synctask;
        super();
    }
}
