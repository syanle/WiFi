// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            U16NameBase, Name, Record

public class KXRecord extends U16NameBase
{

    private static final long serialVersionUID = 0x675ea1e3a2499271L;

    KXRecord()
    {
    }

    public KXRecord(Name name, int i, long l, int j, Name name1)
    {
        super(name, 36, i, l, j, "preference", name1, "target");
    }

    public Name getAdditionalName()
    {
        return getNameField();
    }

    Record getObject()
    {
        return new KXRecord();
    }

    public int getPreference()
    {
        return getU16Field();
    }

    public Name getTarget()
    {
        return getNameField();
    }
}
