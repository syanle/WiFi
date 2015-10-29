// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.download;

import android.os.Handler;
import android.os.Message;

public class DownLoadCallback extends Handler
{

    protected static final int ADD_MESSAGE = 1;
    protected static final int FAILURE_MESSAGE = 4;
    protected static final int FINISH_MESSAGE = 5;
    protected static final int PROGRESS_MESSAGE = 2;
    protected static final int START_MESSAGE = 0;
    protected static final int STOP_MESSAGE = 6;
    protected static final int SUCCESS_MESSAGE = 3;

    public DownLoadCallback()
    {
    }

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            onStart();
            return;

        case 1: // '\001'
            message = ((Message) ((Object[])message.obj));
            onAdd((String)message[0], (Boolean)message[1]);
            return;

        case 2: // '\002'
            message = ((Message) ((Object[])message.obj));
            onLoading((String)message[0], ((Long)message[1]).longValue(), ((Long)message[2]).longValue(), ((Long)message[3]).longValue());
            return;

        case 3: // '\003'
            onSuccess((String)((Object[])message.obj)[0]);
            return;

        case 4: // '\004'
            message = ((Message) ((Object[])message.obj));
            onFailure((String)message[0], (String)message[1]);
            return;

        case 5: // '\005'
            onFinish((String)((Object[])message.obj)[0]);
            return;

        case 6: // '\006'
            onStop();
            break;
        }
    }

    public void onAdd(String s, Boolean boolean1)
    {
    }

    public void onFailure(String s, String s1)
    {
    }

    public void onFinish(String s)
    {
    }

    public void onLoading(String s, long l, long l1, long l2)
    {
    }

    public void onStart()
    {
    }

    public void onStop()
    {
    }

    public void onSuccess(String s)
    {
    }

    protected void sendAddMessage(String s, Boolean boolean1)
    {
        sendMessage(obtainMessage(1, ((Object) (new Object[] {
            s, boolean1
        }))));
    }

    protected void sendFailureMessage(String s, String s1)
    {
        sendMessage(obtainMessage(4, ((Object) (new Object[] {
            s, s1
        }))));
    }

    protected void sendFinishMessage(String s)
    {
        sendMessage(obtainMessage(5, ((Object) (new Object[] {
            s
        }))));
    }

    protected void sendLoadMessage(String s, long l, long l1, long l2)
    {
        sendMessage(obtainMessage(2, ((Object) (new Object[] {
            s, Long.valueOf(l), Long.valueOf(l1), Long.valueOf(l2)
        }))));
    }

    protected void sendStartMessage()
    {
        sendMessage(obtainMessage(0, null));
    }

    protected void sendStopMessage()
    {
        sendMessage(obtainMessage(6, null));
    }

    protected void sendSuccessMessage(String s)
    {
        sendMessage(obtainMessage(3, ((Object) (new Object[] {
            s
        }))));
    }
}
