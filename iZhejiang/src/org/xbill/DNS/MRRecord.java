// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class MRRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0xb2091228afd66693L;

    MRRecord()
    {
    }

    public MRRecord(Name name, int i, long l, Name name1)
    {
        super(name, 9, i, l, name1, "new name");
    }

    public Name getNewName()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new MRRecord();
    }
}
