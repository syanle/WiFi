// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class CertBag extends ASN1Encodable
{

    DERObjectIdentifier certId;
    DERObject certValue;
    ASN1Sequence seq;

    public CertBag(ASN1Sequence asn1sequence)
    {
        seq = asn1sequence;
        certId = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        certValue = ((DERTaggedObject)asn1sequence.getObjectAt(1)).getObject();
    }

    public CertBag(DERObjectIdentifier derobjectidentifier, DERObject derobject)
    {
        certId = derobjectidentifier;
        certValue = derobject;
    }

    public DERObjectIdentifier getCertId()
    {
        return certId;
    }

    public DERObject getCertValue()
    {
        return certValue;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certId);
        asn1encodablevector.add(new DERTaggedObject(0, certValue));
        return new DERSequence(asn1encodablevector);
    }
}
