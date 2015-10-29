// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;


// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            ObserverPool

public static abstract class priority
{

    private final int priority;

    static int a(priority priority1)
    {
        return priority1.priority;
    }

    public abstract boolean callback(priority priority1);

    public int getPriority()
    {
        return priority;
    }

    public ()
    {
        priority = 0;
    }

    public priority(int i)
    {
        priority = i;
    }
}
