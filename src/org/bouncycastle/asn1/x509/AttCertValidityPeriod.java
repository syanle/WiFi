// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class AttCertValidityPeriod extends ASN1Encodable
{

    DERGeneralizedTime notAfterTime;
    DERGeneralizedTime notBeforeTime;

    public AttCertValidityPeriod(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            notBeforeTime = DERGeneralizedTime.getInstance(asn1sequence.getObjectAt(0));
            notAfterTime = DERGeneralizedTime.getInstance(asn1sequence.getObjectAt(1));
            return;
        }
    }

    public AttCertValidityPeriod(DERGeneralizedTime dergeneralizedtime, DERGeneralizedTime dergeneralizedtime1)
    {
        notBeforeTime = dergeneralizedtime;
        notAfterTime = dergeneralizedtime1;
    }

    public static AttCertValidityPeriod getInstance(Object obj)
    {
        if (obj instanceof AttCertValidityPeriod)
        {
            return (AttCertValidityPeriod)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AttCertValidityPeriod((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERGeneralizedTime getNotAfterTime()
    {
        return notAfterTime;
    }

    public DERGeneralizedTime getNotBeforeTime()
    {
        return notBeforeTime;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(notBeforeTime);
        asn1encodablevector.add(notAfterTime);
        return new DERSequence(asn1encodablevector);
    }
}
