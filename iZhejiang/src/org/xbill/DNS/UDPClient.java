// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.EOFException;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.security.SecureRandom;

// Referenced classes of package org.xbill.DNS:
//            Client

final class UDPClient extends Client
{

    private static final int EPHEMERAL_RANGE = 64511;
    private static final int EPHEMERAL_START = 1024;
    private static final int EPHEMERAL_STOP = 65535;
    private static SecureRandom prng = new SecureRandom();
    private static volatile boolean prng_initializing = true;
    private boolean bound;

    public UDPClient(long l)
        throws IOException
    {
        super(DatagramChannel.open(), l);
        bound = false;
    }

    private void bind_random(InetSocketAddress inetsocketaddress)
        throws IOException
    {
        if (!prng_initializing) goto _L2; else goto _L1
_L1:
        InetSocketAddress inetsocketaddress1;
        DatagramChannel datagramchannel;
        int i;
        int j;
        try
        {
            Thread.sleep(2L);
        }
        catch (InterruptedException interruptedexception) { }
        if (!prng_initializing) goto _L2; else goto _L3
_L3:
        return;
_L2:
        datagramchannel = (DatagramChannel)key.channel();
        i = 0;
_L7:
        if (i >= 1024)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = prng.nextInt(64511) + 1024;
        if (inetsocketaddress == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        inetsocketaddress1 = new InetSocketAddress(inetsocketaddress.getAddress(), j);
_L5:
        datagramchannel.socket().bind(inetsocketaddress1);
        bound = true;
        return;
        inetsocketaddress1 = new InetSocketAddress(j);
        if (true) goto _L5; else goto _L4
_L4:
        SocketException socketexception;
        socketexception;
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        if (true) goto _L3; else goto _L8
_L8:
    }

    static byte[] sendrecv(SocketAddress socketaddress, SocketAddress socketaddress1, byte abyte0[], int i, long l)
        throws IOException
    {
        UDPClient udpclient = new UDPClient(l);
        udpclient.bind(socketaddress);
        udpclient.connect(socketaddress1);
        udpclient.send(abyte0);
        socketaddress = udpclient.recv(i);
        udpclient.cleanup();
        return socketaddress;
        socketaddress;
        udpclient.cleanup();
        throw socketaddress;
    }

    static byte[] sendrecv(SocketAddress socketaddress, byte abyte0[], int i, long l)
        throws IOException
    {
        return sendrecv(null, socketaddress, abyte0, i, l);
    }

    void bind(SocketAddress socketaddress)
        throws IOException
    {
        if (socketaddress != null && (!(socketaddress instanceof InetSocketAddress) || ((InetSocketAddress)socketaddress).getPort() != 0)) goto _L2; else goto _L1
_L1:
        bind_random((InetSocketAddress)socketaddress);
        if (!bound) goto _L2; else goto _L3
_L3:
        return;
_L2:
        if (socketaddress != null)
        {
            ((DatagramChannel)key.channel()).socket().bind(socketaddress);
            bound = true;
            return;
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    void connect(SocketAddress socketaddress)
        throws IOException
    {
        if (!bound)
        {
            bind(null);
        }
        ((DatagramChannel)key.channel()).connect(socketaddress);
    }

    byte[] recv(int i)
        throws IOException
    {
        Object obj;
        DatagramChannel datagramchannel;
        datagramchannel = (DatagramChannel)key.channel();
        obj = new byte[i];
        key.interestOps(1);
_L1:
        boolean flag = key.isReadable();
        if (flag)
        {
            if (key.isValid())
            {
                key.interestOps(0);
            }
            long l = datagramchannel.read(ByteBuffer.wrap(((byte []) (obj))));
            if (l <= 0L)
            {
                throw new EOFException();
            } else
            {
                i = (int)l;
                byte abyte0[] = new byte[i];
                System.arraycopy(obj, 0, abyte0, 0, i);
                verboseLog("UDP read", abyte0);
                return abyte0;
            }
        }
        blockUntil(key, endTime);
          goto _L1
        obj;
        if (key.isValid())
        {
            key.interestOps(0);
        }
        throw obj;
    }

    void send(byte abyte0[])
        throws IOException
    {
        DatagramChannel datagramchannel = (DatagramChannel)key.channel();
        verboseLog("UDP write", abyte0);
        datagramchannel.write(ByteBuffer.wrap(abyte0));
    }

    static 
    {
        (new Thread(new Runnable() {

            public void run()
            {
                UDPClient.prng.nextInt();
                UDPClient.prng_initializing = false;
            }

        })).start();
    }


}
