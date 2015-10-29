// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.io.IOException;

// Referenced classes of package org.xbill.DNS:
//            Record, Tokenizer, Name, DNSInput, 
//            DNSOutput, Compression

public class RPRecord extends Record
{

    private static final long serialVersionUID = 0x70c0526ef08278f4L;
    private Name mailbox;
    private Name textDomain;

    RPRecord()
    {
    }

    public RPRecord(Name name, int i, long l, Name name1, Name name2)
    {
        super(name, 17, i, l);
        mailbox = checkName("mailbox", name1);
        textDomain = checkName("textDomain", name2);
    }

    public Name getMailbox()
    {
        return mailbox;
    }

    Record getObject()
    {
        return new RPRecord();
    }

    public Name getTextDomain()
    {
        return textDomain;
    }

    void rdataFromString(Tokenizer tokenizer, Name name)
        throws IOException
    {
        mailbox = tokenizer.getName(name);
        textDomain = tokenizer.getName(name);
    }

    void rrFromWire(DNSInput dnsinput)
        throws IOException
    {
        mailbox = new Name(dnsinput);
        textDomain = new Name(dnsinput);
    }

    String rrToString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(mailbox);
        stringbuffer.append(" ");
        stringbuffer.append(textDomain);
        return stringbuffer.toString();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        mailbox.toWire(dnsoutput, null, flag);
        textDomain.toWire(dnsoutput, null, flag);
    }
}
