// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;

import net.youmi.android.a.c.b.a;

// Referenced classes of package net.youmi.android.onlineconfig:
//            d, OnlineConfigCallBack

class e
    implements Runnable
{

    final String a;
    final d b;

    e(d d1, String s)
    {
        b = d1;
        a = s;
        super();
    }

    public void run()
    {
        if (a != null)
        {
            d.b(b).onGetOnlineConfigSuccessful(net.youmi.android.onlineconfig.d.a(b), a);
            return;
        }
        try
        {
            d.b(b).onGetOnlineConfigFailed(net.youmi.android.onlineconfig.d.a(b));
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
        return;
    }
}
