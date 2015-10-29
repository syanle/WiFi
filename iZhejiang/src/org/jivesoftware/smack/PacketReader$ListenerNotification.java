// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            PacketReader, XMPPConnection

private class packet
    implements Runnable
{

    private Packet packet;
    final PacketReader this$0;

    public void run()
    {
        Iterator iterator = PacketReader.access$0(PacketReader.this).recvListeners.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((this._cls0)iterator.next()).istener(packet);
        } while (true);
    }

    public (Packet packet1)
    {
        this$0 = PacketReader.this;
        super();
        packet = packet1;
    }
}
