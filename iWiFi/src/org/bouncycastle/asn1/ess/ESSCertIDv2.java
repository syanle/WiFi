// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.ess;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.IssuerSerial;

public class ESSCertIDv2 extends ASN1Encodable
{

    private static final AlgorithmIdentifier DEFAULT_ALG_ID;
    private byte certHash[];
    private AlgorithmIdentifier hashAlgorithm;
    private IssuerSerial issuerSerial;

    public ESSCertIDv2(ASN1Sequence asn1sequence)
    {
        int i = 0;
        super();
        if (asn1sequence.size() > 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        int j;
        if (asn1sequence.getObjectAt(0) instanceof ASN1OctetString)
        {
            hashAlgorithm = DEFAULT_ALG_ID;
        } else
        {
            hashAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(0).getDERObject());
            i = 1;
        }
        j = i + 1;
        certHash = ASN1OctetString.getInstance(asn1sequence.getObjectAt(i).getDERObject()).getOctets();
        if (asn1sequence.size() > j)
        {
            issuerSerial = new IssuerSerial(ASN1Sequence.getInstance(asn1sequence.getObjectAt(j).getDERObject()));
        }
    }

    public ESSCertIDv2(AlgorithmIdentifier algorithmidentifier, byte abyte0[])
    {
        this(algorithmidentifier, abyte0, null);
    }

    public ESSCertIDv2(AlgorithmIdentifier algorithmidentifier, byte abyte0[], IssuerSerial issuerserial)
    {
        if (algorithmidentifier == null)
        {
            hashAlgorithm = DEFAULT_ALG_ID;
        } else
        {
            hashAlgorithm = algorithmidentifier;
        }
        certHash = abyte0;
        issuerSerial = issuerserial;
    }

    public static ESSCertIDv2 getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ESSCertIDv2))
        {
            return (ESSCertIDv2)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ESSCertIDv2((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in 'ESSCertIDv2' factory : ").append(obj.getClass().getName()).append(".").toString());
        }
    }

    public byte[] getCertHash()
    {
        return certHash;
    }

    public AlgorithmIdentifier getHashAlgorithm()
    {
        return hashAlgorithm;
    }

    public IssuerSerial getIssuerSerial()
    {
        return issuerSerial;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        if (!hashAlgorithm.equals(DEFAULT_ALG_ID))
        {
            asn1encodablevector.add(hashAlgorithm);
        }
        asn1encodablevector.add((new DEROctetString(certHash)).toASN1Object());
        if (issuerSerial != null)
        {
            asn1encodablevector.add(issuerSerial);
        }
        return new DERSequence(asn1encodablevector);
    }

    static 
    {
        DEFAULT_ALG_ID = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha256);
    }
}
