// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Mnemonic, DClass

private static class setPrefix extends Mnemonic
{

    public void check(int i)
    {
        DClass.check(i);
    }

    public ()
    {
        super("DClass", 2);
        setPrefix("CLASS");
    }
}
