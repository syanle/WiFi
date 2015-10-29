// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, TextParseException, Tokenizer, DNSInput, 
//            DNSOutput, Name, Compression

public class ISDNRecord extends Record
{

    private static final long serialVersionUID = 0x86d5f665dfeb4d22L;
    private byte address[];
    private byte subAddress[];

    ISDNRecord()
    {
    }

    public ISDNRecord(Name name, int i, long l, String s, String s1)
    {
        super(name, 20, i, l);
        try
        {
            address = byteArrayFromString(s);
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw new IllegalArgumentException(name.getMessage());
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        subAddress = byteArrayFromString(s1);
    }

    public String getAddress()
    {
        return byteArrayToString(address, false);
    }

    Record getObject()
    {
        return new ISDNRecord();
    }

    public String getSubAddress()
    {
        if (subAddress == null)
        {
            return null;
        } else
        {
            return byteArrayToString(subAddress, false);
        }
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        try
        {
            address = byteArrayFromString(tokenizer.getString());
            name = tokenizer.get();
            if (name.isString())
            {
                subAddress = byteArrayFromString(((Tokenizer.Token) (name)).value);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw tokenizer.exception(name.getMessage());
        }
        tokenizer.unget();
        return;
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        address = dnsinput.readCountedString();
        if (dnsinput.remaining() > 0)
        {
            subAddress = dnsinput.readCountedString();
        }
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(byteArrayToString(address, true));
        if (subAddress != null)
        {
            stringbuffer.append(" ");
            stringbuffer.append(byteArrayToString(subAddress, true));
        }
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeCountedString(address);
        if (subAddress != null)
        {
            dnsoutput.writeCountedString(subAddress);
        }
    }
}
