// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import java.lang.ref.WeakReference;

public class TAAsyncEntity
{

    private final WeakReference bufferWorkerTaskReference;

    public TAAsyncEntity(TAFileCacheWork.BufferWorkerTask bufferworkertask)
    {
        bufferWorkerTaskReference = new WeakReference(bufferworkertask);
    }

    public TAFileCacheWork.BufferWorkerTask getBufferWorkerTask()
    {
        return (TAFileCacheWork.BufferWorkerTask)bufferWorkerTaskReference.get();
    }
}
