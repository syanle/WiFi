// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class OriginatorInfo extends ASN1Encodable
{

    private ASN1Set certs;
    private ASN1Set crls;

    public OriginatorInfo(ASN1Sequence asn1sequence)
    {
        asn1sequence.size();
        JVM INSTR tableswitch 0 2: default 36
    //                   0 119
    //                   1 46
    //                   2 130;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException("OriginatorInfo too big");
_L3:
        asn1sequence = (ASN1TaggedObject)asn1sequence.getObjectAt(0);
        asn1sequence.getTagNo();
        JVM INSTR tableswitch 0 1: default 80
    //                   0 110
    //                   1 120;
           goto _L5 _L6 _L7
_L5:
        throw new IllegalArgumentException((new StringBuilder()).append("Bad tag in OriginatorInfo: ").append(asn1sequence.getTagNo()).toString());
_L6:
        certs = ASN1Set.getInstance(asn1sequence, false);
_L2:
        return;
_L7:
        crls = ASN1Set.getInstance(asn1sequence, false);
        return;
_L4:
        certs = ASN1Set.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(0), false);
        crls = ASN1Set.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), false);
        return;
    }

    public OriginatorInfo(ASN1Set asn1set, ASN1Set asn1set1)
    {
        certs = asn1set;
        crls = asn1set1;
    }

    public static OriginatorInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OriginatorInfo))
        {
            return (OriginatorInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new OriginatorInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid OriginatorInfo: ").append(obj.getClass().getName()).toString());
        }
    }

    public static OriginatorInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ASN1Set getCRLs()
    {
        return crls;
    }

    public ASN1Set getCertificates()
    {
        return certs;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (certs != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, certs));
        }
        if (crls != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, crls));
        }
        return new DERSequence(asn1encodablevector);
    }
}
