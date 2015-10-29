// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import android.util.Log;
import java.io.IOException;
import java.io.Writer;
import java.net.SocketException;
import org.androidpn.client.XmppManager;

// Referenced classes of package org.jivesoftware.smack:
//            PacketWriter, XMPPConnection

private class xmppManager
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
        if (PacketWriter.access$0(PacketWriter.this) || PacketWriter.access$1(PacketWriter.this) != thread)
        {
            return;
        }
        if (System.currentTimeMillis() - PacketWriter.access$2(PacketWriter.this) < (long)delay)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        synchronized (PacketWriter.access$3(PacketWriter.this))
        {
            PacketWriter.access$3(PacketWriter.this).write(" ");
            PacketWriter.access$3(PacketWriter.this).flush();
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
            PacketWriter.access$4(PacketWriter.this).disconnect();
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

    public (int i, XmppManager xmppmanager)
    {
        this$0 = PacketWriter.this;
        super();
        delay = i;
        xmppManager = xmppmanager;
    }
}
