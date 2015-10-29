// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.ocsp:
//            OCSPResponseStatus, ResponseBytes

public class OCSPResponse extends ASN1Encodable
{

    ResponseBytes responseBytes;
    OCSPResponseStatus responseStatus;

    public OCSPResponse(ASN1Sequence asn1sequence)
    {
        responseStatus = new OCSPResponseStatus(DEREnumerated.getInstance(asn1sequence.getObjectAt(0)));
        if (asn1sequence.size() == 2)
        {
            responseBytes = ResponseBytes.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), true);
        }
    }

    public OCSPResponse(OCSPResponseStatus ocspresponsestatus, ResponseBytes responsebytes)
    {
        responseStatus = ocspresponsestatus;
        responseBytes = responsebytes;
    }

    public static OCSPResponse getInstance(Object obj)
    {
        if (obj == null || (obj instanceof OCSPResponse))
        {
            return (OCSPResponse)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new OCSPResponse((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static OCSPResponse getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ResponseBytes getResponseBytes()
    {
        return responseBytes;
    }

    public OCSPResponseStatus getResponseStatus()
    {
        return responseStatus;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(responseStatus);
        if (responseBytes != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, responseBytes));
        }
        return new DERSequence(asn1encodablevector);
    }
}
