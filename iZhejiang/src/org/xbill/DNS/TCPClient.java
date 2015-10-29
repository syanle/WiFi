// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.EOFException;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

// Referenced classes of package org.xbill.DNS:
//            Client

final class TCPClient extends Client
{

    public TCPClient(long l)
        throws IOException
    {
        super(SocketChannel.open(), l);
    }

    private byte[] _recv(int i)
        throws IOException
    {
        SocketChannel socketchannel;
        byte abyte0[];
        ByteBuffer bytebuffer;
        int j;
        socketchannel = (SocketChannel)key.channel();
        j = 0;
        abyte0 = new byte[i];
        bytebuffer = ByteBuffer.wrap(abyte0);
        key.interestOps(1);
_L2:
        if (j >= i)
        {
            if (key.isValid())
            {
                key.interestOps(0);
            }
            return abyte0;
        }
        long l;
        if (!key.isReadable())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        l = socketchannel.read(bytebuffer);
        if (l >= 0L)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        throw new EOFException();
        Exception exception;
        exception;
        if (key.isValid())
        {
            key.interestOps(0);
        }
        throw exception;
        int k;
        k = j + (int)l;
        j = k;
        if (k >= i) goto _L2; else goto _L1
_L1:
        j = k;
        if (System.currentTimeMillis() <= endTime) goto _L2; else goto _L3
_L3:
        throw new SocketTimeoutException();
        blockUntil(key, endTime);
          goto _L2
    }

    static byte[] sendrecv(SocketAddress socketaddress, SocketAddress socketaddress1, byte abyte0[], long l)
        throws IOException
    {
        TCPClient tcpclient;
        tcpclient = new TCPClient(l);
        if (socketaddress == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        tcpclient.bind(socketaddress);
        tcpclient.connect(socketaddress1);
        tcpclient.send(abyte0);
        socketaddress = tcpclient.recv();
        tcpclient.cleanup();
        return socketaddress;
        socketaddress;
        tcpclient.cleanup();
        throw socketaddress;
    }

    static byte[] sendrecv(SocketAddress socketaddress, byte abyte0[], long l)
        throws IOException
    {
        return sendrecv(null, socketaddress, abyte0, l);
    }

    void bind(SocketAddress socketaddress)
        throws IOException
    {
        ((SocketChannel)key.channel()).socket().bind(socketaddress);
    }

    void connect(SocketAddress socketaddress)
        throws IOException
    {
        SocketChannel socketchannel = (SocketChannel)key.channel();
        if (!socketchannel.connect(socketaddress)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        key.interestOps(8);
_L7:
        boolean flag = socketchannel.finishConnect();
        if (!flag) goto _L4; else goto _L3
_L3:
        if (!key.isValid()) goto _L1; else goto _L5
_L5:
        key.interestOps(0);
        return;
_L4:
        if (key.isConnectable()) goto _L7; else goto _L6
_L6:
        blockUntil(key, endTime);
          goto _L7
        socketaddress;
        if (key.isValid())
        {
            key.interestOps(0);
        }
        throw socketaddress;
    }

    byte[] recv()
        throws IOException
    {
        byte abyte0[] = _recv(2);
        abyte0 = _recv(((abyte0[0] & 0xff) << 8) + (abyte0[1] & 0xff));
        verboseLog("TCP read", abyte0);
        return abyte0;
    }

    void send(byte abyte0[])
        throws IOException
    {
        SocketChannel socketchannel;
        ByteBuffer bytebuffer;
        ByteBuffer bytebuffer1;
        int i;
        socketchannel = (SocketChannel)key.channel();
        verboseLog("TCP write", abyte0);
        bytebuffer = ByteBuffer.wrap(new byte[] {
            (byte)(abyte0.length >>> 8), (byte)(abyte0.length & 0xff)
        });
        bytebuffer1 = ByteBuffer.wrap(abyte0);
        i = 0;
        key.interestOps(4);
_L2:
        int j = abyte0.length;
        if (i >= j + 2)
        {
            if (key.isValid())
            {
                key.interestOps(0);
            }
            return;
        }
        long l;
        if (!key.isWritable())
        {
            break MISSING_BLOCK_LABEL_204;
        }
        l = socketchannel.write(new ByteBuffer[] {
            bytebuffer, bytebuffer1
        });
        if (l >= 0L)
        {
            break MISSING_BLOCK_LABEL_160;
        }
        throw new EOFException();
        abyte0;
        if (key.isValid())
        {
            key.interestOps(0);
        }
        throw abyte0;
        j = i + (int)l;
        i = j;
        if (j >= abyte0.length + 2) goto _L2; else goto _L1
_L1:
        i = j;
        if (System.currentTimeMillis() <= endTime) goto _L2; else goto _L3
_L3:
        throw new SocketTimeoutException();
        blockUntil(key, endTime);
          goto _L2
    }
}
