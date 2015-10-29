// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.util.TALogger;

// Referenced classes of package com.ta.mvc.command:
//            TACommandQueue, TAThreadPool, TAICommand

public final class TACommandQueueManager
{

    private static TACommandQueueManager instance;
    private boolean initialized;
    private TAThreadPool pool;
    private TACommandQueue queue;

    private TACommandQueueManager()
    {
        initialized = false;
    }

    public static TACommandQueueManager getInstance()
    {
        if (instance == null)
        {
            instance = new TACommandQueueManager();
        }
        return instance;
    }

    public void clear()
    {
        queue.clear();
    }

    public void enqueue(TAICommand taicommand)
    {
        TALogger.i(this, (new StringBuilder("\u6DFB\u52A0")).append(taicommand).append("\u5F00\u59CB").toString());
        queue.enqueue(taicommand);
        TALogger.i(this, (new StringBuilder("\u6DFB\u52A0")).append(taicommand).append("\u5B8C\u6210").toString());
    }

    public TAICommand getNextCommand()
    {
        TALogger.i(this, "\u83B7\u53D6Command\uFF01");
        TAICommand taicommand = queue.getNextCommand();
        TALogger.i(this, (new StringBuilder("\u83B7\u53D6Command")).append(taicommand).append("\u5B8C\u6210\uFF01").toString());
        return taicommand;
    }

    public void initialize()
    {
        TALogger.i(this, "\u51C6\u5907\u521D\u59CB\u5316\uFF01");
        if (!initialized)
        {
            TALogger.i(this, "\u6B63\u5728\u521D\u59CB\u5316\uFF01");
            queue = new TACommandQueue();
            pool = TAThreadPool.getInstance();
            TALogger.i(this, "\u5B8C\u6210\u521D\u59CB\u5316\uFF01");
            pool.start();
            initialized = true;
        }
        TALogger.i(this, "\u521D\u59CB\u5316\u5B8C\u6210\uFF01");
    }

    public void shutdown()
    {
        if (initialized)
        {
            queue.clear();
            pool.shutdown();
            initialized = false;
        }
    }
}
