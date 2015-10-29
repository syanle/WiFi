// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.j;

import java.util.ArrayList;
import java.util.List;

public abstract class a
{

    private List a;

    public a()
    {
    }

    public void a(Object obj)
    {
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        List list = g();
        if (!list.contains(obj))
        {
            list.add(obj);
        }
        return;
        obj;
    }

    public void b(Object obj)
    {
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        g().remove(obj);
        return;
        obj;
    }

    protected List g()
    {
        this;
        JVM INSTR monitorenter ;
        List list;
        if (a == null)
        {
            a = new ArrayList();
        }
        list = a;
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }
}
