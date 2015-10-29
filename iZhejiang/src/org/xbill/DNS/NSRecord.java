// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleCompressedNameBase, Name, Record

public class NSRecord extends SingleCompressedNameBase
{

    private static final long serialVersionUID = 0x6c2c7392fca0ca6L;

    NSRecord()
    {
    }

    public NSRecord(Name name, int i, long l, Name name1)
    {
        super(name, 2, i, l, name1, "target");
    }

    public Name getAdditionalName()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new NSRecord();
    }

    public Name getTarget()
    {
        return getSingleName();
    }
}
