// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class DNAMERecord extends SingleNameBase
{

    private static final long serialVersionUID = 0x2510790d5526c57aL;

    DNAMERecord()
    {
    }

    public DNAMERecord(Name name, int i, long l, Name name1)
    {
        super(name, 39, i, l, name1, "alias");
    }

    public Name getAlias()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new DNAMERecord();
    }

    public Name getTarget()
    {
        return getSingleName();
    }
}
