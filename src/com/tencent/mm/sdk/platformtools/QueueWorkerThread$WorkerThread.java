// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            QueueWorkerThread, Log

final class <init> extends Thread
{

    final QueueWorkerThread aV;
    private int aW;

    public final void run()
    {
_L3:
        if (aW <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = QueueWorkerThread.d(aV);
        obj;
        JVM INSTR monitorenter ;
        if (QueueWorkerThread.e(aV))
        {
            QueueWorkerThread.d(aV).wait();
        }
_L1:
        Object obj1;
        try
        {
            obj = (aV)QueueWorkerThread.f(aV).poll(2000L, TimeUnit.MILLISECONDS);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            obj = null;
        }
        if (obj == null)
        {
            aW = aW - 1;
        } else
        {
            aW = 60;
            if (((aW) (obj)).doInBackground())
            {
                QueueWorkerThread.g(aV).sendMessage(QueueWorkerThread.g(aV).obtainMessage(0, obj));
            }
        }
        continue; /* Loop/switch isn't completed */
        obj1;
        ((Exception) (obj1)).printStackTrace();
          goto _L1
        obj1;
        throw obj1;
        if (true) goto _L3; else goto _L2
_L2:
        QueueWorkerThread.c(aV).remove(this);
        Log.d("QueueWorkerThread.QueueWorkerThread", (new StringBuilder("dktest Finish queueToReqSize:")).append(QueueWorkerThread.f(aV).size()).append(" ThreadSize:").append(QueueWorkerThread.c(aV).size()).toString());
        return;
    }

    private (QueueWorkerThread queueworkerthread)
    {
        aV = queueworkerthread;
        super(QueueWorkerThread.a(queueworkerthread));
        aW = 60;
        setPriority(QueueWorkerThread.b(queueworkerthread));
        QueueWorkerThread.c(queueworkerthread).add(this);
    }

    setPriority(QueueWorkerThread queueworkerthread, byte byte0)
    {
        this(queueworkerthread);
    }
}
