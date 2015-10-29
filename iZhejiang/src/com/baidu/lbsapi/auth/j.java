// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.baidu.lbsapi.auth:
//            a

class j extends Thread
{

    Handler a;
    private Object b;
    private boolean c;
    private boolean d;

    j()
    {
        a = null;
        b = new Object();
        c = false;
        d = true;
    }

    j(String s)
    {
        super(s);
        a = null;
        b = new Object();
        c = false;
        d = true;
    }

    public void a()
    {
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a("Looper thread quit()");
        }
        a.getLooper().quit();
    }

    public void b()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        if (!c)
        {
            b.wait();
        }
_L1:
        return;
        Object obj1;
        obj1;
        ((InterruptedException) (obj1)).printStackTrace();
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public void c()
    {
        synchronized (b)
        {
            c = true;
            b.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
        Looper.prepare();
        a = new Handler();
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a("new Handler() finish!!");
        }
        Looper.loop();
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("LooperThread run() thread id:").append(String.valueOf(Thread.currentThread().getId())).toString());
        }
    }
}
