// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            U16NameBase, DNSOutput, Name, Record, 
//            Compression

public class MXRecord extends U16NameBase
{

    private static final long serialVersionUID = 0x2873987899e42ea2L;

    MXRecord()
    {
    }

    public MXRecord(Name name, int i, long l, int j, Name name1)
    {
        super(name, 15, i, l, j, "priority", name1, "target");
    }

    public Name getAdditionalName()
    {
        return getNameField();
    }

    Record getObject()
    {
        return new MXRecord();
    }

    public int getPriority()
    {
        return getU16Field();
    }

    public Name getTarget()
    {
        return getNameField();
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        dnsoutput.writeU16(u16Field);
        nameField.toWire(dnsoutput, compression, flag);
    }
}
