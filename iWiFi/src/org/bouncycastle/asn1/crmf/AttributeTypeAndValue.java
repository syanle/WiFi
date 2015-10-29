// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class AttributeTypeAndValue extends ASN1Encodable
{

    private DERObjectIdentifier type;
    private ASN1Encodable value;

    public AttributeTypeAndValue(String s, ASN1Encodable asn1encodable)
    {
        this(new DERObjectIdentifier(s), asn1encodable);
    }

    private AttributeTypeAndValue(ASN1Sequence asn1sequence)
    {
        type = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        value = (ASN1Encodable)asn1sequence.getObjectAt(1);
    }

    public AttributeTypeAndValue(DERObjectIdentifier derobjectidentifier, ASN1Encodable asn1encodable)
    {
        type = derobjectidentifier;
        value = asn1encodable;
    }

    public static AttributeTypeAndValue getInstance(Object obj)
    {
        if (obj instanceof AttributeTypeAndValue)
        {
            return (AttributeTypeAndValue)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AttributeTypeAndValue((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObjectIdentifier getType()
    {
        return type;
    }

    public ASN1Encodable getValue()
    {
        return value;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(type);
        asn1encodablevector.add(value);
        return new DERSequence(asn1encodablevector);
    }
}
