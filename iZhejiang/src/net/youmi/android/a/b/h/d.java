// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.h;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class d
    implements ThreadFactory
{

    protected static final AtomicInteger a = new AtomicInteger(1);
    protected final AtomicInteger b;
    protected final ThreadGroup c;
    protected final String d;
    protected final int e;

    public d(int i, String s)
    {
label0:
        {
            super();
            b = new AtomicInteger(1);
            e = i;
            Object obj = System.getSecurityManager();
            if (obj != null)
            {
                obj = ((SecurityManager) (obj)).getThreadGroup();
            } else
            {
                obj = Thread.currentThread().getThreadGroup();
            }
            c = ((ThreadGroup) (obj));
            if (s != null)
            {
                obj = s;
                if (!"".equals(s.trim()))
                {
                    break label0;
                }
            }
            obj = "common";
        }
        d = (new StringBuilder()).append("pool-").append(((String) (obj))).append("-").append(a.getAndIncrement()).append("-thread-").toString();
    }

    public Thread newThread(Runnable runnable)
    {
        try
        {
            runnable = new Thread(c, runnable, (new StringBuilder()).append(d).append(b.getAndIncrement()).toString(), 0L);
        }
        // Misplaced declaration of an exception variable
        catch (Runnable runnable)
        {
            return null;
        }
        try
        {
            if (runnable.isDaemon())
            {
                runnable.setDaemon(false);
            }
            runnable.setPriority(e);
        }
        catch (Exception exception)
        {
            return runnable;
        }
        return runnable;
        runnable;
        throw runnable;
    }

}
