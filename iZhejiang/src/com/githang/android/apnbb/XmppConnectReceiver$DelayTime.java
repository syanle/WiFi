// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.githang.android.apnbb:
//            XmppConnectReceiver

public static class times
{

    private static final times delayTime = new <init>();
    private AtomicInteger times;

    public static int getWaitingTime()
    {
        byte byte0 = 20;
        int i = delayTime.times.get();
        if (i == 0)
        {
            byte0 = 0;
        } else
        if (i >= 15)
        {
            if (i < 20)
            {
                return 60;
            }
            return i >= 30 ? 300 : 120;
        }
        return byte0;
    }

    public static void increase()
    {
        delayTime.times.incrementAndGet();
    }

    public static void resetTimes()
    {
        delayTime.times.set(0);
    }


    public ()
    {
        times = new AtomicInteger(0);
    }
}
