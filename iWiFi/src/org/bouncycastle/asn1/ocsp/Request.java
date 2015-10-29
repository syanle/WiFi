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
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.ocsp:
//            CertID

public class Request extends ASN1Encodable
{

    CertID reqCert;
    X509Extensions singleRequestExtensions;

    public Request(ASN1Sequence asn1sequence)
    {
        reqCert = CertID.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() == 2)
        {
            singleRequestExtensions = X509Extensions.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), true);
        }
    }

    public Request(CertID certid, X509Extensions x509extensions)
    {
        reqCert = certid;
        singleRequestExtensions = x509extensions;
    }

    public static Request getInstance(Object obj)
    {
        if (obj == null || (obj instanceof Request))
        {
            return (Request)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new Request((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static Request getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public CertID getReqCert()
    {
        return reqCert;
    }

    public X509Extensions getSingleRequestExtensions()
    {
        return singleRequestExtensions;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(reqCert);
        if (singleRequestExtensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, singleRequestExtensions));
        }
        return new DERSequence(asn1encodablevector);
    }
}
