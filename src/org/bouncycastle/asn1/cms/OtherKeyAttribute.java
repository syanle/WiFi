// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class OtherKeyAttribute extends ASN1Encodable
{

    private DEREncodable keyAttr;
    private DERObjectIdentifier keyAttrId;

    public OtherKeyAttribute(ASN1Sequence asn1sequence)
    {
        keyAttrId = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        keyAttr = asn1sequence.getObjectAt(1);
    }

    public OtherKeyAttribute(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        keyAttrId = derobjectidentifier;
        keyAttr = derencodable;
    }

    public static OtherKeyAttribute getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OtherKeyAttribute))
        {
            return (OtherKeyAttribute)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new OtherKeyAttribute((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public DEREncodable getKeyAttr()
    {
        return keyAttr;
    }

    public DERObjectIdentifier getKeyAttrId()
    {
        return keyAttrId;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(keyAttrId);
        asn1encodablevector.add(keyAttr);
        return new DERSequence(asn1encodablevector);
    }
}
