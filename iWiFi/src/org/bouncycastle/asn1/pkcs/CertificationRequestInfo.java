// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Name;

public class CertificationRequestInfo extends ASN1Encodable
{

    ASN1Set attributes;
    X509Name subject;
    SubjectPublicKeyInfo subjectPKInfo;
    DERInteger version;

    public CertificationRequestInfo(ASN1Sequence asn1sequence)
    {
        version = new DERInteger(0);
        attributes = null;
        version = (DERInteger)asn1sequence.getObjectAt(0);
        subject = X509Name.getInstance(asn1sequence.getObjectAt(1));
        subjectPKInfo = SubjectPublicKeyInfo.getInstance(asn1sequence.getObjectAt(2));
        if (asn1sequence.size() > 3)
        {
            attributes = ASN1Set.getInstance((DERTaggedObject)asn1sequence.getObjectAt(3), false);
        }
        if (subject == null || version == null || subjectPKInfo == null)
        {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        } else
        {
            return;
        }
    }

    public CertificationRequestInfo(X500Name x500name, SubjectPublicKeyInfo subjectpublickeyinfo, ASN1Set asn1set)
    {
        version = new DERInteger(0);
        attributes = null;
        subject = X509Name.getInstance(x500name.getDERObject());
        subjectPKInfo = subjectpublickeyinfo;
        attributes = asn1set;
        if (x500name == null || version == null || subjectPKInfo == null)
        {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        } else
        {
            return;
        }
    }

    public CertificationRequestInfo(X509Name x509name, SubjectPublicKeyInfo subjectpublickeyinfo, ASN1Set asn1set)
    {
        version = new DERInteger(0);
        attributes = null;
        subject = x509name;
        subjectPKInfo = subjectpublickeyinfo;
        attributes = asn1set;
        if (x509name == null || version == null || subjectPKInfo == null)
        {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        } else
        {
            return;
        }
    }

    public static CertificationRequestInfo getInstance(Object obj)
    {
        if (obj instanceof CertificationRequestInfo)
        {
            return (CertificationRequestInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertificationRequestInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public ASN1Set getAttributes()
    {
        return attributes;
    }

    public X509Name getSubject()
    {
        return subject;
    }

    public SubjectPublicKeyInfo getSubjectPublicKeyInfo()
    {
        return subjectPKInfo;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(subject);
        asn1encodablevector.add(subjectPKInfo);
        if (attributes != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, attributes));
        }
        return new DERSequence(asn1encodablevector);
    }
}
