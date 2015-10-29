// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            DNSOutput, Compression

abstract class SingleNameBase extends Record
{

    private static final long serialVersionUID = 0xffffef168118dcdbL;
    protected Name singleName;

    protected SingleNameBase()
    {
    }

    protected SingleNameBase(Name name, int i, int j, long l)
    {
        super(name, i, j, l);
    }

    protected SingleNameBase(Name name, int i, int j, long l, Name name1, String s)
    {
        super(name, i, j, l);
        singleName = checkName(s, name1);
    }

    protected Name getSingleName()
    {
        return singleName;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        singleName = tokenizer.getName(name);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        singleName = new Name(dnsinput);
    }

    String rrToString()
    {
        return singleName.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        singleName.toWire(dnsoutput, null, flag);
    }
}
