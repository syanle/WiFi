// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.crmf:
//            CertTemplate, OptionalValidity

public class CertTemplateBuilder
{

    private X509Extensions extensions;
    private X500Name issuer;
    private DERBitString issuerUID;
    private SubjectPublicKeyInfo publicKey;
    private DERInteger serialNumber;
    private AlgorithmIdentifier signingAlg;
    private X500Name subject;
    private DERBitString subjectUID;
    private OptionalValidity validity;
    private DERInteger version;

    public CertTemplateBuilder()
    {
    }

    private void addOptional(ASN1EncodableVector asn1encodablevector, int i, boolean flag, ASN1Encodable asn1encodable)
    {
        if (asn1encodable != null)
        {
            asn1encodablevector.add(new DERTaggedObject(flag, i, asn1encodable));
        }
    }

    public CertTemplate build()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        addOptional(asn1encodablevector, 0, false, version);
        addOptional(asn1encodablevector, 1, false, serialNumber);
        addOptional(asn1encodablevector, 2, false, signingAlg);
        addOptional(asn1encodablevector, 3, true, issuer);
        addOptional(asn1encodablevector, 4, false, validity);
        addOptional(asn1encodablevector, 5, true, subject);
        addOptional(asn1encodablevector, 6, false, publicKey);
        addOptional(asn1encodablevector, 7, false, issuerUID);
        addOptional(asn1encodablevector, 8, false, subjectUID);
        addOptional(asn1encodablevector, 9, false, extensions);
        return CertTemplate.getInstance(new DERSequence(asn1encodablevector));
    }

    public CertTemplateBuilder setExtensions(X509Extensions x509extensions)
    {
        extensions = x509extensions;
        return this;
    }

    public CertTemplateBuilder setIssuer(X500Name x500name)
    {
        issuer = x500name;
        return this;
    }

    public CertTemplateBuilder setIssuerUID(DERBitString derbitstring)
    {
        issuerUID = derbitstring;
        return this;
    }

    public CertTemplateBuilder setPublicKey(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        publicKey = subjectpublickeyinfo;
        return this;
    }

    public CertTemplateBuilder setSerialNumber(DERInteger derinteger)
    {
        serialNumber = derinteger;
        return this;
    }

    public CertTemplateBuilder setSigningAlg(AlgorithmIdentifier algorithmidentifier)
    {
        signingAlg = algorithmidentifier;
        return this;
    }

    public CertTemplateBuilder setSubject(X500Name x500name)
    {
        subject = x500name;
        return this;
    }

    public CertTemplateBuilder setSubjectUID(DERBitString derbitstring)
    {
        subjectUID = derbitstring;
        return this;
    }

    public CertTemplateBuilder setValidity(OptionalValidity optionalvalidity)
    {
        validity = optionalvalidity;
        return this;
    }

    public CertTemplateBuilder setVersion(int i)
    {
        version = new DERInteger(i);
        return this;
    }
}
