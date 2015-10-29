// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;

import java.util.HashMap;

// Referenced classes of package org.xbill.DNS:
//            Mnemonic, Type, Record

private static class objects extends Mnemonic
{

    private HashMap objects;

    public void add(int i, String s, Record record)
    {
        super.add(i, s);
        objects.put(Mnemonic.toInteger(i), record);
    }

    public void check(int i)
    {
        Type.check(i);
    }

    public Record getProto(int i)
    {
        check(i);
        return (Record)objects.get(toInteger(i));
    }

    public ()
    {
        super("Type", 2);
        setPrefix("TYPE");
        objects = new HashMap();
    }
}
