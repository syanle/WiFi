// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class MBRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0x7634916db6a8753L;

    MBRecord()
    {
    }

    public MBRecord(Name name, int i, long l, Name name1)
    {
        super(name, 7, i, l, name1, "mailbox");
    }

    public Name getAdditionalName()
    {
        return getSingleName();
    }

    public Name getMailbox()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new MBRecord();
    }
}
