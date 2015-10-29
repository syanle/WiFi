// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            DNSOutput, Compression

class EmptyRecord extends Record
{

    private static final long serialVersionUID = 0x31fc595b4c4aef8eL;

    EmptyRecord()
    {
    }

    Record getObject()
    {
        return new EmptyRecord();
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
    }

    String rrToString()
    {
        return "";
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
    }
}
