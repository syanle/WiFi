// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import com.ta.common.AsyncTask;
import java.lang.ref.WeakReference;

// Referenced classes of package com.ta.util.cache:
//            TAFileCacheWork, TACacheEntity, TAFileCache, TAProcessDataHandler, 
//            TACallBackHandler

public class cacheEntityReference extends AsyncTask
{

    private final WeakReference cacheEntityReference;
    private Object data;
    final TAFileCacheWork this$0;

    private TACacheEntity getAttachedCacheEntity()
    {
        TACacheEntity tacacheentity = (TACacheEntity)cacheEntityReference.get();
        if (this == TAFileCacheWork.access$5(TAFileCacheWork.this, tacacheentity))
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
        Object obj = TAFileCacheWork.access$0(TAFileCacheWork.this);
        obj;
        JVM INSTR monitorenter ;
_L2:
        if (mPauseWork && !isCancelled())
        {
            break MISSING_BLOCK_LABEL_193;
        }
        obj = abyte0;
        if (TAFileCacheWork.access$1(TAFileCacheWork.this) != null)
        {
            obj = abyte0;
            if (!isCancelled())
            {
                obj = abyte0;
                if (getAttachedCacheEntity() != null)
                {
                    obj = abyte0;
                    if (!TAFileCacheWork.access$2(TAFileCacheWork.this))
                    {
                        obj = TAFileCacheWork.access$1(TAFileCacheWork.this).getBufferFromDiskCache(s);
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
                    if (!TAFileCacheWork.access$2(TAFileCacheWork.this))
                    {
                        abyte0 = ((byte []) (obj));
                        if (TAFileCacheWork.access$3(TAFileCacheWork.this) != null)
                        {
                            abyte0 = TAFileCacheWork.access$3(TAFileCacheWork.this).processData(aobj[0]);
                        }
                    }
                }
            }
        }
        if (abyte0 != null && TAFileCacheWork.access$1(TAFileCacheWork.this) != null)
        {
            TAFileCacheWork.access$1(TAFileCacheWork.this).addBufferToCache(s, abyte0);
        }
        return abyte0;
        try
        {
            TAFileCacheWork.access$0(TAFileCacheWork.this).wait();
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
        synchronized (TAFileCacheWork.access$0(TAFileCacheWork.this))
        {
            TAFileCacheWork.access$0(TAFileCacheWork.this).notifyAll();
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
        if (isCancelled() || TAFileCacheWork.access$2(TAFileCacheWork.this))
        {
            abyte0 = null;
        }
        TACacheEntity tacacheentity = getAttachedCacheEntity();
        if (TAFileCacheWork.access$4(TAFileCacheWork.this) != null && tacacheentity != null)
        {
            TAFileCacheWork.access$4(TAFileCacheWork.this).onSuccess(tacacheentity.getT(), data, abyte0);
        }
    }


    public (TACacheEntity tacacheentity)
    {
        this$0 = TAFileCacheWork.this;
        super();
        cacheEntityReference = new WeakReference(tacacheentity);
    }
}
