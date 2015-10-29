// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            RpcCallback, RpcUtil

static final class b
    implements RpcCallback
{

    final RpcCallback a;
    private boolean b;

    public void run(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (b)
        {
            throw new readyCalledException();
        }
        break MISSING_BLOCK_LABEL_22;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        b = true;
        this;
        JVM INSTR monitorexit ;
        a.run(obj);
        return;
    }

    k(RpcCallback rpccallback)
    {
        a = rpccallback;
        super();
        b = false;
    }
}
