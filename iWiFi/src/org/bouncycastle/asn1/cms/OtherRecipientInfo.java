// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class OtherRecipientInfo extends ASN1Encodable
{

    private DERObjectIdentifier oriType;
    private DEREncodable oriValue;

    public OtherRecipientInfo(ASN1Sequence asn1sequence)
    {
        oriType = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        oriValue = asn1sequence.getObjectAt(1);
    }

    public OtherRecipientInfo(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        oriType = derobjectidentifier;
        oriValue = derencodable;
    }

    public static OtherRecipientInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OtherRecipientInfo))
        {
            return (OtherRecipientInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new OtherRecipientInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid OtherRecipientInfo: ").append(obj.getClass().getName()).toString());
        }
    }

    public static OtherRecipientInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERObjectIdentifier getType()
    {
        return oriType;
    }

    public DEREncodable getValue()
    {
        return oriValue;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(oriType);
        asn1encodablevector.add(oriValue);
        return new DERSequence(asn1encodablevector);
    }
}
