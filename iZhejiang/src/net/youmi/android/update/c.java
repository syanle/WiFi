// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.update;

import net.youmi.android.a.c.b.a;

// Referenced classes of package net.youmi.android.update:
//            b, CheckAppUpdateCallBack, AppUpdateInfo

class c
    implements Runnable
{

    final AppUpdateInfo a;
    final b b;

    c(b b1, AppUpdateInfo appupdateinfo)
    {
        b = b1;
        a = appupdateinfo;
        super();
    }

    public void run()
    {
        try
        {
            net.youmi.android.update.b.a(b).onCheckAppUpdateFinish(a);
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }
}
