// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.DERObject;

public class Attributes extends ASN1Encodable
{

    private ASN1Set attributes;

    public Attributes(ASN1EncodableVector asn1encodablevector)
    {
        attributes = new BERSet(asn1encodablevector);
    }

    private Attributes(ASN1Set asn1set)
    {
        attributes = asn1set;
    }

    public static Attributes getInstance(Object obj)
    {
        if (obj instanceof Attributes)
        {
            return (Attributes)obj;
        }
        if (obj != null)
        {
            return new Attributes(ASN1Set.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public DERObject toASN1Object()
    {
        return attributes;
    }
}
