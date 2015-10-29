// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleCompressedNameBase, Name, Record

public class PTRRecord extends SingleCompressedNameBase
{

    private static final long serialVersionUID = 0x8c839b97bdb4cfb0L;

    PTRRecord()
    {
    }

    public PTRRecord(Name name, int i, long l, Name name1)
    {
        super(name, 12, i, l, name1, "target");
    }

    Record getObject()
    {
        return new PTRRecord();
    }

    public Name getTarget()
    {
        return getSingleName();
    }
}
