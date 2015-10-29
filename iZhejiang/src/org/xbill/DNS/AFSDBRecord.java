// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            U16NameBase, Name, Record

public class AFSDBRecord extends U16NameBase
{

    private static final long serialVersionUID = 0x2a1c48785caebc65L;

    AFSDBRecord()
    {
    }

    public AFSDBRecord(Name name, int i, long l, int j, Name name1)
    {
        super(name, 18, i, l, j, "subtype", name1, "host");
    }

    public Name getHost()
    {
        return getNameField();
    }

    Record getObject()
    {
        return new AFSDBRecord();
    }

    public int getSubtype()
    {
        return getU16Field();
    }
}
