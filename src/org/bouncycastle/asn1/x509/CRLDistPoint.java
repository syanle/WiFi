// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            DistributionPoint

public class CRLDistPoint extends ASN1Encodable
{

    ASN1Sequence seq;

    public CRLDistPoint(ASN1Sequence asn1sequence)
    {
        seq = null;
        seq = asn1sequence;
    }

    public CRLDistPoint(DistributionPoint adistributionpoint[])
    {
        seq = null;
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        for (int i = 0; i != adistributionpoint.length; i++)
        {
            asn1encodablevector.add(adistributionpoint[i]);
        }

        seq = new DERSequence(asn1encodablevector);
    }

    public static CRLDistPoint getInstance(Object obj)
    {
        if ((obj instanceof CRLDistPoint) || obj == null)
        {
            return (CRLDistPoint)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CRLDistPoint((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static CRLDistPoint getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DistributionPoint[] getDistributionPoints()
    {
        DistributionPoint adistributionpoint[] = new DistributionPoint[seq.size()];
        for (int i = 0; i != seq.size(); i++)
        {
            adistributionpoint[i] = DistributionPoint.getInstance(seq.getObjectAt(i));
        }

        return adistributionpoint;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        String s = System.getProperty("line.separator");
        stringbuffer.append("CRLDistPoint:");
        stringbuffer.append(s);
        DistributionPoint adistributionpoint[] = getDistributionPoints();
        for (int i = 0; i != adistributionpoint.length; i++)
        {
            stringbuffer.append("    ");
            stringbuffer.append(adistributionpoint[i]);
            stringbuffer.append(s);
        }

        return stringbuffer.toString();
    }
}
