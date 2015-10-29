// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.service;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.IBinder;

public class TimeService extends Service
{
    class TimePiece extends CountDownTimer
    {

        final TimeService this$0;

        public void onFinish()
        {
            intents.setAction("com.settings.timer");
            intents.putExtra("times", 0);
            sendBroadcast(intents);
        }

        public void onTick(long l)
        {
            intents.setAction("com.settings.timer");
            intents.putExtra("times", (int)l / 1000);
            sendBroadcast(intents);
        }

        public TimePiece(long l, long l1)
        {
            this$0 = TimeService.this;
            super(l, l1);
        }
    }


    private static final String SETTINGS_UPDATE_UI = "com.settings.timer";
    Handler handler;
    Intent intents;
    private int recLen;
    Runnable runnable;
    TimePiece timepice;
    int timer;

    public TimeService()
    {
        timer = 0;
        intents = new Intent();
        recLen = 0;
        handler = new Handler();
        runnable = new Runnable() {

            final TimeService this$0;

            public void run()
            {
                TimeService timeservice = TimeService.this;
                timeservice.recLen = timeservice.recLen + 1;
                intents.setAction("com.settings.timer");
                intents.putExtra("times", recLen);
                sendBroadcast(intents);
                handler.postDelayed(this, 1000L);
            }

            
            {
                this$0 = TimeService.this;
                super();
            }
        };
    }

    private void setTimer(long l)
    {
        if (timepice != null)
        {
            timepice.cancel();
        }
        timepice = new TimePiece(l, 1000L);
        timepice.start();
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
    }

    public void onDestroy()
    {
        if (timepice != null)
        {
            timepice.cancel();
        }
    }

    public void onStart(Intent intent, int i)
    {
        if (intent == null) goto _L2; else goto _L1
_L1:
        intent = intent.getExtras();
        if (intent == null) goto _L2; else goto _L3
_L3:
        intent.getInt("time", 0);
        JVM INSTR tableswitch 0 1: default 44
    //                   0 45
    //                   1 74;
           goto _L2 _L4 _L5
_L2:
        return;
_L4:
        handler.removeCallbacksAndMessages(null);
        recLen = 0;
        handler.postDelayed(runnable, 1000L);
        return;
_L5:
        handler.postDelayed(runnable, 1000L);
        return;
    }


}
