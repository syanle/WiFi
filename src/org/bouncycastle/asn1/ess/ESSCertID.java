// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ess;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.IssuerSerial;

public class ESSCertID extends ASN1Encodable
{

    private ASN1OctetString certHash;
    private IssuerSerial issuerSerial;

    public ESSCertID(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() < 1 || asn1sequence.size() > 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        certHash = ASN1OctetString.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() > 1)
        {
            issuerSerial = IssuerSerial.getInstance(asn1sequence.getObjectAt(1));
        }
    }

    public ESSCertID(byte abyte0[])
    {
        certHash = new DEROctetString(abyte0);
    }

    public ESSCertID(byte abyte0[], IssuerSerial issuerserial)
    {
        certHash = new DEROctetString(abyte0);
        issuerSerial = issuerserial;
    }

    public static ESSCertID getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ESSCertID))
        {
            return (ESSCertID)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ESSCertID((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'ESSCertID' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public byte[] getCertHash()
    {
        return certHash.getOctets();
    }

    public IssuerSerial getIssuerSerial()
    {
        return issuerSerial;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certHash);
        if (issuerSerial != null)
        {
            asn1encodablevector.add(issuerSerial);
        }
        return new DERSequence(asn1encodablevector);
    }
}
