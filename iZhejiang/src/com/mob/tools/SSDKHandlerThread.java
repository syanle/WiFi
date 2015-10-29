// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

public abstract class SSDKHandlerThread
    implements android.os.Handler.Callback
{

    private static final int MSG_START = -1;
    private static final int MSG_STOP = -2;
    protected final Handler handler;
    private String name;

    public SSDKHandlerThread(String s)
    {
        name = s;
        s = new HandlerThread(s);
        s.start();
        handler = new Handler(s.getLooper(), this);
    }

    public String getName()
    {
        return name;
    }

    public final boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch -2 -1: default 28
    //                   -2 43
    //                   -1 35;
           goto _L1 _L2 _L3
_L1:
        onMessage(message);
_L5:
        return false;
_L3:
        onStart(message);
        continue; /* Loop/switch isn't completed */
_L2:
        onStop(message);
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected abstract void onMessage(Message message);

    protected void onStart(Message message)
    {
    }

    protected void onStop(Message message)
    {
    }

    public void startThread()
    {
        startThread(0, 0, null);
    }

    public void startThread(int i, int j, Object obj)
    {
        Message message = new Message();
        message.what = -1;
        message.arg1 = i;
        message.arg2 = j;
        message.obj = obj;
        handler.sendMessage(message);
    }

    public void stopThread()
    {
        stopThread(0, 0, null);
    }

    public void stopThread(int i, int j, Object obj)
    {
        Message message = new Message();
        message.what = -2;
        message.arg1 = i;
        message.arg2 = j;
        message.obj = obj;
        handler.sendMessage(message);
    }
}
