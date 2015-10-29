// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


// Referenced classes of package com.google.protobuf:
//            RpcCallback, RpcUtil, Message

static final class c
    implements RpcCallback
{

    final Class a;
    final Message b;
    final RpcCallback c;

    public void a(Message message)
    {
        Message message1 = (Message)a.cast(message);
        message = message1;
_L2:
        c.run(message);
        return;
        ClassCastException classcastexception;
        classcastexception;
        message = RpcUtil.access$000(b, message);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public volatile void run(Object obj)
    {
        a((Message)obj);
    }

    k(Class class1, Message message, RpcCallback rpccallback)
    {
        a = class1;
        b = message;
        c = rpccallback;
        super();
    }
}
