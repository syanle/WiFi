// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import com.ta.common.AsyncTask;
import com.ta.common.TABaseEntity;

public class TAFileResponseEntity extends TABaseEntity
{

    private static final long serialVersionUID = 0x4caccca5e034bfd7L;
    private Object object;
    private AsyncTask task;

    public TAFileResponseEntity()
    {
    }

    public Object getObject()
    {
        return object;
    }

    public AsyncTask getTask()
    {
        return task;
    }

    public void setObject(Object obj)
    {
        object = obj;
    }

    public void setTask(AsyncTask asynctask)
    {
        task = asynctask;
    }
}
