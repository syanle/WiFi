// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, TextParseException, Tokenizer, DNSInput, 
//            DNSOutput, Name, Compression

public class HINFORecord extends Record
{

    private static final long serialVersionUID = 0xbe51773caa7f8b30L;
    private byte cpu[];
    private byte os[];

    HINFORecord()
    {
    }

    public HINFORecord(Name name, int i, long l, String s, String s1)
    {
        super(name, 13, i, l);
        try
        {
            cpu = byteArrayFromString(s);
            os = byteArrayFromString(s1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw new IllegalArgumentException(name.getMessage());
        }
    }

    public String getCPU()
    {
        return byteArrayToString(cpu, false);
    }

    public String getOS()
    {
        return byteArrayToString(os, false);
    }

    Record getObject()
    {
        return new HINFORecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        try
        {
            cpu = byteArrayFromString(tokenizer.getString());
            os = byteArrayFromString(tokenizer.getString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Name name)
        {
            throw tokenizer.exception(name.getMessage());
        }
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        cpu = dnsinput.readCountedString();
        os = dnsinput.readCountedString();
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(byteArrayToString(cpu, true));
        stringbuffer.append(" ");
        stringbuffer.append(byteArrayToString(os, true));
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeCountedString(cpu);
        dnsoutput.writeCountedString(os);
    }
}
