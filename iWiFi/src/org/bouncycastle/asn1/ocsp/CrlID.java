// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class CrlID extends ASN1Encodable
{

    DERInteger crlNum;
    DERGeneralizedTime crlTime;
    DERIA5String crlUrl;

    public CrlID(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            ASN1TaggedObject asn1taggedobject = (ASN1TaggedObject)asn1sequence.nextElement();
            switch (asn1taggedobject.getTagNo())
            {
            default:
                throw new IllegalArgumentException((new StringBuilder()).append("unknown tag number: ").append(asn1taggedobject.getTagNo()).toString());

            case 0: // '\0'
                crlUrl = DERIA5String.getInstance(asn1taggedobject, true);
                break;

            case 1: // '\001'
                crlNum = DERInteger.getInstance(asn1taggedobject, true);
                break;

            case 2: // '\002'
                crlTime = DERGeneralizedTime.getInstance(asn1taggedobject, true);
                break;
            }
        } while (true);
    }

    public DERInteger getCrlNum()
    {
        return crlNum;
    }

    public DERGeneralizedTime getCrlTime()
    {
        return crlTime;
    }

    public DERIA5String getCrlUrl()
    {
        return crlUrl;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (crlUrl != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, crlUrl));
        }
        if (crlNum != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, crlNum));
        }
        if (crlTime != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 2, crlTime));
        }
        return new DERSequence(asn1encodablevector);
    }
}
