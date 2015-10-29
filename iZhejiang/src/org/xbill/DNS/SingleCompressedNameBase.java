// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            SingleNameBase, Name, DNSOutput, Compression

abstract class SingleCompressedNameBase extends SingleNameBase
{

    private static final long serialVersionUID = 0xfcb80342607c66bbL;

    protected SingleCompressedNameBase()
    {
    }

    protected SingleCompressedNameBase(Name name, int i, int j, long l, Name name1, String s)
    {
        super(name, i, j, l, name1, s);
    }

    void rrToWire(DNSOutput dnsoutput, Compression compression, boolean flag)
    {
        singleName.toWire(dnsoutput, compression, flag);
    }
}
