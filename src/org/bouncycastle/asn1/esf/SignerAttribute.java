// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.esf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AttributeCertificate;

public class SignerAttribute extends ASN1Encodable
{

    private AttributeCertificate certifiedAttributes;
    private ASN1Sequence claimedAttributes;

    private SignerAttribute(Object obj)
    {
        obj = (DERTaggedObject)((ASN1Sequence)obj).getObjectAt(0);
        if (((DERTaggedObject) (obj)).getTagNo() == 0)
        {
            claimedAttributes = ASN1Sequence.getInstance(((org.bouncycastle.asn1.ASN1TaggedObject) (obj)), true);
            return;
        }
        if (((DERTaggedObject) (obj)).getTagNo() == 1)
        {
            certifiedAttributes = AttributeCertificate.getInstance(obj);
            return;
        } else
        {
            throw new IllegalArgumentException("illegal tag.");
        }
    }

    public SignerAttribute(ASN1Sequence asn1sequence)
    {
        claimedAttributes = asn1sequence;
    }

    public SignerAttribute(AttributeCertificate attributecertificate)
    {
        certifiedAttributes = attributecertificate;
    }

    public static SignerAttribute getInstance(Object obj)
    {
        if (obj == null || (obj instanceof SignerAttribute))
        {
            return (SignerAttribute)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SignerAttribute(obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'SignerAttribute' factory: ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public AttributeCertificate getCertifiedAttributes()
    {
        return certifiedAttributes;
    }

    public ASN1Sequence getClaimedAttributes()
    {
        return claimedAttributes;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (claimedAttributes != null)
        {
            asn1encodablevector.add(new DERTaggedObject(0, claimedAttributes));
        } else
        {
            asn1encodablevector.add(new DERTaggedObject(1, certifiedAttributes));
        }
        return new DERSequence(asn1encodablevector);
    }
}
