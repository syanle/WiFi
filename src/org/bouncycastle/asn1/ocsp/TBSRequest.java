// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.X509Extensions;

public class TBSRequest extends ASN1Encodable
{

    private static final DERInteger V1 = new DERInteger(0);
    X509Extensions requestExtensions;
    ASN1Sequence requestList;
    GeneralName requestorName;
    DERInteger version;
    boolean versionSet;

    public TBSRequest(ASN1Sequence asn1sequence)
    {
        if (!(asn1sequence.getObjectAt(0) instanceof ASN1TaggedObject)) goto _L2; else goto _L1
_L1:
        if (((ASN1TaggedObject)asn1sequence.getObjectAt(0)).getTagNo() != 0) goto _L4; else goto _L3
_L3:
        int i;
        versionSet = true;
        version = DERInteger.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(0), true);
        i = 1;
_L5:
        int j = i;
        if (asn1sequence.getObjectAt(i) instanceof ASN1TaggedObject)
        {
            requestorName = GeneralName.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(i), true);
            j = i + 1;
        }
        i = j + 1;
        requestList = (ASN1Sequence)asn1sequence.getObjectAt(j);
        if (asn1sequence.size() == i + 1)
        {
            requestExtensions = X509Extensions.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(i), true);
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

    public TBSRequest(GeneralName generalname, ASN1Sequence asn1sequence, X509Extensions x509extensions)
    {
        version = V1;
        requestorName = generalname;
        requestList = asn1sequence;
        requestExtensions = x509extensions;
    }

    public static TBSRequest getInstance(Object obj)
    {
        if (obj == null || (obj instanceof TBSRequest))
        {
            return (TBSRequest)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new TBSRequest((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static TBSRequest getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public X509Extensions getRequestExtensions()
    {
        return requestExtensions;
    }

    public ASN1Sequence getRequestList()
    {
        return requestList;
    }

    public GeneralName getRequestorName()
    {
        return requestorName;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (!version.equals(V1) || versionSet)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, version));
        }
        if (requestorName != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, requestorName));
        }
        asn1encodablevector.add(requestList);
        if (requestExtensions != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 2, requestExtensions));
        }
        return new DERSequence(asn1encodablevector);
    }

}
