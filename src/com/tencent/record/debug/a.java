// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.record.debug;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

// Referenced classes of package com.tencent.record.debug:
//            i, c, e, b

public class a extends i
    implements android.os.Handler.Callback
{

    private e a;
    private FileWriter b;
    private File c;
    private char d[];
    private volatile c e;
    private volatile c f;
    private volatile c g;
    private volatile c h;
    private volatile boolean i;
    private HandlerThread j;
    private Handler k;

    public a(int l, boolean flag, b b1, e e1)
    {
        super(l, flag, b1);
        i = false;
        a(e1);
        e = new c();
        f = new c();
        g = e;
        h = f;
        d = new char[e1.f()];
        e1.b();
        h();
        j = new HandlerThread(e1.c(), e1.i());
        if (j != null)
        {
            j.start();
        }
        if (j.isAlive())
        {
            k = new Handler(j.getLooper(), this);
        }
        f();
    }

    public a(e e1)
    {
        this(63, true, b.a, e1);
    }

    private void f()
    {
        k.sendEmptyMessageDelayed(1024, c().g());
    }

    private void g()
    {
        while (Thread.currentThread() != j || i) 
        {
            return;
        }
        i = true;
        j();
        h.a(h(), d);
        h.b();
_L2:
        i = false;
        return;
        Object obj;
        obj;
        h.b();
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        h.b();
        throw obj;
    }

    private Writer h()
    {
        File file = c().a();
        if (file != null && !file.equals(c))
        {
            c = file;
            i();
            try
            {
                b = new FileWriter(c, true);
            }
            catch (IOException ioexception)
            {
                return null;
            }
        }
        return b;
    }

    private void i()
    {
        try
        {
            if (b != null)
            {
                b.flush();
                b.close();
            }
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    private void j()
    {
        this;
        JVM INSTR monitorenter ;
        if (g != e)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        g = f;
        h = e;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        g = e;
        h = f;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a()
    {
        if (k.hasMessages(1024))
        {
            k.removeMessages(1024);
        }
    }

    protected void a(int l, Thread thread, long l1, String s, String s1, Throwable throwable)
    {
        a(e().a(l, thread, l1, s, s1, throwable));
    }

    public void a(e e1)
    {
        a = e1;
    }

    protected void a(String s)
    {
        g.a(s);
        if (g.a() >= c().f())
        {
            a();
        }
    }

    public void b()
    {
        i();
        j.quit();
    }

    public e c()
    {
        return a;
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1024 1024: default 24
    //                   1024 26;
           goto _L1 _L2
_L1:
        return true;
_L2:
        g();
        f();
        if (true) goto _L1; else goto _L3
_L3:
    }
}
