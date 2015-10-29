// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            DNSOutput, Compression

public class MINFORecord extends Record
{

    private static final long serialVersionUID = 0xc903a0239cd5b4fcL;
    private Name errorAddress;
    private Name responsibleAddress;

    MINFORecord()
    {
    }

    public MINFORecord(Name name, int i, long l, Name name1, Name name2)
    {
        super(name, 14, i, l);
        responsibleAddress = checkName("responsibleAddress", name1);
        errorAddress = checkName("errorAddress", name2);
    }

    public Name getErrorAddress()
    {
        return errorAddress;
    }

    Record getObject()
    {
        return new MINFORecord();
    }

    public Name getResponsibleAddress()
    {
        return responsibleAddress;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        responsibleAddress = tokenizer.getName(name);
        errorAddress = tokenizer.getName(name);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        responsibleAddress = new Name(dnsinput);
        errorAddress = new Name(dnsinput);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(responsibleAddress);
        stringbuffer.append(" ");
        stringbuffer.append(errorAddress);
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        responsibleAddress.toWire(dnsoutput, null, flag);
        errorAddress.toWire(dnsoutput, null, flag);
    }
}
