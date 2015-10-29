// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class NSAP_PTRRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0x211dc95571093d08L;

    NSAP_PTRRecord()
    {
    }

    public NSAP_PTRRecord(Name name, int i, long l, Name name1)
    {
        super(name, 23, i, l, name1, "target");
    }

    Record getObject()
    {
        return new NSAP_PTRRecord();
    }

    public Name getTarget()
    {
        return getSingleName();
    }
}
