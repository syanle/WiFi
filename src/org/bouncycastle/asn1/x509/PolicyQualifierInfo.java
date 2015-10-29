// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            PolicyQualifierId

public class PolicyQualifierInfo extends ASN1Encodable
{

    private DERObjectIdentifier policyQualifierId;
    private DEREncodable qualifier;

    public PolicyQualifierInfo(String s)
    {
        policyQualifierId = PolicyQualifierId.id_qt_cps;
        qualifier = new DERIA5String(s);
    }

    public PolicyQualifierInfo(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            policyQualifierId = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
            qualifier = asn1sequence.getObjectAt(1);
            return;
        }
    }

    public PolicyQualifierInfo(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        policyQualifierId = derobjectidentifier;
        qualifier = derencodable;
    }

    public static PolicyQualifierInfo getInstance(Object obj)
    {
        if (obj instanceof PolicyQualifierInfo)
        {
            return (PolicyQualifierInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PolicyQualifierInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("unknown object in getInstance.");
        }
    }

    public DERObjectIdentifier getPolicyQualifierId()
    {
        return policyQualifierId;
    }

    public DEREncodable getQualifier()
    {
        return qualifier;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(policyQualifierId);
        asn1encodablevector.add(qualifier);
        return new DERSequence(asn1encodablevector);
    }
}
