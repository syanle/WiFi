// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.GeneralName;

public class SinglePubInfo extends ASN1Encodable
{

    private GeneralName pubLocation;
    private DERInteger pubMethod;

    private SinglePubInfo(ASN1Sequence asn1sequence)
    {
        pubMethod = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() == 2)
        {
            pubLocation = GeneralName.getInstance(asn1sequence.getObjectAt(1));
        }
    }

    public static SinglePubInfo getInstance(Object obj)
    {
        if (obj instanceof SinglePubInfo)
        {
            return (SinglePubInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SinglePubInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public GeneralName getPubLocation()
    {
        return pubLocation;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(pubMethod);
        if (pubLocation != null)
        {
            asn1encodablevector.add(pubLocation);
        }
        return new DERSequence(asn1encodablevector);
    }
}
