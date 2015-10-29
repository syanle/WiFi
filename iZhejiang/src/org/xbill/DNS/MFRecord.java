// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class MFRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0xa36dcdf14a9ff137L;

    MFRecord()
    {
    }

    public MFRecord(Name name, int i, long l, Name name1)
    {
        super(name, 4, i, l, name1, "mail agent");
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
        return new MFRecord();
    }
}
