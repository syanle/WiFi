// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.icao;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.x509.X509CertificateStructure;

public class CscaMasterList extends ASN1Encodable
{

    private X509CertificateStructure certList[];
    private DERInteger version;

    private CscaMasterList(ASN1Sequence asn1sequence)
    {
        int i = 0;
        super();
        version = new DERInteger(0);
        if (asn1sequence == null || asn1sequence.size() == 0)
        {
            throw new IllegalArgumentException("null or empty sequence passed.");
        }
        if (asn1sequence.size() != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Incorrect sequence size: ").append(asn1sequence.size()).toString());
        }
        version = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        asn1sequence = ASN1Set.getInstance(asn1sequence.getObjectAt(1));
        for (certList = new X509CertificateStructure[asn1sequence.size()]; i < certList.length; i++)
        {
            certList[i] = X509CertificateStructure.getInstance(asn1sequence.getObjectAt(i));
        }

    }

    public CscaMasterList(X509CertificateStructure ax509certificatestructure[])
    {
        version = new DERInteger(0);
        certList = copyCertList(ax509certificatestructure);
    }

    private X509CertificateStructure[] copyCertList(X509CertificateStructure ax509certificatestructure[])
    {
        X509CertificateStructure ax509certificatestructure1[] = new X509CertificateStructure[ax509certificatestructure.length];
        for (int i = 0; i != ax509certificatestructure1.length; i++)
        {
            ax509certificatestructure1[i] = ax509certificatestructure[i];
        }

        return ax509certificatestructure1;
    }

    public static CscaMasterList getInstance(Object obj)
    {
        if (obj instanceof CscaMasterList)
        {
            return (CscaMasterList)obj;
        }
        if (obj != null)
        {
            return new CscaMasterList(ASN1Sequence.getInstance(obj));
        } else
        {
            return null;
        }
    }

    public X509CertificateStructure[] getCertStructs()
    {
        return copyCertList(certList);
    }

    public int getVersion()
    {
        return version.getValue().intValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        ASN1EncodableVector asn1encodablevector1 = new ASN1EncodableVector();
        for (int i = 0; i < certList.length; i++)
        {
            asn1encodablevector1.add(certList[i]);
        }

        asn1encodablevector.add(new DERSet(asn1encodablevector1));
        return new DERSequence(asn1encodablevector);
    }
}
