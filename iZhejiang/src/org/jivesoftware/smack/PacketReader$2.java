// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package org.jivesoftware.smack:
//            PacketReader, XMPPConnection

class this._cls0
    implements ThreadFactory
{

    final PacketReader this$0;

    public Thread newThread(Runnable runnable)
    {
        runnable = new Thread(runnable, (new StringBuilder("Smack Listener Processor (")).append(PacketReader.access$0(PacketReader.this).connectionCounterValue).append(")").toString());
        runnable.setDaemon(true);
        return runnable;
    }

    ()
    {
        this$0 = PacketReader.this;
        super();
    }
}
