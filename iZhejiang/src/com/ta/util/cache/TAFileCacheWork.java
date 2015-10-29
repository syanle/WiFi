// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import com.ta.common.AsyncTask;
import java.lang.ref.WeakReference;
import java.util.HashMap;

// Referenced classes of package com.ta.util.cache:
//            TACacheEntity, TAAsyncEntity, TAFileCache, TACallBackHandler, 
//            TAProcessDataHandler

public class TAFileCacheWork
{
    public class BufferWorkerTask extends AsyncTask
    {

        private final WeakReference cacheEntityReference;
        private Object data;
        final TAFileCacheWork this$0;

        private TACacheEntity getAttachedCacheEntity()
        {
            TACacheEntity tacacheentity = (TACacheEntity)cacheEntityReference.get();
            if (this == getBufferWorkerTask(tacacheentity))
            {
                return tacacheentity;
            } else
            {
                return null;
            }
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Object[])aobj);
        }

        protected transient byte[] doInBackground(Object aobj[])
        {
            byte abyte0[];
            String s;
            data = aobj[0];
            s = String.valueOf(data);
            abyte0 = null;
            Object obj = mPauseWorkLock;
            obj;
            JVM INSTR monitorenter ;
_L2:
            if (mPauseWork && !isCancelled())
            {
                break MISSING_BLOCK_LABEL_193;
            }
            obj = abyte0;
            if (mTAFileCache != null)
            {
                obj = abyte0;
                if (!isCancelled())
                {
                    obj = abyte0;
                    if (getAttachedCacheEntity() != null)
                    {
                        obj = abyte0;
                        if (!mExitTasksEarly)
                        {
                            obj = mTAFileCache.getBufferFromDiskCache(s);
                        }
                    }
                }
            }
            abyte0 = ((byte []) (obj));
            if (obj == null)
            {
                abyte0 = ((byte []) (obj));
                if (!isCancelled())
                {
                    abyte0 = ((byte []) (obj));
                    if (getAttachedCacheEntity() != null)
                    {
                        abyte0 = ((byte []) (obj));
                        if (!mExitTasksEarly)
                        {
                            abyte0 = ((byte []) (obj));
                            if (mProcessDataHandler != null)
                            {
                                abyte0 = mProcessDataHandler.processData(aobj[0]);
                            }
                        }
                    }
                }
            }
            if (abyte0 != null && mTAFileCache != null)
            {
                mTAFileCache.addBufferToCache(s, abyte0);
            }
            return abyte0;
            try
            {
                mPauseWorkLock.wait();
            }
            catch (InterruptedException interruptedexception) { }
            finally { }
            if (true) goto _L2; else goto _L1
_L1:
            obj;
            JVM INSTR monitorexit ;
            throw aobj;
        }

        protected volatile void onCancelled(Object obj)
        {
            onCancelled((byte[])obj);
        }

        protected void onCancelled(byte abyte0[])
        {
            super.onCancelled(abyte0);
            synchronized (mPauseWorkLock)
            {
                mPauseWorkLock.notifyAll();
            }
            return;
            exception;
            abyte0;
            JVM INSTR monitorexit ;
            throw exception;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((byte[])obj);
        }

        protected void onPostExecute(byte abyte0[])
        {
            if (isCancelled() || mExitTasksEarly)
            {
                abyte0 = null;
            }
            TACacheEntity tacacheentity = getAttachedCacheEntity();
            if (mCallBackHandler != null && tacacheentity != null)
            {
                mCallBackHandler.onSuccess(tacacheentity.getT(), data, abyte0);
            }
        }


        public BufferWorkerTask(TACacheEntity tacacheentity)
        {
            this$0 = TAFileCacheWork.this;
            super();
            cacheEntityReference = new WeakReference(tacacheentity);
        }
    }

    protected class CacheAsyncTask extends AsyncTask
    {

        final TAFileCacheWork this$0;

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Object[])aobj);
        }

        protected transient Void doInBackground(Object aobj[])
        {
            ((Integer)aobj[0]).intValue();
            JVM INSTR tableswitch 0 3: default 40
        //                       0 42
        //                       1 52
        //                       2 62
        //                       3 72;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return null;
_L2:
            clearCacheInternal();
            continue; /* Loop/switch isn't completed */
_L3:
            initDiskCacheInternal();
            continue; /* Loop/switch isn't completed */
_L4:
            flushCacheInternal();
            continue; /* Loop/switch isn't completed */
_L5:
            closeCacheInternal();
            if (true) goto _L1; else goto _L6
_L6:
        }

        public CacheAsyncTask()
        {
            this$0 = TAFileCacheWork.this;
            super();
        }
    }


    protected static final int MESSAGE_CLEAR = 0;
    protected static final int MESSAGE_CLOSE = 3;
    protected static final int MESSAGE_FLUSH = 2;
    protected static final int MESSAGE_INIT_DISK_CACHE = 1;
    private HashMap mCacheEntityHashMap;
    private TACallBackHandler mCallBackHandler;
    private boolean mExitTasksEarly;
    protected boolean mPauseWork;
    private final Object mPauseWorkLock = new Object();
    private TAProcessDataHandler mProcessDataHandler;
    private TAFileCache mTAFileCache;

    public TAFileCacheWork()
    {
        mExitTasksEarly = false;
        mPauseWork = false;
        mCacheEntityHashMap = new HashMap();
    }

    private BufferWorkerTask getBufferWorkerTask(TACacheEntity tacacheentity)
    {
        if (tacacheentity != null)
        {
            tacacheentity = tacacheentity.getAsyncEntity();
            if (tacacheentity != null)
            {
                return tacacheentity.getBufferWorkerTask();
            }
        }
        return null;
    }

    public boolean cancelPotentialWork(Object obj, TACacheEntity tacacheentity)
    {
label0:
        {
            tacacheentity = getBufferWorkerTask(tacacheentity);
            if (tacacheentity != null)
            {
                Object obj1 = ((BufferWorkerTask) (tacacheentity)).data;
                if (obj1 != null && obj1.equals(obj))
                {
                    break label0;
                }
                tacacheentity.cancel(true);
            }
            return true;
        }
        return false;
    }

    public void cancelWork(Object obj)
    {
        String s = String.valueOf(obj);
        if (!mCacheEntityHashMap.containsKey(s))
        {
            TACacheEntity tacacheentity = new TACacheEntity();
            tacacheentity.setT(obj);
            mCacheEntityHashMap.put(s, tacacheentity);
            obj = tacacheentity;
        } else
        {
            obj = (TACacheEntity)mCacheEntityHashMap.get(s);
        }
        obj = getBufferWorkerTask(((TACacheEntity) (obj)));
        if (obj != null)
        {
            ((BufferWorkerTask) (obj)).cancel(true);
        }
    }

    public void clearCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(0)
        });
    }

    protected void clearCacheInternal()
    {
        if (mTAFileCache != null)
        {
            mTAFileCache.clearCache();
        }
    }

    public void closeCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(3)
        });
    }

    protected void closeCacheInternal()
    {
        if (mTAFileCache != null)
        {
            mTAFileCache.close();
            mTAFileCache = null;
        }
    }

    public void flushCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(2)
        });
    }

    protected void flushCacheInternal()
    {
        if (mTAFileCache != null)
        {
            mTAFileCache.flush();
        }
    }

    public TACallBackHandler getCallBackHandler()
    {
        return mCallBackHandler;
    }

    public TAProcessDataHandler getProcessDataHandler()
    {
        return mProcessDataHandler;
    }

    public void initCache()
    {
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(1)
        });
    }

    protected void initDiskCacheInternal()
    {
        if (mTAFileCache != null)
        {
            mTAFileCache.initDiskCache();
        }
    }

    public void loadFormCache(Object obj, Object obj1)
    {
        byte abyte0[] = String.valueOf(obj1);
        TACacheEntity tacacheentity;
        if (!mCacheEntityHashMap.containsKey(abyte0))
        {
            tacacheentity = new TACacheEntity();
            tacacheentity.setT(obj1);
            mCacheEntityHashMap.put(abyte0, tacacheentity);
        } else
        {
            tacacheentity = (TACacheEntity)mCacheEntityHashMap.get(abyte0);
        }
        if (obj != null);
        abyte0 = null;
        if (mTAFileCache != null)
        {
            abyte0 = mTAFileCache.getBufferFromMemCache(String.valueOf(obj));
        }
        if (abyte0 != null)
        {
            if (mCallBackHandler != null)
            {
                mCallBackHandler.onSuccess(obj1, obj, abyte0);
            }
        } else
        if (cancelPotentialWork(obj, tacacheentity))
        {
            BufferWorkerTask bufferworkertask = new BufferWorkerTask(tacacheentity);
            TAAsyncEntity taasyncentity = new TAAsyncEntity(bufferworkertask);
            if (mCallBackHandler != null)
            {
                mCallBackHandler.onStart(obj1, obj);
            }
            tacacheentity.setAsyncEntity(taasyncentity);
            bufferworkertask.executeOnExecutor(AsyncTask.DUAL_THREAD_EXECUTOR, new Object[] {
                obj
            });
            return;
        }
    }

    public void setCallBackHandler(TACallBackHandler tacallbackhandler)
    {
        mCallBackHandler = tacallbackhandler;
    }

    public void setExitTasksEarly(boolean flag)
    {
        mExitTasksEarly = flag;
        setPauseWork(false);
    }

    public void setFileCache(TAFileCache tafilecache)
    {
        mTAFileCache = tafilecache;
        (new CacheAsyncTask()).execute(new Object[] {
            Integer.valueOf(1)
        });
    }

    public void setPauseWork(boolean flag)
    {
        synchronized (mPauseWorkLock)
        {
            mPauseWork = flag;
            if (!mPauseWork)
            {
                mPauseWorkLock.notifyAll();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setProcessDataHandler(TAProcessDataHandler taprocessdatahandler)
    {
        mProcessDataHandler = taprocessdatahandler;
    }






}
