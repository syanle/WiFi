// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class InfoTypeAndValue extends ASN1Encodable
{

    private DERObjectIdentifier infoType;
    private ASN1Encodable infoValue;

    private InfoTypeAndValue(ASN1Sequence asn1sequence)
    {
        infoType = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() > 1)
        {
            infoValue = (ASN1Encodable)asn1sequence.getObjectAt(1);
        }
    }

    public InfoTypeAndValue(DERObjectIdentifier derobjectidentifier)
    {
        infoType = derobjectidentifier;
        infoValue = null;
    }

    public InfoTypeAndValue(DERObjectIdentifier derobjectidentifier, ASN1Encodable asn1encodable)
    {
        infoType = derobjectidentifier;
        infoValue = asn1encodable;
    }

    public static InfoTypeAndValue getInstance(Object obj)
    {
        if (obj instanceof InfoTypeAndValue)
        {
            return (InfoTypeAndValue)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new InfoTypeAndValue((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObjectIdentifier getInfoType()
    {
        return infoType;
    }

    public ASN1Encodable getInfoValue()
    {
        return infoValue;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(infoType);
        if (infoValue != null)
        {
            asn1encodablevector.add(infoValue);
        }
        return new DERSequence(asn1encodablevector);
    }
}
