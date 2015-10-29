// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTCTime;
import org.bouncycastle.asn1.x500.X500Name;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            TBSCertificateStructure, Time, X509Name, AlgorithmIdentifier, 
//            SubjectPublicKeyInfo

public class V1TBSCertificateGenerator
{

    Time endDate;
    X509Name issuer;
    DERInteger serialNumber;
    AlgorithmIdentifier signature;
    Time startDate;
    X509Name subject;
    SubjectPublicKeyInfo subjectPublicKeyInfo;
    DERTaggedObject version;

    public V1TBSCertificateGenerator()
    {
        version = new DERTaggedObject(0, new DERInteger(0));
    }

    public TBSCertificateStructure generateTBSCertificate()
    {
        if (serialNumber == null || signature == null || issuer == null || startDate == null || endDate == null || subject == null || subjectPublicKeyInfo == null)
        {
            throw new IllegalStateException("not all mandatory fields set in V1 TBScertificate generator");
        } else
        {
            ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
            asn1encodablevector.add(serialNumber);
            asn1encodablevector.add(signature);
            asn1encodablevector.add(issuer);
            ASN1EncodableVector asn1encodablevector1 = new ASN1EncodableVector();
            asn1encodablevector1.add(startDate);
            asn1encodablevector1.add(endDate);
            asn1encodablevector.add(new DERSequence(asn1encodablevector1));
            asn1encodablevector.add(subject);
            asn1encodablevector.add(subjectPublicKeyInfo);
            return new TBSCertificateStructure(new DERSequence(asn1encodablevector));
        }
    }

    public void setEndDate(DERUTCTime derutctime)
    {
        endDate = new Time(derutctime);
    }

    public void setEndDate(Time time)
    {
        endDate = time;
    }

    public void setIssuer(X500Name x500name)
    {
        issuer = X509Name.getInstance(x500name.getDERObject());
    }

    public void setIssuer(X509Name x509name)
    {
        issuer = x509name;
    }

    public void setSerialNumber(DERInteger derinteger)
    {
        serialNumber = derinteger;
    }

    public void setSignature(AlgorithmIdentifier algorithmidentifier)
    {
        signature = algorithmidentifier;
    }

    public void setStartDate(DERUTCTime derutctime)
    {
        startDate = new Time(derutctime);
    }

    public void setStartDate(Time time)
    {
        startDate = time;
    }

    public void setSubject(X500Name x500name)
    {
        subject = X509Name.getInstance(x500name.getDERObject());
    }

    public void setSubject(X509Name x509name)
    {
        subject = x509name;
    }

    public void setSubjectPublicKeyInfo(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        subjectPublicKeyInfo = subjectpublickeyinfo;
    }
}
