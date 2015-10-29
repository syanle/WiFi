// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;


// Referenced classes of package com.tencent.record.debug:
//            WnsTracer, a

public class WnsClientLog extends WnsTracer
{

    public static WnsClientLog instance = null;

    public WnsClientLog()
    {
        fileTracer = new a(CLIENT_CONFIG);
    }

    public static void ensureLogsToFile()
    {
        getInstance().flush();
    }

    public static WnsClientLog getInstance()
    {
        if (instance != null) goto _L2; else goto _L1
_L1:
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorenter ;
        if (instance == null)
        {
            instance = new WnsClientLog();
        }
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        Exception exception;
        exception;
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d(String s, String s1)
    {
        trace(2, s, s1, null);
    }

    public void d(String s, String s1, Throwable throwable)
    {
        trace(2, s, s1, throwable);
    }

    public void e(String s, String s1)
    {
        trace(16, s, s1, null);
    }

    public void e(String s, String s1, Throwable throwable)
    {
        trace(16, s, s1, throwable);
    }

    public void i(String s, String s1)
    {
        trace(4, s, s1, null);
    }

    public void i(String s, String s1, Throwable throwable)
    {
        trace(4, s, s1, throwable);
    }

    public void stop()
    {
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorenter ;
        if (fileTracer != null)
        {
            fileTracer.a();
            fileTracer.b();
        }
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        com/tencent/record/debug/WnsClientLog;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void v(String s, String s1)
    {
        trace(1, s, s1, null);
    }

    public void v(String s, String s1, Throwable throwable)
    {
        trace(1, s, s1, throwable);
    }

    public void w(String s, String s1)
    {
        trace(8, s, s1, null);
    }

    public void w(String s, String s1, Throwable throwable)
    {
        trace(8, s, s1, throwable);
    }

}
