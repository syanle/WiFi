// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, DNSInput, DNSOutput, 
//            Name, Compression

public class UNKRecord extends Record
{

    private static final long serialVersionUID = 0xc5cd66325865609dL;
    private byte data[];

    UNKRecord()
    {
    }

    public byte[] getData()
    {
        return data;
    }

    Record getObject()
    {
        return new UNKRecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        throw tokenizer.exception("invalid unknown RR encoding");
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        data = dnsinput.readByteArray();
    }

    String rrToString()
    {
        return unknownToString(data);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeByteArray(data);
    }
}
