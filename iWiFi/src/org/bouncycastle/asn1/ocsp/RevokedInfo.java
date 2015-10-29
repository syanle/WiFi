// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.CRLReason;

public class RevokedInfo extends ASN1Encodable
{

    private CRLReason revocationReason;
    private DERGeneralizedTime revocationTime;

    public RevokedInfo(ASN1Sequence asn1sequence)
    {
        revocationTime = (DERGeneralizedTime)asn1sequence.getObjectAt(0);
        if (asn1sequence.size() > 1)
        {
            revocationReason = new CRLReason(DEREnumerated.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), true));
        }
    }

    public RevokedInfo(DERGeneralizedTime dergeneralizedtime, CRLReason crlreason)
    {
        revocationTime = dergeneralizedtime;
        revocationReason = crlreason;
    }

    public static RevokedInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof RevokedInfo))
        {
            return (RevokedInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new RevokedInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static RevokedInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public CRLReason getRevocationReason()
    {
        return revocationReason;
    }

    public DERGeneralizedTime getRevocationTime()
    {
        return revocationTime;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(revocationTime);
        if (revocationReason != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, revocationReason));
        }
        return new DERSequence(asn1encodablevector);
    }
}
