// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.event;


// Referenced classes of package com.tencent.mm.sdk.event:
//            IEvent

public abstract class IListener
{

    private final int priority;

    public IListener(int i)
    {
        priority = i;
    }

    public abstract boolean callback(IEvent ievent);

    public int getPriority()
    {
        return priority;
    }
}
