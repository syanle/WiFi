// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.EventListener;

// Referenced classes of package org.xbill.DNS:
//            Message

public interface ResolverListener
    extends EventListener
{

    public abstract void handleException(Object obj, Exception exception);

    public abstract void receiveMessage(Object obj, Message message);
}
