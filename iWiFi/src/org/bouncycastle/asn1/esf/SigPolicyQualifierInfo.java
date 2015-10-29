// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class SigPolicyQualifierInfo extends ASN1Encodable
{

    private DERObjectIdentifier sigPolicyQualifierId;
    private DEREncodable sigQualifier;

    public SigPolicyQualifierInfo(ASN1Sequence asn1sequence)
    {
        sigPolicyQualifierId = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        sigQualifier = asn1sequence.getObjectAt(1);
    }

    public SigPolicyQualifierInfo(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        sigPolicyQualifierId = derobjectidentifier;
        sigQualifier = derencodable;
    }

    public static SigPolicyQualifierInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SigPolicyQualifierInfo))
        {
            return (SigPolicyQualifierInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SigPolicyQualifierInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'SigPolicyQualifierInfo' factory: ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public ASN1ObjectIdentifier getSigPolicyQualifierId()
    {
        return new ASN1ObjectIdentifier(sigPolicyQualifierId.getId());
    }

    public DEREncodable getSigQualifier()
    {
        return sigQualifier;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(sigPolicyQualifierId);
        asn1encodablevector.add(sigQualifier);
        return new DERSequence(asn1encodablevector);
    }
}
