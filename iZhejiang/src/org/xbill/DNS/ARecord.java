// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

// Referenced classes of package org.xbill.DNS:
//            Record, Address, Tokenizer, DNSInput, 
//            DNSOutput, Name, Compression

public class ARecord extends Record
{

    private static final long serialVersionUID = 0xe1d957715ba43dcdL;
    private int addr;

    ARecord()
    {
    }

    public ARecord(Name name, int i, long l, InetAddress inetaddress)
    {
        super(name, 1, i, l);
        if (Address.familyOf(inetaddress) != 1)
        {
            throw new IllegalArgumentException("invalid IPv4 address");
        } else
        {
            addr = fromArray(inetaddress.getAddress());
            return;
        }
    }

    private static final int fromArray(byte abyte0[])
    {
        return (abyte0[0] & 0xff) << 24 | (abyte0[1] & 0xff) << 16 | (abyte0[2] & 0xff) << 8 | abyte0[3] & 0xff;
    }

    private static final byte[] toArray(int i)
    {
        return (new byte[] {
            (byte)(i >>> 24 & 0xff), (byte)(i >>> 16 & 0xff), (byte)(i >>> 8 & 0xff), (byte)(i & 0xff)
        });
    }

    public InetAddress getAddress()
    {
        InetAddress inetaddress;
        try
        {
            inetaddress = InetAddress.getByAddress(toArray(addr));
        }
        catch (UnknownHostException unknownhostexception)
        {
            return null;
        }
        return inetaddress;
    }

    Record getObject()
    {
        return new ARecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        addr = fromArray(tokenizer.getAddress(1).getAddress());
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        addr = fromArray(dnsinput.readByteArray(4));
    }

    String rrToString()
    {
        return Address.toDottedQuad(toArray(addr));
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeU32((long)addr & 0xffffffffL);
    }
}
