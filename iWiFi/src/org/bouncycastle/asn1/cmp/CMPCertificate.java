// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AttributeCertificate;
import org.bouncycastle.asn1.x509.X509CertificateStructure;

public class CMPCertificate extends ASN1Encodable
    implements ASN1Choice
{

    private AttributeCertificate x509v2AttrCert;
    private X509CertificateStructure x509v3PKCert;

    public CMPCertificate(AttributeCertificate attributecertificate)
    {
        x509v2AttrCert = attributecertificate;
    }

    public CMPCertificate(X509CertificateStructure x509certificatestructure)
    {
        if (x509certificatestructure.getVersion() != 3)
        {
            throw new IllegalArgumentException("only version 3 certificates allowed");
        } else
        {
            x509v3PKCert = x509certificatestructure;
            return;
        }
    }

    public static CMPCertificate getInstance(Object obj)
    {
        if (obj instanceof CMPCertificate)
        {
            return (CMPCertificate)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CMPCertificate(X509CertificateStructure.getInstance(obj));
        }
        if (obj instanceof ASN1TaggedObject)
        {
            return new CMPCertificate(AttributeCertificate.getInstance(((ASN1TaggedObject)obj).getObject()));
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public AttributeCertificate getX509v2AttrCert()
    {
        return x509v2AttrCert;
    }

    public X509CertificateStructure getX509v3PKCert()
    {
        return x509v3PKCert;
    }

    public boolean isX509v3PKCert()
    {
        return x509v3PKCert != null;
    }

    public DERObject toASN1Object()
    {
        if (x509v2AttrCert != null)
        {
            return new DERTaggedObject(true, 1, x509v2AttrCert);
        } else
        {
            return x509v3PKCert.toASN1Object();
        }
    }
}
