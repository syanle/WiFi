// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleCompressedNameBase, Name, Record

public class CNAMERecord extends SingleCompressedNameBase
{

    private static final long serialVersionUID = 0xc834c3402f83852cL;

    CNAMERecord()
    {
    }

    public CNAMERecord(Name name, int i, long l, Name name1)
    {
        super(name, 5, i, l, name1, "alias");
    }

    public Name getAlias()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new CNAMERecord();
    }

    public Name getTarget()
    {
        return getSingleName();
    }
}
