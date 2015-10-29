// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log, LBSManager

class P
    implements .CallBack
{

    final LBSManager P;

    public boolean onTimerExpired()
    {
        Log.v("MicroMsg.LBSManager", "get location by GPS failed.");
        P.K = true;
        P.start();
        LBSManager.a(P);
        return false;
    }

    .CallBack(LBSManager lbsmanager)
    {
        P = lbsmanager;
        super();
    }
}
