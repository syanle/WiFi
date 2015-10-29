// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            U16NameBase, Name, Record

public class RTRecord extends U16NameBase
{

    private static final long serialVersionUID = 0xd3813bda2234f1aeL;

    RTRecord()
    {
    }

    public RTRecord(Name name, int i, long l, int j, Name name1)
    {
        super(name, 21, i, l, j, "preference", name1, "intermediateHost");
    }

    public Name getIntermediateHost()
    {
        return getNameField();
    }

    Record getObject()
    {
        return new RTRecord();
    }

    public int getPreference()
    {
        return getU16Field();
    }
}
