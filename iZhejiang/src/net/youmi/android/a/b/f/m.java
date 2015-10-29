// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.b.f;

import java.io.EOFException;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.security.SecureRandom;

// Referenced classes of package net.youmi.android.a.b.f:
//            a, n

final class m extends a
{

    private static SecureRandom c = new SecureRandom();
    private static volatile boolean d = true;
    private boolean e;

    public m(long l)
    {
        super(DatagramChannel.open(), l);
        e = false;
    }

    private void a(InetSocketAddress inetsocketaddress)
    {
        if (!d) goto _L2; else goto _L1
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
        if (!d) goto _L2; else goto _L3
_L3:
        return;
_L2:
        datagramchannel = (DatagramChannel)b.channel();
        i = 0;
_L7:
        if (i >= 1024)
        {
            continue; /* Loop/switch isn't completed */
        }
        j = c.nextInt(64511) + 1024;
        if (inetsocketaddress == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        inetsocketaddress1 = new InetSocketAddress(inetsocketaddress.getAddress(), j);
_L5:
        datagramchannel.socket().bind(inetsocketaddress1);
        e = true;
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

    static boolean a(boolean flag)
    {
        d = flag;
        return flag;
    }

    static byte[] a(SocketAddress socketaddress, SocketAddress socketaddress1, byte abyte0[], int i, long l)
    {
        m m1 = new m(l);
        m1.a(socketaddress);
        m1.b(socketaddress1);
        m1.a(abyte0);
        socketaddress = m1.a(i);
        m1.a();
        return socketaddress;
        socketaddress;
        m1.a();
        throw socketaddress;
    }

    static SecureRandom b()
    {
        return c;
    }

    void a(SocketAddress socketaddress)
    {
        if (socketaddress != null && (!(socketaddress instanceof InetSocketAddress) || ((InetSocketAddress)socketaddress).getPort() != 0)) goto _L2; else goto _L1
_L1:
        a((InetSocketAddress)socketaddress);
        if (!e) goto _L2; else goto _L3
_L3:
        return;
_L2:
        if (socketaddress != null)
        {
            ((DatagramChannel)b.channel()).socket().bind(socketaddress);
            e = true;
            return;
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    void a(byte abyte0[])
    {
        ((DatagramChannel)b.channel()).write(ByteBuffer.wrap(abyte0));
    }

    byte[] a(int i)
    {
        Object obj;
        DatagramChannel datagramchannel;
        datagramchannel = (DatagramChannel)b.channel();
        obj = new byte[i];
        b.interestOps(1);
        for (; !b.isReadable(); a(b, a)) { }
        break MISSING_BLOCK_LABEL_70;
        obj;
        if (b.isValid())
        {
            b.interestOps(0);
        }
        throw obj;
        if (b.isValid())
        {
            b.interestOps(0);
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
            return abyte0;
        }
    }

    void b(SocketAddress socketaddress)
    {
        if (!e)
        {
            a(((SocketAddress) (null)));
        }
        ((DatagramChannel)b.channel()).connect(socketaddress);
    }

    static 
    {
        (new Thread(new n())).start();
    }
}
