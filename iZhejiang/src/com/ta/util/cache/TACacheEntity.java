// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.cache;

import com.ta.common.TABaseEntity;

// Referenced classes of package com.ta.util.cache:
//            TAAsyncEntity

public class TACacheEntity extends TABaseEntity
{

    private static final long serialVersionUID = 1L;
    private TAAsyncEntity asyncEntity;
    private Object t;

    public TACacheEntity()
    {
    }

    public TAAsyncEntity getAsyncEntity()
    {
        return asyncEntity;
    }

    public Object getT()
    {
        return t;
    }

    public void setAsyncEntity(TAAsyncEntity taasyncentity)
    {
        asyncEntity = taasyncentity;
    }

    public void setT(Object obj)
    {
        t = obj;
    }
}
