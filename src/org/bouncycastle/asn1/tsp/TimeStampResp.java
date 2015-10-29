// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.tsp;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cmp.PKIStatusInfo;
import org.bouncycastle.asn1.cms.ContentInfo;

public class TimeStampResp extends ASN1Encodable
{

    PKIStatusInfo pkiStatusInfo;
    ContentInfo timeStampToken;

    public TimeStampResp(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        pkiStatusInfo = PKIStatusInfo.getInstance(asn1sequence.nextElement());
        if (asn1sequence.hasMoreElements())
        {
            timeStampToken = ContentInfo.getInstance(asn1sequence.nextElement());
        }
    }

    public TimeStampResp(PKIStatusInfo pkistatusinfo, ContentInfo contentinfo)
    {
        pkiStatusInfo = pkistatusinfo;
        timeStampToken = contentinfo;
    }

    public static TimeStampResp getInstance(Object obj)
    {
        if (obj == null || (obj instanceof TimeStampResp))
        {
            return (TimeStampResp)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TimeStampResp((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'TimeStampResp' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public PKIStatusInfo getStatus()
    {
        return pkiStatusInfo;
    }

    public ContentInfo getTimeStampToken()
    {
        return timeStampToken;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(pkiStatusInfo);
        if (timeStampToken != null)
        {
            asn1encodablevector.add(timeStampToken);
        }
        return new DERSequence(asn1encodablevector);
    }
}
