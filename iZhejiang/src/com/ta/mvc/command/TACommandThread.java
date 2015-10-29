// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.util.TALogger;

// Referenced classes of package com.ta.mvc.command:
//            TACommandQueueManager, TAICommand

public class TACommandThread
    implements Runnable
{

    private boolean running;
    private boolean stop;
    private Thread thread;
    private int threadId;

    public TACommandThread(int i)
    {
        thread = null;
        running = false;
        stop = false;
        TALogger.i(this, "CommandThread::ctor");
        threadId = i;
        thread = new Thread(this);
    }

    public int getThreadId()
    {
        return threadId;
    }

    public boolean isRunning()
    {
        return running;
    }

    public void run()
    {
        TALogger.i(this, "CommandThread::run-enter");
        do
        {
            if (stop)
            {
                TALogger.i(this, "CommandThread::run-exit");
                return;
            }
            TALogger.i(this, "CommandThread::get-next-command");
            TAICommand taicommand = TACommandQueueManager.getInstance().getNextCommand();
            TALogger.i(this, "CommandThread::to-execute");
            taicommand.execute();
            TALogger.i(this, "CommandThread::executed");
        } while (true);
    }

    public void start()
    {
        thread.start();
        running = true;
    }

    public void stop()
    {
        stop = true;
        running = false;
    }
}
