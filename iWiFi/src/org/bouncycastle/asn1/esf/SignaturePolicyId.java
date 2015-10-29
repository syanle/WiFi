// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.esf:
//            OtherHashAlgAndValue, SigPolicyQualifiers

public class SignaturePolicyId extends ASN1Encodable
{

    private OtherHashAlgAndValue sigPolicyHash;
    private DERObjectIdentifier sigPolicyId;
    private SigPolicyQualifiers sigPolicyQualifiers;

    public SignaturePolicyId(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2 && asn1sequence.size() != 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        sigPolicyId = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(0));
        sigPolicyHash = OtherHashAlgAndValue.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() == 3)
        {
            sigPolicyQualifiers = SigPolicyQualifiers.getInstance(asn1sequence.getObjectAt(2));
        }
    }

    public SignaturePolicyId(DERObjectIdentifier derobjectidentifier, OtherHashAlgAndValue otherhashalgandvalue)
    {
        this(derobjectidentifier, otherhashalgandvalue, null);
    }

    public SignaturePolicyId(DERObjectIdentifier derobjectidentifier, OtherHashAlgAndValue otherhashalgandvalue, SigPolicyQualifiers sigpolicyqualifiers)
    {
        sigPolicyId = derobjectidentifier;
        sigPolicyHash = otherhashalgandvalue;
        sigPolicyQualifiers = sigpolicyqualifiers;
    }

    public static SignaturePolicyId getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SignaturePolicyId))
        {
            return (SignaturePolicyId)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SignaturePolicyId((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown object in 'SignaturePolicyId' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public OtherHashAlgAndValue getSigPolicyHash()
    {
        return sigPolicyHash;
    }

    public ASN1ObjectIdentifier getSigPolicyId()
    {
        return new ASN1ObjectIdentifier(sigPolicyId.getId());
    }

    public SigPolicyQualifiers getSigPolicyQualifiers()
    {
        return sigPolicyQualifiers;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(sigPolicyId);
        asn1encodablevector.add(sigPolicyHash);
        if (sigPolicyQualifiers != null)
        {
            asn1encodablevector.add(sigPolicyQualifiers);
        }
        return new DERSequence(asn1encodablevector);
    }
}
