// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class CertID extends ASN1Encodable
{

    AlgorithmIdentifier hashAlgorithm;
    ASN1OctetString issuerKeyHash;
    ASN1OctetString issuerNameHash;
    DERInteger serialNumber;

    public CertID(ASN1Sequence asn1sequence)
    {
        hashAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(0));
        issuerNameHash = (ASN1OctetString)asn1sequence.getObjectAt(1);
        issuerKeyHash = (ASN1OctetString)asn1sequence.getObjectAt(2);
        serialNumber = (DERInteger)asn1sequence.getObjectAt(3);
    }

    public CertID(AlgorithmIdentifier algorithmidentifier, ASN1OctetString asn1octetstring, ASN1OctetString asn1octetstring1, DERInteger derinteger)
    {
        hashAlgorithm = algorithmidentifier;
        issuerNameHash = asn1octetstring;
        issuerKeyHash = asn1octetstring1;
        serialNumber = derinteger;
    }

    public static CertID getInstance(Object obj)
    {
        if (obj == null || (obj instanceof CertID))
        {
            return (CertID)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertID((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static CertID getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AlgorithmIdentifier getHashAlgorithm()
    {
        return hashAlgorithm;
    }

    public ASN1OctetString getIssuerKeyHash()
    {
        return issuerKeyHash;
    }

    public ASN1OctetString getIssuerNameHash()
    {
        return issuerNameHash;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(hashAlgorithm);
        asn1encodablevector.add(issuerNameHash);
        asn1encodablevector.add(issuerKeyHash);
        asn1encodablevector.add(serialNumber);
        return new DERSequence(asn1encodablevector);
    }
}
