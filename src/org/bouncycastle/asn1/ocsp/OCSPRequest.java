// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.ocsp:
//            TBSRequest, Signature

public class OCSPRequest extends ASN1Encodable
{

    Signature optionalSignature;
    TBSRequest tbsRequest;

    public OCSPRequest(ASN1Sequence asn1sequence)
    {
        tbsRequest = TBSRequest.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() == 2)
        {
            optionalSignature = Signature.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), true);
        }
    }

    public OCSPRequest(TBSRequest tbsrequest, Signature signature)
    {
        tbsRequest = tbsrequest;
        optionalSignature = signature;
    }

    public static OCSPRequest getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OCSPRequest))
        {
            return (OCSPRequest)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new OCSPRequest((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static OCSPRequest getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public Signature getOptionalSignature()
    {
        return optionalSignature;
    }

    public TBSRequest getTbsRequest()
    {
        return tbsRequest;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(tbsRequest);
        if (optionalSignature != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, optionalSignature));
        }
        return new DERSequence(asn1encodablevector);
    }
}
