// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            Connection

public class PacketCollector
{

    private static final int MAX_PACKETS = 0x10000;
    private boolean cancelled;
    private Connection conection;
    private PacketFilter packetFilter;
    private LinkedBlockingQueue resultQueue;

    protected PacketCollector(Connection connection, PacketFilter packetfilter)
    {
        cancelled = false;
        conection = connection;
        packetFilter = packetfilter;
        resultQueue = new LinkedBlockingQueue(0x10000);
    }

    public void cancel()
    {
        if (!cancelled)
        {
            conection.removePacketCollector(this);
            cancelled = true;
        }
    }

    public PacketFilter getPacketFilter()
    {
        return packetFilter;
    }

    public Packet nextResult()
    {
_L2:
        Packet packet = (Packet)resultQueue.take();
        return packet;
        InterruptedException interruptedexception;
        interruptedexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Packet nextResult(long l)
    {
        long l1 = System.currentTimeMillis();
_L2:
        Packet packet = (Packet)resultQueue.poll(l, TimeUnit.MILLISECONDS);
        return packet;
        InterruptedException interruptedexception;
        interruptedexception;
        if (System.currentTimeMillis() >= l1 + l)
        {
            return null;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Packet pollResult()
    {
        return (Packet)resultQueue.poll();
    }

    protected void processPacket(Packet packet)
    {
        this;
        JVM INSTR monitorenter ;
        if (packet != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (packetFilter == null || packetFilter.accept(packet))
        {
            while (!resultQueue.offer(packet)) 
            {
                resultQueue.poll();
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        packet;
        throw packet;
    }
}
