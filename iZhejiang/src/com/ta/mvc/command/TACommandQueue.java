// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.util.TALogger;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package com.ta.mvc.command:
//            TAICommand

public class TACommandQueue
{

    private LinkedBlockingQueue theQueue;

    public TACommandQueue()
    {
        theQueue = new LinkedBlockingQueue();
        TALogger.i(this, "\u521D\u59CB\u5316Command\u961F\u5217");
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        TALogger.i(this, "\u6E05\u7A7A\u6240\u6709Command");
        theQueue.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void enqueue(TAICommand taicommand)
    {
        TALogger.i(this, "\u6DFB\u52A0Command\u5230\u961F\u5217");
        theQueue.add(taicommand);
    }

    public TAICommand getNextCommand()
    {
        this;
        JVM INSTR monitorenter ;
        TALogger.i(this, "\u83B7\u53D6Command");
        TAICommand taicommand;
        TAICommand taicommand1;
        taicommand1 = null;
        taicommand = taicommand1;
        TALogger.i(this, "CommandQueue::to-take");
        taicommand = taicommand1;
        taicommand1 = (TAICommand)theQueue.take();
        taicommand = taicommand1;
        TALogger.i(this, "CommandQueue::taken");
        taicommand = taicommand1;
_L2:
        TALogger.i(this, (new StringBuilder("\u8FD4\u56DECommand")).append(taicommand).toString());
        this;
        JVM INSTR monitorexit ;
        return taicommand;
        InterruptedException interruptedexception;
        interruptedexception;
        TALogger.i(this, "\u6CA1\u6709\u83B7\u53D6\u5230Command");
        interruptedexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }
}
