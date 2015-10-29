// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x500;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class AttributeTypeAndValue extends ASN1Encodable
{

    private ASN1ObjectIdentifier type;
    private ASN1Encodable value;

    public AttributeTypeAndValue(ASN1ObjectIdentifier asn1objectidentifier, ASN1Encodable asn1encodable)
    {
        type = asn1objectidentifier;
        value = asn1encodable;
    }

    private AttributeTypeAndValue(ASN1Sequence asn1sequence)
    {
        type = (ASN1ObjectIdentifier)asn1sequence.getObjectAt(0);
        value = (ASN1Encodable)asn1sequence.getObjectAt(1);
    }

    public static AttributeTypeAndValue getInstance(Object obj)
    {
        if (obj instanceof AttributeTypeAndValue)
        {
            return (AttributeTypeAndValue)obj;
        }
        if (obj != null)
        {
            return new AttributeTypeAndValue(ASN1Sequence.getInstance(obj));
        } else
        {
            throw new IllegalArgumentException("null value in getInstance()");
        }
    }

    public ASN1ObjectIdentifier getType()
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
