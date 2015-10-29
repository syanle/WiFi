// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

public class ResponseBytes extends ASN1Encodable
{

    ASN1OctetString response;
    DERObjectIdentifier responseType;

    public ResponseBytes(ASN1Sequence asn1sequence)
    {
        responseType = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        response = (ASN1OctetString)asn1sequence.getObjectAt(1);
    }

    public ResponseBytes(DERObjectIdentifier derobjectidentifier, ASN1OctetString asn1octetstring)
    {
        responseType = derobjectidentifier;
        response = asn1octetstring;
    }

    public static ResponseBytes getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ResponseBytes))
        {
            return (ResponseBytes)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ResponseBytes((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static ResponseBytes getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ASN1OctetString getResponse()
    {
        return response;
    }

    public DERObjectIdentifier getResponseType()
    {
        return responseType;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(responseType);
        asn1encodablevector.add(response);
        return new DERSequence(asn1encodablevector);
    }
}
