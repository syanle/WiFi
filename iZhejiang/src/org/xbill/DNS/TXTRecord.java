// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.List;

// Referenced classes of package org.xbill.DNS:
//            TXTBase, Name, Record

public class TXTRecord extends TXTBase
{

    private static final long serialVersionUID = 0xafc685f9ad343862L;

    TXTRecord()
    {
    }

    public TXTRecord(Name name, int i, long l, String s)
    {
        super(name, 16, i, l, s);
    }

    public TXTRecord(Name name, int i, long l, List list)
    {
        super(name, 16, i, l, list);
    }

    Record getObject()
    {
        return new TXTRecord();
    }

    public volatile List getStrings()
    {
        return super.getStrings();
    }

    public volatile List getStringsAsByteArrays()
    {
        return super.getStringsAsByteArrays();
    }
}
