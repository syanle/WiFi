// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            X509ObjectIdentifiers, AlgorithmIdentifier, X509Name, Time, 
//            SubjectPublicKeyInfo, X509Extensions

public class TBSCertificateStructure extends ASN1Encodable
    implements X509ObjectIdentifiers, PKCSObjectIdentifiers
{

    Time endDate;
    X509Extensions extensions;
    X509Name issuer;
    DERBitString issuerUniqueId;
    ASN1Sequence seq;
    DERInteger serialNumber;
    AlgorithmIdentifier signature;
    Time startDate;
    X509Name subject;
    SubjectPublicKeyInfo subjectPublicKeyInfo;
    DERBitString subjectUniqueId;
    DERInteger version;

    public TBSCertificateStructure(ASN1Sequence asn1sequence)
    {
        Object obj;
        seq = asn1sequence;
        int i;
        int j;
        if (asn1sequence.getObjectAt(0) instanceof DERTaggedObject)
        {
            version = DERInteger.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(0), true);
            i = 0;
        } else
        {
            version = new DERInteger(0);
            i = -1;
        }
        serialNumber = DERInteger.getInstance(asn1sequence.getObjectAt(i + 1));
        signature = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(i + 2));
        issuer = X509Name.getInstance(asn1sequence.getObjectAt(i + 3));
        obj = (ASN1Sequence)asn1sequence.getObjectAt(i + 4);
        startDate = Time.getInstance(((ASN1Sequence) (obj)).getObjectAt(0));
        endDate = Time.getInstance(((ASN1Sequence) (obj)).getObjectAt(1));
        subject = X509Name.getInstance(asn1sequence.getObjectAt(i + 5));
        subjectPublicKeyInfo = SubjectPublicKeyInfo.getInstance(asn1sequence.getObjectAt(i + 6));
        j = asn1sequence.size() - (i + 6) - 1;
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_269;
        }
        obj = (DERTaggedObject)asn1sequence.getObjectAt(i + 6 + j);
        switch (((DERTaggedObject) (obj)).getTagNo())
        {
        default:
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            subjectUniqueId = DERBitString.getInstance(((ASN1TaggedObject) (obj)), false);
            continue; /* Loop/switch isn't completed */

        case 3: // '\003'
            break;
        }
        break MISSING_BLOCK_LABEL_258;
_L4:
        j--;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_157;
_L1:
        issuerUniqueId = DERBitString.getInstance(((ASN1TaggedObject) (obj)), false);
        continue; /* Loop/switch isn't completed */
        extensions = X509Extensions.getInstance(obj);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static TBSCertificateStructure getInstance(Object obj)
    {
        if (obj instanceof TBSCertificateStructure)
        {
            return (TBSCertificateStructure)obj;
        }
        if (obj != null)
        {
            return new TBSCertificateStructure(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public static TBSCertificateStructure getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public Time getEndDate()
    {
        return endDate;
    }

    public X509Extensions getExtensions()
    {
        return extensions;
    }

    public X509Name getIssuer()
    {
        return issuer;
    }

    public DERBitString getIssuerUniqueId()
    {
        return issuerUniqueId;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public AlgorithmIdentifier getSignature()
    {
        return signature;
    }

    public Time getStartDate()
    {
        return startDate;
    }

    public X509Name getSubject()
    {
        return subject;
    }

    public SubjectPublicKeyInfo getSubjectPublicKeyInfo()
    {
        return subjectPublicKeyInfo;
    }

    public DERBitString getSubjectUniqueId()
    {
        return subjectUniqueId;
    }

    public int getVersion()
    {
        return version.getValue().intValue() + 1;
    }

    public DERInteger getVersionNumber()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
