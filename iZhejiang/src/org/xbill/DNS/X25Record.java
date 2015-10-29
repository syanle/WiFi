// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, DNSInput, DNSOutput, 
//            Name, Compression

public class X25Record extends Record
{

    private static final long serialVersionUID = 0x3b3979fdac5ae274L;
    private byte address[];

    X25Record()
    {
    }

    public X25Record(Name name, int i, long l, String s)
    {
        super(name, 19, i, l);
        address = checkAndConvertAddress(s);
        if (address == null)
        {
            throw new IllegalArgumentException((new StringBuilder("invalid PSDN address ")).append(s).toString());
        } else
        {
            return;
        }
    }

    private static final byte[] checkAndConvertAddress(String s)
    {
        int j = s.length();
        byte abyte0[] = new byte[j];
        int i = 0;
        do
        {
            if (i >= j)
            {
                return abyte0;
            }
            char c = s.charAt(i);
            if (!Character.isDigit(c))
            {
                return null;
            }
            abyte0[i] = (byte)c;
            i++;
        } while (true);
    }

    public String getAddress()
    {
        return byteArrayToString(address, false);
    }

    Record getObject()
    {
        return new X25Record();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        name = tokenizer.getString();
        address = checkAndConvertAddress(name);
        if (address == null)
        {
            throw tokenizer.exception((new StringBuilder("invalid PSDN address ")).append(name).toString());
        } else
        {
            return;
        }
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        address = dnsinput.readCountedString();
    }

    String rrToString()
    {
        return byteArrayToString(address, true);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeCountedString(address);
    }
}
