// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class MDRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0x491ed12ca5f240faL;

    MDRecord()
    {
    }

    public MDRecord(Name name, int i, long l, Name name1)
    {
        super(name, 3, i, l, name1, "mail agent");
    }

    public Name getAdditionalName()
    {
        return getSingleName();
    }

    public Name getMailAgent()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new MDRecord();
    }
}
