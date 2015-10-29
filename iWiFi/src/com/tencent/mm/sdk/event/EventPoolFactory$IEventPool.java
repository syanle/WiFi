// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.event;

import android.os.Looper;

// Referenced classes of package com.tencent.mm.sdk.event:
//            EventPoolFactory, IListener, IEvent

public static interface 
{

    public abstract boolean add(String s, IListener ilistener);

    public abstract void asyncPublish(IEvent ievent);

    public abstract void asyncPublish(IEvent ievent, Looper looper);

    public abstract void publish(IEvent ievent);

    public abstract void release(int i);

    public abstract boolean remove(String s, IListener ilistener);
}
