// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.crmf;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extensions;

// Referenced classes of package org.bouncycastle.asn1.crmf:
//            OptionalValidity

public class CertTemplate extends ASN1Encodable
{

    private X509Extensions extensions;
    private X500Name issuer;
    private DERBitString issuerUID;
    private SubjectPublicKeyInfo publicKey;
    private ASN1Sequence seq;
    private DERInteger serialNumber;
    private AlgorithmIdentifier signingAlg;
    private X500Name subject;
    private DERBitString subjectUID;
    private OptionalValidity validity;
    private DERInteger version;

    private CertTemplate(ASN1Sequence asn1sequence)
    {
        seq = asn1sequence;
        asn1sequence = asn1sequence.getObjects();
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            ASN1TaggedObject asn1taggedobject = (ASN1TaggedObject)asn1sequence.nextElement();
            switch (asn1taggedobject.getTagNo())
            {
            default:
                throw new IllegalArgumentException((new StringBuilder()).append("unknown tag: ").append(asn1taggedobject.getTagNo()).toString());

            case 0: // '\0'
                version = DERInteger.getInstance(asn1taggedobject, false);
                break;

            case 1: // '\001'
                serialNumber = DERInteger.getInstance(asn1taggedobject, false);
                break;

            case 2: // '\002'
                signingAlg = AlgorithmIdentifier.getInstance(asn1taggedobject, false);
                break;

            case 3: // '\003'
                issuer = X500Name.getInstance(asn1taggedobject, true);
                break;

            case 4: // '\004'
                validity = OptionalValidity.getInstance(ASN1Sequence.getInstance(asn1taggedobject, false));
                break;

            case 5: // '\005'
                subject = X500Name.getInstance(asn1taggedobject, true);
                break;

            case 6: // '\006'
                publicKey = SubjectPublicKeyInfo.getInstance(asn1taggedobject, false);
                break;

            case 7: // '\007'
                issuerUID = DERBitString.getInstance(asn1taggedobject, false);
                break;

            case 8: // '\b'
                subjectUID = DERBitString.getInstance(asn1taggedobject, false);
                break;

            case 9: // '\t'
                extensions = X509Extensions.getInstance(asn1taggedobject, false);
                break;
            }
        } while (true);
    }

    public static CertTemplate getInstance(Object obj)
    {
        if (obj instanceof CertTemplate)
        {
            return (CertTemplate)obj;
        }
        if (obj != null)
        {
            return new CertTemplate(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public X509Extensions getExtensions()
    {
        return extensions;
    }

    public X500Name getIssuer()
    {
        return issuer;
    }

    public DERBitString getIssuerUID()
    {
        return issuerUID;
    }

    public SubjectPublicKeyInfo getPublicKey()
    {
        return publicKey;
    }

    public DERInteger getSerialNumber()
    {
        return serialNumber;
    }

    public AlgorithmIdentifier getSigningAlg()
    {
        return signingAlg;
    }

    public X500Name getSubject()
    {
        return subject;
    }

    public DERBitString getSubjectUID()
    {
        return subjectUID;
    }

    public OptionalValidity getValidity()
    {
        return validity;
    }

    public int getVersion()
    {
        return version.getValue().intValue();
    }

    public void setPublicKey(SubjectPublicKeyInfo subjectpublickeyinfo)
    {
        publicKey = subjectpublickeyinfo;
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
