// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class QueueWorkerThread
{
    public static interface ThreadObject
    {

        public abstract boolean doInBackground();

        public abstract boolean onPostExecute();
    }

    final class WorkerThread extends Thread
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
                obj = (ThreadObject)QueueWorkerThread.f(aV).poll(2000L, TimeUnit.MILLISECONDS);
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
                if (((ThreadObject) (obj)).doInBackground())
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

        private WorkerThread()
        {
            aV = QueueWorkerThread.this;
            super(QueueWorkerThread.a(QueueWorkerThread.this));
            aW = 60;
            setPriority(QueueWorkerThread.b(QueueWorkerThread.this));
            QueueWorkerThread.c(QueueWorkerThread.this).add(this);
        }

        WorkerThread(byte byte0)
        {
            this();
        }
    }


    private LinkedBlockingQueue aQ;
    private boolean aR;
    private int aS;
    private Vector aT;
    private Handler aU;
    private Object lock;
    private String name;
    private int priority;

    public QueueWorkerThread(int i, String s)
    {
        this(i, s, 1);
    }

    public QueueWorkerThread(int i, String s, int j)
    {
        aQ = new LinkedBlockingQueue();
        aR = false;
        aS = 1;
        priority = 1;
        name = "";
        lock = new byte[0];
        aT = new Vector();
        aU = new _cls1();
        aS = j;
        name = s;
        priority = i;
    }

    static String a(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.name;
    }

    static int b(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.priority;
    }

    static Vector c(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aT;
    }

    static Object d(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.lock;
    }

    static boolean e(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aR;
    }

    static LinkedBlockingQueue f(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aQ;
    }

    static Handler g(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aU;
    }

    public int add(ThreadObject threadobject)
    {
        boolean flag = false;
        if (threadobject != null) goto _L2; else goto _L1
_L1:
        byte byte0;
        Log.e("QueueWorkerThread.QueueWorkerThread", "add empty thread object");
        byte0 = -1;
_L4:
        return byte0;
_L2:
label0:
        {
            try
            {
                if (aQ.offer(threadobject, 1L, TimeUnit.MILLISECONDS))
                {
                    break label0;
                }
                Log.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed");
            }
            // Misplaced declaration of an exception variable
            catch (ThreadObject threadobject)
            {
                Log.e("QueueWorkerThread.QueueWorkerThread", (new StringBuilder("add To Queue failed :")).append(threadobject.getMessage()).toString());
                threadobject.printStackTrace();
                return -3;
            }
            return -2;
        }
        if (aT.size() == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        byte0 = flag;
        if (aQ.size() <= 0) goto _L4; else goto _L3
_L3:
        byte0 = flag;
        if (aS <= aT.size()) goto _L4; else goto _L5
_L5:
        (new WorkerThread((byte)0)).start();
        return 0;
    }

    public int getQueueSize()
    {
        return aQ.size();
    }

    public boolean isDead()
    {
        return aT == null || aT.size() == 0;
    }

    public void pause(boolean flag)
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        aR = flag;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        synchronized (lock)
        {
            lock.notifyAll();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private class _cls1 extends Handler
    {

        final QueueWorkerThread aV;

        public void handleMessage(Message message)
        {
            if (message != null && message.obj != null)
            {
                ((ThreadObject)message.obj).onPostExecute();
            }
        }

        _cls1()
        {
            aV = QueueWorkerThread.this;
            super();
        }
    }

}
