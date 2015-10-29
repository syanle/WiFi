// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, Record

public class MGRecord extends SingleNameBase
{

    private static final long serialVersionUID = 0xc8c400905073685aL;

    MGRecord()
    {
    }

    public MGRecord(Name name, int i, long l, Name name1)
    {
        super(name, 8, i, l, name1, "mailbox");
    }

    public Name getMailbox()
    {
        return getSingleName();
    }

    Record getObject()
    {
        return new MGRecord();
    }
}
