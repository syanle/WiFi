// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public class VMsg
{
    static class a extends Handler
    {

        public void handleMessage(Message message)
        {
            int i;
            if (message.obj == null)
            {
                i = 0;
            } else
            {
                i = ((Integer)message.obj).intValue();
            }
            VMsg.a(message.what, message.arg1, message.arg2, i);
        }

        public a(Looper looper)
        {
            super(looper);
        }
    }


    private static final String a = com/baidu/vi/VMsg.getSimpleName();
    private static Handler b;
    private static HandlerThread c;

    public VMsg()
    {
    }

    private static native void OnUserCommand1(int i, int j, int k, int l);

    static void a(int i, int j, int k, int l)
    {
        OnUserCommand1(i, j, k, l);
    }

    public static void destroy()
    {
        c.quit();
        c = null;
        b.removeCallbacksAndMessages(null);
        b = null;
    }

    public static void init()
    {
        c = new HandlerThread("VIMsgThread");
        c.start();
        b = new a(c.getLooper());
    }

    private static void postMessage(int i, int j, int k, int l)
    {
        if (b == null)
        {
            return;
        } else
        {
            Message.obtain(b, i, j, k, Integer.valueOf(l)).sendToTarget();
            return;
        }
    }

}
