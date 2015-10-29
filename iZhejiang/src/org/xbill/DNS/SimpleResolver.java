// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            Resolver, ResolverConfig, Message, OPTRecord, 
//            WireParseException, Options, ZoneTransferException, Record, 
//            ZoneTransferIn, Header, TSIG, Rcode, 
//            TCPClient, UDPClient, Name, ResolveThread, 
//            ResolverListener

public class SimpleResolver
    implements Resolver
{

    public static final int DEFAULT_EDNS_PAYLOADSIZE = 1280;
    public static final int DEFAULT_PORT = 53;
    private static final short DEFAULT_UDPSIZE = 512;
    private static String defaultResolver = "localhost";
    private static int uniqueID = 0;
    private InetSocketAddress address;
    private boolean ignoreTruncation;
    private InetSocketAddress localAddress;
    private OPTRecord queryOPT;
    private long timeoutValue;
    private TSIG tsig;
    private boolean useTCP;

    public SimpleResolver()
        throws UnknownHostException
    {
        this(null);
    }

    public SimpleResolver(String s)
        throws UnknownHostException
    {
        timeoutValue = 10000L;
        String s1 = s;
        if (s == null)
        {
            s = ResolverConfig.getCurrentConfig().server();
            s1 = s;
            if (s == null)
            {
                s1 = defaultResolver;
            }
        }
        if (s1.equals("0"))
        {
            s = InetAddress.getLocalHost();
        } else
        {
            s = InetAddress.getByName(s1);
        }
        address = new InetSocketAddress(s, 53);
    }

    private void applyEDNS(Message message)
    {
        if (queryOPT == null || message.getOPT() != null)
        {
            return;
        } else
        {
            message.addRecord(queryOPT, 3);
            return;
        }
    }

    private int maxUDPSize(Message message)
    {
        message = message.getOPT();
        if (message == null)
        {
            return 512;
        } else
        {
            return message.getPayloadSize();
        }
    }

    private Message parseMessage(byte abyte0[])
        throws WireParseException
    {
        try
        {
            abyte0 = new Message(abyte0);
        }
        catch (IOException ioexception)
        {
            if (Options.check("verbose"))
            {
                ioexception.printStackTrace();
            }
            abyte0 = ioexception;
            if (!(ioexception instanceof WireParseException))
            {
                abyte0 = new WireParseException("Error parsing message");
            }
            throw (WireParseException)abyte0;
        }
        return abyte0;
    }

    private Message sendAXFR(Message message)
        throws IOException
    {
        Object obj = ZoneTransferIn.newAXFR(message.getQuestion().getName(), address, tsig);
        ((ZoneTransferIn) (obj)).setTimeout((int)(getTimeout() / 1000L));
        ((ZoneTransferIn) (obj)).setLocalAddress(localAddress);
        List list;
        try
        {
            ((ZoneTransferIn) (obj)).run();
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            throw new WireParseException(message.getMessage());
        }
        list = ((ZoneTransferIn) (obj)).getAXFR();
        obj = new Message(message.getHeader().getID());
        ((Message) (obj)).getHeader().setFlag(5);
        ((Message) (obj)).getHeader().setFlag(0);
        ((Message) (obj)).addRecord(message.getQuestion(), 0);
        message = list.iterator();
        do
        {
            if (!message.hasNext())
            {
                return ((Message) (obj));
            }
            ((Message) (obj)).addRecord((Record)message.next(), 1);
        } while (true);
    }

    public static void setDefaultResolver(String s)
    {
        defaultResolver = s;
    }

    private void verifyTSIG(Message message, Message message1, byte abyte0[], TSIG tsig1)
    {
        if (tsig1 != null)
        {
            int i = tsig1.verify(message1, abyte0, message.getTSIG());
            if (Options.check("verbose"))
            {
                System.err.println((new StringBuilder("TSIG verify: ")).append(Rcode.string(i)).toString());
                return;
            }
        }
    }

    InetSocketAddress getAddress()
    {
        return address;
    }

    TSIG getTSIGKey()
    {
        return tsig;
    }

    long getTimeout()
    {
        return timeoutValue;
    }

    public Message send(Message message)
        throws IOException
    {
        if (Options.check("verbose"))
        {
            System.err.println((new StringBuilder("Sending to ")).append(address.getAddress().getHostAddress()).append(":").append(address.getPort()).toString());
        }
        if (message.getHeader().getOpcode() != 0) goto _L2; else goto _L1
_L1:
        Object obj = message.getQuestion();
        if (obj == null || ((Record) (obj)).getType() != 252) goto _L2; else goto _L3
_L3:
        message = sendAXFR(message);
_L5:
        return message;
_L2:
        Message message1;
        byte abyte0[];
        int i;
        int j;
        long l;
        message1 = (Message)message.clone();
        applyEDNS(message1);
        if (tsig != null)
        {
            tsig.apply(message1, null);
        }
        abyte0 = message1.toWire(65535);
        j = maxUDPSize(message1);
        i = 0;
        l = System.currentTimeMillis() + timeoutValue;
_L8:
        boolean flag;
        do
        {
label0:
            {
                if (!useTCP)
                {
                    flag = i;
                    if (abyte0.length <= j)
                    {
                        break label0;
                    }
                }
                flag = true;
            }
label1:
            {
                if (flag)
                {
                    message = TCPClient.sendrecv(localAddress, address, abyte0, l);
                } else
                {
                    message = UDPClient.sendrecv(localAddress, address, abyte0, j, l);
                }
                if (message.length < 12)
                {
                    throw new WireParseException("invalid DNS header - too short");
                }
                i = ((message[0] & 0xff) << 8) + (message[1] & 0xff);
                int k = message1.getHeader().getID();
                if (i == k)
                {
                    break label1;
                }
                message = (new StringBuilder("invalid message id: expected ")).append(k).append("; got id ").append(i).toString();
                if (flag)
                {
                    throw new WireParseException(message);
                }
                i = ((flag) ? 1 : 0);
                if (Options.check("verbose"))
                {
                    System.err.println(message);
                    i = ((flag) ? 1 : 0);
                }
            }
        } while (true);
        obj = parseMessage(message);
        verifyTSIG(message1, ((Message) (obj)), message, tsig);
        message = ((Message) (obj));
        if (flag) goto _L5; else goto _L4
_L4:
        message = ((Message) (obj));
        if (ignoreTruncation) goto _L5; else goto _L6
_L6:
        message = ((Message) (obj));
        if (!((Message) (obj)).getHeader().getFlag(6)) goto _L5; else goto _L7
_L7:
        i = 1;
          goto _L8
    }

    public Object sendAsync(Message message, ResolverListener resolverlistener)
    {
        this;
        JVM INSTR monitorenter ;
        Integer integer;
        int i = uniqueID;
        uniqueID = i + 1;
        integer = new Integer(i);
        this;
        JVM INSTR monitorexit ;
        Object obj = message.getQuestion();
        if (obj != null)
        {
            obj = ((Record) (obj)).getName().toString();
        } else
        {
            obj = "(none)";
        }
        obj = (new StringBuilder()).append(getClass()).append(": ").append(((String) (obj))).toString();
        message = new ResolveThread(this, message, integer, resolverlistener);
        message.setName(((String) (obj)));
        message.setDaemon(true);
        message.start();
        return integer;
        message;
        this;
        JVM INSTR monitorexit ;
        throw message;
    }

    public void setAddress(InetAddress inetaddress)
    {
        address = new InetSocketAddress(inetaddress, address.getPort());
    }

    public void setAddress(InetSocketAddress inetsocketaddress)
    {
        address = inetsocketaddress;
    }

    public void setEDNS(int i)
    {
        setEDNS(i, 0, 0, null);
    }

    public void setEDNS(int i, int j, int k, List list)
    {
        if (i != 0 && i != -1)
        {
            throw new IllegalArgumentException("invalid EDNS level - must be 0 or -1");
        }
        int l = j;
        if (j == 0)
        {
            l = 1280;
        }
        queryOPT = new OPTRecord(l, 0, i, k, list);
    }

    public void setIgnoreTruncation(boolean flag)
    {
        ignoreTruncation = flag;
    }

    public void setLocalAddress(InetAddress inetaddress)
    {
        localAddress = new InetSocketAddress(inetaddress, 0);
    }

    public void setLocalAddress(InetSocketAddress inetsocketaddress)
    {
        localAddress = inetsocketaddress;
    }

    public void setPort(int i)
    {
        address = new InetSocketAddress(address.getAddress(), i);
    }

    public void setTCP(boolean flag)
    {
        useTCP = flag;
    }

    public void setTSIGKey(TSIG tsig1)
    {
        tsig = tsig1;
    }

    public void setTimeout(int i)
    {
        setTimeout(i, 0);
    }

    public void setTimeout(int i, int j)
    {
        timeoutValue = (long)i * 1000L + (long)j;
    }

}
