// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.util;

import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.util:
//            ASN1Dump

public class DERDump extends ASN1Dump
{

    public DERDump()
    {
    }

    public static String dumpAsString(DEREncodable derencodable)
    {
        StringBuffer stringbuffer = new StringBuffer();
        _dumpAsString("", false, derencodable.getDERObject(), stringbuffer);
        return stringbuffer.toString();
    }

    public static String dumpAsString(DERObject derobject)
    {
        StringBuffer stringbuffer = new StringBuffer();
        _dumpAsString("", false, derobject, stringbuffer);
        return stringbuffer.toString();
    }
}
