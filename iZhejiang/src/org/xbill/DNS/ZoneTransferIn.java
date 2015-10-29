// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            NameTooLongException, Name, TCPClient, ZoneTransferException, 
//            Message, Header, Rcode, Record, 
//            SOARecord, Options, WireParseException, TSIG, 
//            DClass

public class ZoneTransferIn
{
    public static class Delta
    {

        public List adds;
        public List deletes;
        public long end;
        public long start;

        private Delta()
        {
            adds = new ArrayList();
            deletes = new ArrayList();
        }

        Delta(Delta delta)
        {
            this();
        }
    }


    private static final int AXFR = 6;
    private static final int END = 7;
    private static final int FIRSTDATA = 1;
    private static final int INITIALSOA = 0;
    private static final int IXFR_ADD = 5;
    private static final int IXFR_ADDSOA = 4;
    private static final int IXFR_DEL = 3;
    private static final int IXFR_DELSOA = 2;
    private SocketAddress address;
    private List axfr;
    private TCPClient client;
    private long current_serial;
    private int dclass;
    private long end_serial;
    private Record initialsoa;
    private List ixfr;
    private long ixfr_serial;
    private SocketAddress localAddress;
    private int qtype;
    private int rtype;
    private int state;
    private long timeout;
    private TSIG tsig;
    private TSIG.StreamVerifier verifier;
    private boolean want_fallback;
    private Name zname;

    private ZoneTransferIn()
    {
        timeout = 0xdbba0L;
    }

    private ZoneTransferIn(Name name, int i, long l, boolean flag, SocketAddress socketaddress, TSIG tsig1)
    {
        timeout = 0xdbba0L;
        address = socketaddress;
        tsig = tsig1;
        if (name.isAbsolute())
        {
            zname = name;
        } else
        {
            try
            {
                zname = Name.concatenate(name, Name.root);
            }
            // Misplaced declaration of an exception variable
            catch (Name name)
            {
                throw new IllegalArgumentException("ZoneTransferIn: name too long");
            }
        }
        qtype = i;
        dclass = 1;
        ixfr_serial = l;
        want_fallback = flag;
        state = 0;
    }

    private void closeConnection()
    {
        try
        {
            if (client != null)
            {
                client.cleanup();
            }
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    private void doxfr()
        throws IOException, ZoneTransferException
    {
        sendQuery();
_L2:
        if (state == 7)
        {
            return;
        }
        Object aobj[] = client.recv();
        Message message = parseMessage(((byte []) (aobj)));
        if (message.getHeader().getRcode() == 0 && verifier != null)
        {
            message.getTSIG();
            if (verifier.verify(message, ((byte []) (aobj))) != 0)
            {
                fail("TSIG failure");
            }
        }
        aobj = message.getSectionArray(1);
        if (state == 0)
        {
            int i = message.getRcode();
            if (i != 0)
            {
                if (qtype == 251 && i == 4)
                {
                    fallback();
                    doxfr();
                    return;
                }
                fail(Rcode.string(i));
            }
            Record record = message.getQuestion();
            if (record != null && record.getType() != qtype)
            {
                fail("invalid question section");
            }
            if (aobj.length == 0 && qtype == 251)
            {
                fallback();
                doxfr();
                return;
            }
        }
        int j = 0;
        do
        {
label0:
            {
                if (j < aobj.length)
                {
                    break label0;
                }
                if (state == 7 && verifier != null && !message.isVerified())
                {
                    fail("last message must be signed");
                }
            }
            if (true)
            {
                continue;
            }
            parseRR(aobj[j]);
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void fail(String s)
        throws ZoneTransferException
    {
        throw new ZoneTransferException(s);
    }

    private void fallback()
        throws ZoneTransferException
    {
        if (!want_fallback)
        {
            fail("server doesn't support IXFR");
        }
        logxfr("falling back to AXFR");
        qtype = 252;
        state = 0;
    }

    private long getSOASerial(Record record)
    {
        return ((SOARecord)record).getSerial();
    }

    private void logxfr(String s)
    {
        if (Options.check("verbose"))
        {
            System.out.println((new StringBuilder()).append(zname).append(": ").append(s).toString());
        }
    }

    public static ZoneTransferIn newAXFR(Name name, String s, int i, TSIG tsig1)
        throws UnknownHostException
    {
        int j = i;
        if (i == 0)
        {
            j = 53;
        }
        return newAXFR(name, ((SocketAddress) (new InetSocketAddress(s, j))), tsig1);
    }

    public static ZoneTransferIn newAXFR(Name name, String s, TSIG tsig1)
        throws UnknownHostException
    {
        return newAXFR(name, s, 0, tsig1);
    }

    public static ZoneTransferIn newAXFR(Name name, SocketAddress socketaddress, TSIG tsig1)
    {
        return new ZoneTransferIn(name, 252, 0L, false, socketaddress, tsig1);
    }

    public static ZoneTransferIn newIXFR(Name name, long l, boolean flag, String s, int i, TSIG tsig1)
        throws UnknownHostException
    {
        int j = i;
        if (i == 0)
        {
            j = 53;
        }
        return newIXFR(name, l, flag, ((SocketAddress) (new InetSocketAddress(s, j))), tsig1);
    }

    public static ZoneTransferIn newIXFR(Name name, long l, boolean flag, String s, TSIG tsig1)
        throws UnknownHostException
    {
        return newIXFR(name, l, flag, s, 0, tsig1);
    }

    public static ZoneTransferIn newIXFR(Name name, long l, boolean flag, SocketAddress socketaddress, TSIG tsig1)
    {
        return new ZoneTransferIn(name, 251, l, flag, socketaddress, tsig1);
    }

    private void openConnection()
        throws IOException
    {
        client = new TCPClient(System.currentTimeMillis() + timeout);
        if (localAddress != null)
        {
            client.bind(localAddress);
        }
        client.connect(address);
    }

    private Message parseMessage(byte abyte0[])
        throws WireParseException
    {
        try
        {
            abyte0 = new Message(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            if (abyte0 instanceof WireParseException)
            {
                throw (WireParseException)abyte0;
            } else
            {
                throw new WireParseException("Error parsing message");
            }
        }
        return abyte0;
    }

    private void parseRR(Record record)
        throws ZoneTransferException
    {
        int i = record.getType();
        state;
        JVM INSTR tableswitch 0 7: default 56
    //                   0 64
    //                   1 133
    //                   2 246
    //                   3 292
    //                   4 352
    //                   5 402
    //                   6 522
    //                   7 562;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        fail("invalid state");
_L15:
        return;
_L2:
        if (i != 6)
        {
            fail("missing initial SOA");
        }
        initialsoa = record;
        end_serial = getSOASerial(record);
        if (qtype == 251 && end_serial <= ixfr_serial)
        {
            logxfr("up to date");
            state = 7;
            return;
        } else
        {
            state = 1;
            return;
        }
_L3:
        if (qtype == 251 && i == 6 && getSOASerial(record) == ixfr_serial)
        {
            rtype = 251;
            ixfr = new ArrayList();
            logxfr("got incremental response");
            state = 2;
        } else
        {
            rtype = 252;
            axfr = new ArrayList();
            axfr.add(initialsoa);
            logxfr("got nonincremental response");
            state = 6;
        }
        parseRR(record);
        return;
_L4:
        Delta delta = new Delta(null);
        ixfr.add(delta);
        delta.start = getSOASerial(record);
        delta.deletes.add(record);
        state = 3;
        return;
_L5:
        if (i == 6)
        {
            current_serial = getSOASerial(record);
            state = 4;
            parseRR(record);
            return;
        } else
        {
            ((Delta)ixfr.get(ixfr.size() - 1)).deletes.add(record);
            return;
        }
_L6:
        Delta delta1 = (Delta)ixfr.get(ixfr.size() - 1);
        delta1.end = getSOASerial(record);
        delta1.adds.add(record);
        state = 5;
        return;
_L7:
        if (i != 6) goto _L11; else goto _L10
_L10:
        long l;
        l = getSOASerial(record);
        if (l == end_serial)
        {
            state = 7;
            return;
        }
        if (l == current_serial) goto _L13; else goto _L12
_L12:
        fail((new StringBuilder("IXFR out of sync: expected serial ")).append(current_serial).append(" , got ").append(l).toString());
_L11:
        ((Delta)ixfr.get(ixfr.size() - 1)).adds.add(record);
        return;
_L13:
        state = 2;
        parseRR(record);
        return;
_L8:
        if (i == 1 && record.getDClass() != dclass) goto _L15; else goto _L14
_L14:
        axfr.add(record);
        if (i != 6) goto _L15; else goto _L16
_L16:
        state = 7;
        return;
_L9:
        fail("extra data");
        return;
    }

    private void sendQuery()
        throws IOException
    {
        Record record = Record.newRecord(zname, qtype, dclass);
        Message message = new Message();
        message.getHeader().setOpcode(0);
        message.addRecord(record, 0);
        if (qtype == 251)
        {
            message.addRecord(new SOARecord(zname, dclass, 0L, Name.root, Name.root, ixfr_serial, 0L, 0L, 0L, 0L), 2);
        }
        if (tsig != null)
        {
            tsig.apply(message, null);
            verifier = new TSIG.StreamVerifier(tsig, message.getTSIG());
        }
        byte abyte0[] = message.toWire(65535);
        client.send(abyte0);
    }

    public List getAXFR()
    {
        return axfr;
    }

    public List getIXFR()
    {
        return ixfr;
    }

    public Name getName()
    {
        return zname;
    }

    public int getType()
    {
        return qtype;
    }

    public boolean isAXFR()
    {
        return rtype == 252;
    }

    public boolean isCurrent()
    {
        return axfr == null && ixfr == null;
    }

    public boolean isIXFR()
    {
        return rtype == 251;
    }

    public List run()
        throws IOException, ZoneTransferException
    {
        openConnection();
        doxfr();
        closeConnection();
        Exception exception;
        if (axfr != null)
        {
            return axfr;
        } else
        {
            return ixfr;
        }
        exception;
        closeConnection();
        throw exception;
    }

    public void setDClass(int i)
    {
        DClass.check(i);
        dclass = i;
    }

    public void setLocalAddress(SocketAddress socketaddress)
    {
        localAddress = socketaddress;
    }

    public void setTimeout(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("timeout cannot be negative");
        } else
        {
            timeout = 1000L * (long)i;
            return;
        }
    }
}
