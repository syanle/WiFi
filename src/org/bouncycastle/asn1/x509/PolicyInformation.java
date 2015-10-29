// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class PolicyInformation extends ASN1Encodable
{

    private DERObjectIdentifier policyIdentifier;
    private ASN1Sequence policyQualifiers;

    public PolicyInformation(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 1 || asn1sequence.size() > 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        policyIdentifier = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() > 1)
        {
            policyQualifiers = ASN1Sequence.getInstance(asn1sequence.getObjectAt(1));
        }
    }

    public PolicyInformation(DERObjectIdentifier derobjectidentifier)
    {
        policyIdentifier = derobjectidentifier;
    }

    public PolicyInformation(DERObjectIdentifier derobjectidentifier, ASN1Sequence asn1sequence)
    {
        policyIdentifier = derobjectidentifier;
        policyQualifiers = asn1sequence;
    }

    public static PolicyInformation getInstance(Object obj)
    {
        if (obj == null || (obj instanceof PolicyInformation))
        {
            return (PolicyInformation)obj;
        } else
        {
            return new PolicyInformation(ASN1Sequence.getInstance(obj));
        }
    }

    public DERObjectIdentifier getPolicyIdentifier()
    {
        return policyIdentifier;
    }

    public ASN1Sequence getPolicyQualifiers()
    {
        return policyQualifiers;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(policyIdentifier);
        if (policyQualifiers != null)
        {
            asn1encodablevector.add(policyQualifiers);
        }
        return new DERSequence(asn1encodablevector);
    }
}
