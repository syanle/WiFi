// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package net.youmi.android.banner:
//            e, BannerManager, h

class g extends Handler
{

    final e a;

    g(e e1)
    {
        a = e1;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 30;
           goto _L1 _L2
_L1:
        super.handleMessage(message);
        return;
_L2:
        h h1 = BannerManager.getBannerObject(e.a(a));
        String s = h1.g();
        if (s == null || s.equals(""))
        {
            a.a(h1);
        } else
        {
            e.a(a, h1);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
