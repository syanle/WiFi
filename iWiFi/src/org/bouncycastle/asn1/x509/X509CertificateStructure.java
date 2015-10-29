// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509ObjectIdentifiers, TBSCertificateStructure, AlgorithmIdentifier, Time, 
//            X509Name, SubjectPublicKeyInfo

public class X509CertificateStructure extends ASN1Encodable
    implements X509ObjectIdentifiers, PKCSObjectIdentifiers
{

    ASN1Sequence seq;
    DERBitString sig;
    AlgorithmIdentifier sigAlgId;
    TBSCertificateStructure tbsCert;

    public X509CertificateStructure(ASN1Sequence asn1sequence)
    {
        seq = asn1sequence;
        if (asn1sequence.size() == 3)
        {
            tbsCert = TBSCertificateStructure.getInstance(asn1sequence.getObjectAt(0));
            sigAlgId = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(1));
            sig = DERBitString.getInstance(asn1sequence.getObjectAt(2));
            return;
        } else
        {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
    }

    public static X509CertificateStructure getInstance(Object obj)
    {
        if (obj instanceof X509CertificateStructure)
        {
            return (X509CertificateStructure)obj;
        }
        if (obj != null)
        {
            return new X509CertificateStructure(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public static X509CertificateStructure getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public Time getEndDate()
    {
        return tbsCert.getEndDate();
    }

    public X509Name getIssuer()
    {
        return tbsCert.getIssuer();
    }

    public DERInteger getSerialNumber()
    {
        return tbsCert.getSerialNumber();
    }

    public DERBitString getSignature()
    {
        return sig;
    }

    public AlgorithmIdentifier getSignatureAlgorithm()
    {
        return sigAlgId;
    }

    public Time getStartDate()
    {
        return tbsCert.getStartDate();
    }

    public X509Name getSubject()
    {
        return tbsCert.getSubject();
    }

    public SubjectPublicKeyInfo getSubjectPublicKeyInfo()
    {
        return tbsCert.getSubjectPublicKeyInfo();
    }

    public TBSCertificateStructure getTBSCertificate()
    {
        return tbsCert;
    }

    public int getVersion()
    {
        return tbsCert.getVersion();
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
