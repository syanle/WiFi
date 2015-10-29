// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public class MMHandlerThread
{
    public static interface IWaitWorkThread
    {

        public abstract boolean doInBackground();

        public abstract boolean onPostExecute();
    }

    public static interface ResetCallback
    {

        public abstract void callback();
    }


    public static long mainThreadID = -1L;
    private HandlerThread ao;
    private Handler ap;

    public MMHandlerThread()
    {
        ao = null;
        ap = null;
        c();
    }

    static HandlerThread a(MMHandlerThread mmhandlerthread)
    {
        return mmhandlerthread.ao;
    }

    static void a(Runnable runnable)
    {
        if (runnable != null)
        {
            (new Handler(Looper.getMainLooper())).postAtFrontOfQueue(runnable);
        }
    }

    static void b(MMHandlerThread mmhandlerthread)
    {
        mmhandlerthread.c();
    }

    private void c()
    {
        Log.d("MicroMsg.MMHandlerThread", "MMHandlerThread init [%s]", new Object[] {
            Util.getStack()
        });
        ap = null;
        ao = new HandlerThread("MMHandlerThread", 1);
        ao.start();
    }

    public static boolean isMainThread()
    {
        boolean flag;
        if (mainThreadID == -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertFalse("mainThreadID not init ", flag);
        return Thread.currentThread().getId() == mainThreadID;
    }

    public static void postToMainThread(Runnable runnable)
    {
        if (runnable == null)
        {
            return;
        } else
        {
            (new Handler(Looper.getMainLooper())).post(runnable);
            return;
        }
    }

    public static void postToMainThreadDelayed(Runnable runnable, long l)
    {
        if (runnable == null)
        {
            return;
        } else
        {
            (new Handler(Looper.getMainLooper())).postDelayed(runnable, l);
            return;
        }
    }

    public static void setMainThreadID(long l)
    {
        if (mainThreadID < 0L && l > 0L)
        {
            mainThreadID = l;
        }
    }

    public Looper getLooper()
    {
        return ao.getLooper();
    }

    public Handler getWorkerHandler()
    {
        if (ap == null)
        {
            ap = new Handler(ao.getLooper());
        }
        return ap;
    }

    public int postAtFrontOfWorker(IWaitWorkThread iwaitworkthread)
    {
        if (iwaitworkthread == null)
        {
            return -1;
        }
        return !(new Handler(getLooper())).postAtFrontOfQueue(new _cls3(iwaitworkthread)) ? -2 : 0;
    }

    public int postToWorker(Runnable runnable)
    {
        if (runnable == null)
        {
            return -1;
        } else
        {
            getWorkerHandler().post(runnable);
            return 0;
        }
    }

    public int reset(IWaitWorkThread iwaitworkthread)
    {
        return postAtFrontOfWorker(new _cls1(iwaitworkthread));
    }

    public int syncReset(ResetCallback resetcallback)
    {
        byte abyte0[];
        Assert.assertTrue("syncReset should in mainThread", isMainThread());
        abyte0 = new byte[0];
        resetcallback = new _cls2(resetcallback, abyte0);
        abyte0;
        JVM INSTR monitorenter ;
        int i = postAtFrontOfWorker(resetcallback);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        try
        {
            abyte0.wait();
        }
        // Misplaced declaration of an exception variable
        catch (ResetCallback resetcallback) { }
        abyte0;
        JVM INSTR monitorexit ;
        return i;
        resetcallback;
        throw resetcallback;
    }


    private class _cls3
        implements Runnable
    {

        final IWaitWorkThread aq;
        final MMHandlerThread ar;

        public void run()
        {
            aq.doInBackground();
            class _cls1
                implements Runnable
            {

                final _cls3 au;

                public void run()
                {
                    au.aq.onPostExecute();
                }

                _cls1()
                {
                    au = _cls3.this;
                    super();
                }
            }

            MMHandlerThread.a(new _cls1());
        }

        _cls3(IWaitWorkThread iwaitworkthread)
        {
            ar = MMHandlerThread.this;
            aq = iwaitworkthread;
            super();
        }
    }


    private class _cls1
        implements IWaitWorkThread
    {

        final IWaitWorkThread aq;
        final MMHandlerThread ar;

        public boolean doInBackground()
        {
            if (aq != null)
            {
                return aq.doInBackground();
            } else
            {
                MMHandlerThread.a(ar).quit();
                MMHandlerThread.b(ar);
                return true;
            }
        }

        public boolean onPostExecute()
        {
            if (aq != null)
            {
                return aq.onPostExecute();
            } else
            {
                return true;
            }
        }

        _cls1(IWaitWorkThread iwaitworkthread)
        {
            ar = MMHandlerThread.this;
            aq = iwaitworkthread;
            super();
        }
    }


    private class _cls2
        implements IWaitWorkThread
    {

        final MMHandlerThread ar;
        final ResetCallback as;
        final Object at;

        public boolean doInBackground()
        {
            Log.d("MicroMsg.MMHandlerThread", "syncReset doInBackground");
            MMHandlerThread.a(ar).quit();
            if (as != null)
            {
                as.callback();
            }
            MMHandlerThread.b(ar);
            synchronized (at)
            {
                at.notify();
            }
            return true;
        }

        public boolean onPostExecute()
        {
            Log.d("MicroMsg.MMHandlerThread", "syncReset onPostExecute");
            return true;
        }

        _cls2(ResetCallback resetcallback, Object obj)
        {
            ar = MMHandlerThread.this;
            as = resetcallback;
            at = obj;
            super();
        }
    }

}
