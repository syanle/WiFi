// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class MTimerHandler extends Handler
{
    public static interface CallBack
    {

        public abstract boolean onTimerExpired();
    }


    private static int ac;
    private final int ad;
    private final boolean av;
    private long aw;
    private final CallBack ax;

    public MTimerHandler(Looper looper, CallBack callback, boolean flag)
    {
        super(looper);
        aw = 0L;
        ax = callback;
        ad = d();
        av = flag;
    }

    public MTimerHandler(CallBack callback, boolean flag)
    {
        aw = 0L;
        ax = callback;
        ad = d();
        av = flag;
    }

    private static int d()
    {
        if (ac >= 8192)
        {
            ac = 0;
        }
        int i = ac + 1;
        ac = i;
        return i;
    }

    protected void finalize()
    {
        stopTimer();
        super.finalize();
    }

    public void handleMessage(Message message)
    {
        while (message.what != ad || ax == null || !ax.onTimerExpired() || !av) 
        {
            return;
        }
        sendEmptyMessageDelayed(ad, aw);
    }

    public void startTimer(long l)
    {
        aw = l;
        stopTimer();
        sendEmptyMessageDelayed(ad, l);
    }

    public void stopTimer()
    {
        removeMessages(ad);
    }

    public boolean stopped()
    {
        return !hasMessages(ad);
    }
}
