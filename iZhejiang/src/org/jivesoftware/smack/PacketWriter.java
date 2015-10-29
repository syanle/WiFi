// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import android.util.Log;
import java.io.IOException;
import java.io.Writer;
import java.net.SocketException;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import org.androidpn.client.LogUtil;
import org.androidpn.client.XmppManager;
import org.jivesoftware.smack.packet.Packet;

// Referenced classes of package org.jivesoftware.smack:
//            XMPPConnection, PacketReader, SmackConfiguration

class PacketWriter
{
    private class KeepAliveTask
        implements Runnable
    {

        private int delay;
        final PacketWriter this$0;
        private Thread thread;
        private XmppManager xmppManager;

        public void run()
        {
            try
            {
                Thread.sleep(15000L);
            }
            catch (InterruptedException interruptedexception) { }
            if (done || keepAliveThread != thread)
            {
                return;
            }
            if (System.currentTimeMillis() - lastActive < (long)delay)
            {
                break MISSING_BLOCK_LABEL_85;
            }
            synchronized (writer)
            {
                writer.write(" ");
                writer.flush();
            }
_L2:
            try
            {
                Thread.sleep(delay);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
            if (false)
            {
            } else
            {
                break MISSING_BLOCK_LABEL_6;
            }
            exception;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw exception;
            }
            catch (SocketException socketexception)
            {
                Log.e("PacketReader", socketexception.toString());
                connection.disconnect();
                xmppManager.startReconnectionThread();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        protected void setThread(Thread thread1)
        {
            thread = thread1;
        }

        public KeepAliveTask(int i, XmppManager xmppmanager)
        {
            this$0 = PacketWriter.this;
            super();
            delay = i;
            xmppManager = xmppmanager;
        }
    }


    private static final String LOG_TAG = LogUtil.makeLogTag(org/jivesoftware/smack/PacketWriter);
    private XMPPConnection connection;
    private boolean done;
    private Thread keepAliveThread;
    private long lastActive;
    private final BlockingQueue queue = new ArrayBlockingQueue(500, true);
    private Writer writer;
    private Thread writerThread;

    protected PacketWriter(XMPPConnection xmppconnection)
    {
        lastActive = System.currentTimeMillis();
        connection = xmppconnection;
        init();
    }

    private Packet nextPacket()
    {
        Packet packet = null;
_L2:
label0:
        {
            if (!done)
            {
                packet = (Packet)queue.poll();
                if (packet == null)
                {
                    break label0;
                }
            }
            return packet;
        }
        synchronized (queue)
        {
            queue.wait();
        }
        continue; /* Loop/switch isn't completed */
        exception;
        blockingqueue;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (InterruptedException interruptedexception) { }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void writePackets(Thread thread)
    {
        openStream();
_L11:
        if (done) goto _L2; else goto _L1
_L1:
        Thread thread1 = writerThread;
        if (thread1 == thread) goto _L3; else goto _L2
_L2:
        thread = writer;
        thread;
        JVM INSTR monitorenter ;
_L8:
        if (!queue.isEmpty()) goto _L5; else goto _L4
_L4:
        writer.flush();
_L9:
        queue.clear();
        writer.write("</stream:stream>");
        writer.flush();
        writer.close();
_L7:
        return;
_L3:
        Packet packet1 = nextPacket();
        if (packet1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        synchronized (writer)
        {
            writer.write(packet1.toXML());
            writer.flush();
            lastActive = System.currentTimeMillis();
        }
        continue; /* Loop/switch isn't completed */
        thread;
        writer1;
        JVM INSTR monitorexit ;
        try
        {
            throw thread;
        }
        // Misplaced declaration of an exception variable
        catch (Thread thread) { }
        if (done) goto _L7; else goto _L6
_L6:
        done = true;
        connection.packetReader.notifyConnectionError(thread);
        return;
_L5:
        Packet packet = (Packet)queue.remove();
        writer.write(packet.toXML());
          goto _L8
        Exception exception;
        exception;
        thread;
        JVM INSTR monitorexit ;
        throw exception;
        thread;
        thread.printStackTrace();
          goto _L9
        thread;
        writer.close();
        return;
        thread;
        return;
        thread;
        try
        {
            writer.close();
        }
        catch (Exception exception1) { }
        throw thread;
        thread;
        return;
        if (true) goto _L11; else goto _L10
_L10:
    }

    void cleanup()
    {
        connection.interceptors.clear();
        connection.sendListeners.clear();
    }

    protected void init()
    {
        writer = connection.writer;
        done = false;
        writerThread = new Thread() {

            final PacketWriter this$0;

            public void run()
            {
                writePackets(this);
            }

            
            {
                this$0 = PacketWriter.this;
                super();
            }
        };
        writerThread.setName((new StringBuilder("Smack Packet Writer (")).append(connection.connectionCounterValue).append(")").toString());
        writerThread.setDaemon(true);
    }

    void openStream()
        throws IOException
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<stream:stream");
        stringbuilder.append(" to=\"").append(connection.getServiceName()).append("\"");
        stringbuilder.append(" xmlns=\"jabber:client\"");
        stringbuilder.append(" xmlns:stream=\"http://etherx.jabber.org/streams\"");
        stringbuilder.append(" version=\"1.0\">");
        writer.write(stringbuilder.toString());
        writer.flush();
    }

    public void sendPacket(Packet packet)
    {
        if (!done)
        {
            connection.firePacketInterceptors(packet);
            try
            {
                queue.put(packet);
            }
            // Misplaced declaration of an exception variable
            catch (Packet packet)
            {
                packet.printStackTrace();
                return;
            }
            synchronized (queue)
            {
                queue.notifyAll();
            }
            connection.firePacketSendingListeners(packet);
        }
        return;
        packet;
        blockingqueue;
        JVM INSTR monitorexit ;
        throw packet;
    }

    void setWriter(Writer writer1)
    {
        writer = writer1;
    }

    public void shutdown()
    {
        done = true;
        synchronized (queue)
        {
            queue.notifyAll();
        }
        return;
        exception;
        blockingqueue;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void startKeepAliveProcess(XmppManager xmppmanager)
        throws Exception
    {
        int i = SmackConfiguration.getKeepAliveInterval();
        if (i > 0)
        {
            xmppmanager = new KeepAliveTask(i, xmppmanager);
            keepAliveThread = new Thread(xmppmanager);
            xmppmanager.setThread(keepAliveThread);
            keepAliveThread.setDaemon(true);
            keepAliveThread.setName((new StringBuilder("Smack Keep Alive (")).append(connection.connectionCounterValue).append(")").toString());
            keepAliveThread.start();
        }
    }

    public void startup()
    {
        writerThread.start();
    }







}
