// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.ocsp:
//            ResponderID

public class ResponseData extends ASN1Encodable
{

    private static final DERInteger V1 = new DERInteger(0);
    private DERGeneralizedTime producedAt;
    private ResponderID responderID;
    private X509Extensions responseExtensions;
    private ASN1Sequence responses;
    private DERInteger version;
    private boolean versionPresent;

    public ResponseData(ASN1Sequence asn1sequence)
    {
        if (!(asn1sequence.getObjectAt(0) instanceof ASN1TaggedObject)) goto _L2; else goto _L1
_L1:
        if (((ASN1TaggedObject)asn1sequence.getObjectAt(0)).getTagNo() != 0) goto _L4; else goto _L3
_L3:
        int i;
        versionPresent = true;
        version = DERInteger.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(0), true);
        i = 1;
_L5:
        int j = i + 1;
        responderID = ResponderID.getInstance(asn1sequence.getObjectAt(i));
        i = j + 1;
        producedAt = (DERGeneralizedTime)asn1sequence.getObjectAt(j);
        j = i + 1;
        responses = (ASN1Sequence)asn1sequence.getObjectAt(i);
        if (asn1sequence.size() > j)
        {
            responseExtensions = X509Extensions.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(j), true);
        }
        return;
_L4:
        version = V1;
_L6:
        i = 0;
        if (true) goto _L5; else goto _L2
_L2:
        version = V1;
          goto _L6
    }

    public ResponseData(DERInteger derinteger, ResponderID responderid, DERGeneralizedTime dergeneralizedtime, ASN1Sequence asn1sequence, X509Extensions x509extensions)
    {
        version = derinteger;
        responderID = responderid;
        producedAt = dergeneralizedtime;
        responses = asn1sequence;
        responseExtensions = x509extensions;
    }

    public ResponseData(ResponderID responderid, DERGeneralizedTime dergeneralizedtime, ASN1Sequence asn1sequence, X509Extensions x509extensions)
    {
        this(V1, responderid, dergeneralizedtime, asn1sequence, x509extensions);
    }

    public static ResponseData getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ResponseData))
        {
            return (ResponseData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ResponseData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static ResponseData getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public DERGeneralizedTime getProducedAt()
    {
        return producedAt;
    }

    public ResponderID getResponderID()
    {
        return responderID;
    }

    public X509Extensions getResponseExtensions()
    {
        return responseExtensions;
    }

    public ASN1Sequence getResponses()
    {
        return responses;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (versionPresent || !version.equals(V1))
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, version));
        }
        asn1encodablevector.add(responderID);
        asn1encodablevector.add(producedAt);
        asn1encodablevector.add(responses);
        if (responseExtensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, responseExtensions));
        }
        return new DERSequence(asn1encodablevector);
    }

}
