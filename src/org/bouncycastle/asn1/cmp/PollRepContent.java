// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            PKIFreeText

public class PollRepContent extends ASN1Encodable
{

    private DERInteger certReqId;
    private DERInteger checkAfter;
    private PKIFreeText reason;

    private PollRepContent(ASN1Sequence asn1sequence)
    {
        certReqId = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        checkAfter = DERInteger.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() > 2)
        {
            reason = PKIFreeText.getInstance(asn1sequence.getObjectAt(2));
        }
    }

    public static PollRepContent getInstance(Object obj)
    {
        if (obj instanceof PollRepContent)
        {
            return (PollRepContent)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PollRepContent((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERInteger getCertReqId()
    {
        return certReqId;
    }

    public DERInteger getCheckAfter()
    {
        return checkAfter;
    }

    public PKIFreeText getReason()
    {
        return reason;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certReqId);
        asn1encodablevector.add(checkAfter);
        if (reason != null)
        {
            asn1encodablevector.add(reason);
        }
        return new DERSequence(asn1encodablevector);
    }
}
