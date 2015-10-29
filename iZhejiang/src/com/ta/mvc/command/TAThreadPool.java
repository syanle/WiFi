// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.util.TALogger;

// Referenced classes of package com.ta.mvc.command:
//            TACommandThread

public class TAThreadPool
{

    private static final int MAX_THREADS_COUNT = 2;
    private static TAThreadPool instance;
    private boolean started;
    private TACommandThread threads[];

    private TAThreadPool()
    {
        threads = null;
        started = false;
    }

    public static TAThreadPool getInstance()
    {
        if (instance == null)
        {
            instance = new TAThreadPool();
        }
        return instance;
    }

    public void shutdown()
    {
        TALogger.i(this, "\u5173\u95ED\u6240\u6709\u7EBF\u7A0B\uFF01");
        if (!started) goto _L2; else goto _L1
_L1:
        TACommandThread atacommandthread[];
        int i;
        int j;
        atacommandthread = threads;
        j = atacommandthread.length;
        i = 0;
_L6:
        if (i < j) goto _L4; else goto _L3
_L3:
        threads = null;
        started = false;
_L2:
        TALogger.i(this, "\u5173\u95ED\u5B8C\u6240\u6709\u7EBF\u7A0B\uFF01");
        return;
_L4:
        atacommandthread[i].stop();
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void start()
    {
        if (started) goto _L2; else goto _L1
_L1:
        int i;
        TALogger.i(this, "\u7EBF\u7A0B\u6C60\u5F00\u59CB\u8FD0\u884C\uFF01");
        threads = new TACommandThread[2];
        i = 0;
_L6:
        if (i < 2) goto _L4; else goto _L3
_L3:
        started = true;
        TALogger.i(this, "\u7EBF\u7A0B\u6C60\u8FD0\u884C\u5B8C\u6210\uFF01");
_L2:
        return;
_L4:
        threads[i] = new TACommandThread(i);
        threads[i].start();
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
