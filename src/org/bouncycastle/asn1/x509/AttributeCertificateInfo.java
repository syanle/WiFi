// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            Holder, AttCertIssuer, AlgorithmIdentifier, AttCertValidityPeriod, 
//            X509Extensions

public class AttributeCertificateInfo extends ASN1Encodable
{

    private AttCertValidityPeriod attrCertValidityPeriod;
    private ASN1Sequence attributes;
    private X509Extensions extensions;
    private Holder holder;
    private AttCertIssuer issuer;
    private DERBitString issuerUniqueID;
    private DERInteger serialNumber;
    private AlgorithmIdentifier signature;
    private DERInteger version;

    public AttributeCertificateInfo(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 7 || asn1sequence.size() > 9)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        version = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        holder = Holder.getInstance(asn1sequence.getObjectAt(1));
        issuer = AttCertIssuer.getInstance(asn1sequence.getObjectAt(2));
        signature = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(3));
        serialNumber = DERInteger.getInstance(asn1sequence.getObjectAt(4));
        attrCertValidityPeriod = AttCertValidityPeriod.getInstance(asn1sequence.getObjectAt(5));
        attributes = ASN1Sequence.getInstance(asn1sequence.getObjectAt(6));
        int i = 7;
        while (i < asn1sequence.size()) 
        {
            ASN1Encodable asn1encodable = (ASN1Encodable)asn1sequence.getObjectAt(i);
            if (asn1encodable instanceof DERBitString)
            {
                issuerUniqueID = DERBitString.getInstance(asn1sequence.getObjectAt(i));
            } else
            if ((asn1encodable instanceof ASN1Sequence) || (asn1encodable instanceof X509Extensions))
            {
                extensions = X509Extensions.getInstance(asn1sequence.getObjectAt(i));
            }
            i++;
        }
    }

    public static AttributeCertificateInfo getInstance(Object obj)
    {
        if (obj instanceof AttributeCertificateInfo)
        {
            return (AttributeCertificateInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AttributeCertificateInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static AttributeCertificateInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AttCertValidityPeriod getAttrCertValidityPeriod()
    {
        return attrCertValidityPeriod;
    }

    public ASN1Sequence getAttributes()
    {
        return attributes;
    }

    public X509Extensions getExtensions()
    {
        return extensions;
    }

    public Holder getHolder()
    {
        return holder;
    }

    public AttCertIssuer getIssuer()
    {
        return issuer;
    }

    public DERBitString getIssuerUniqueID()
    {
        return issuerUniqueID;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public AlgorithmIdentifier getSignature()
    {
        return signature;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(holder);
        asn1encodablevector.add(issuer);
        asn1encodablevector.add(signature);
        asn1encodablevector.add(serialNumber);
        asn1encodablevector.add(attrCertValidityPeriod);
        asn1encodablevector.add(attributes);
        if (issuerUniqueID != null)
        {
            asn1encodablevector.add(issuerUniqueID);
        }
        if (extensions != null)
        {
            asn1encodablevector.add(extensions);
        }
        return new DERSequence(asn1encodablevector);
    }
}
