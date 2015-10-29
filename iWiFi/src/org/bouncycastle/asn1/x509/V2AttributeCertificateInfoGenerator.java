// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            Attribute, AttCertValidityPeriod, AttributeCertificateInfo, X509Extensions, 
//            Holder, AttCertIssuer, AlgorithmIdentifier

public class V2AttributeCertificateInfoGenerator
{

    private ASN1EncodableVector attributes;
    private DERGeneralizedTime endDate;
    private X509Extensions extensions;
    private Holder holder;
    private AttCertIssuer issuer;
    private DERBitString issuerUniqueID;
    private DERInteger serialNumber;
    private AlgorithmIdentifier signature;
    private DERGeneralizedTime startDate;
    private DERInteger version;

    public V2AttributeCertificateInfoGenerator()
    {
        version = new DERInteger(1);
        attributes = new ASN1EncodableVector();
    }

    public void addAttribute(String s, ASN1Encodable asn1encodable)
    {
        attributes.add(new Attribute(new DERObjectIdentifier(s), new DERSet(asn1encodable)));
    }

    public void addAttribute(Attribute attribute)
    {
        attributes.add(attribute);
    }

    public AttributeCertificateInfo generateAttributeCertificateInfo()
    {
        if (serialNumber == null || signature == null || issuer == null || startDate == null || endDate == null || holder == null || attributes == null)
        {
            throw new IllegalStateException("not all mandatory fields set in V2 AttributeCertificateInfo generator");
        }
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(holder);
        asn1encodablevector.add(issuer);
        asn1encodablevector.add(signature);
        asn1encodablevector.add(serialNumber);
        asn1encodablevector.add(new AttCertValidityPeriod(startDate, endDate));
        asn1encodablevector.add(new DERSequence(attributes));
        if (issuerUniqueID != null)
        {
            asn1encodablevector.add(issuerUniqueID);
        }
        if (extensions != null)
        {
            asn1encodablevector.add(extensions);
        }
        return new AttributeCertificateInfo(new DERSequence(asn1encodablevector));
    }

    public void setEndDate(DERGeneralizedTime dergeneralizedtime)
    {
        endDate = dergeneralizedtime;
    }

    public void setExtensions(X509Extensions x509extensions)
    {
        extensions = x509extensions;
    }

    public void setHolder(Holder holder1)
    {
        holder = holder1;
    }

    public void setIssuer(AttCertIssuer attcertissuer)
    {
        issuer = attcertissuer;
    }

    public void setIssuerUniqueID(DERBitString derbitstring)
    {
        issuerUniqueID = derbitstring;
    }

    public void setSerialNumber(DERInteger derinteger)
    {
        serialNumber = derinteger;
    }

    public void setSignature(AlgorithmIdentifier algorithmidentifier)
    {
        signature = algorithmidentifier;
    }

    public void setStartDate(DERGeneralizedTime dergeneralizedtime)
    {
        startDate = dergeneralizedtime;
    }
}
