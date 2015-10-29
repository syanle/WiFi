// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cmp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.crmf.EncryptedValue;
import org.bouncycastle.asn1.crmf.PKIPublicationInfo;

// Referenced classes of package org.bouncycastle.asn1.cmp:
//            CertOrEncCert

public class CertifiedKeyPair extends ASN1Encodable
{

    private CertOrEncCert certOrEncCert;
    private EncryptedValue privateKey;
    private PKIPublicationInfo publicationInfo;

    private CertifiedKeyPair(ASN1Sequence asn1sequence)
    {
label0:
        {
label1:
            {
                super();
                certOrEncCert = CertOrEncCert.getInstance(asn1sequence.getObjectAt(0));
                if (asn1sequence.size() >= 2)
                {
                    if (asn1sequence.size() != 2)
                    {
                        break label0;
                    }
                    asn1sequence = ASN1TaggedObject.getInstance(asn1sequence.getObjectAt(1));
                    if (asn1sequence.getTagNo() != 0)
                    {
                        break label1;
                    }
                    privateKey = EncryptedValue.getInstance(asn1sequence.getObject());
                }
                return;
            }
            publicationInfo = PKIPublicationInfo.getInstance(asn1sequence.getObject());
            return;
        }
        privateKey = EncryptedValue.getInstance(ASN1TaggedObject.getInstance(asn1sequence.getObjectAt(1)));
        publicationInfo = PKIPublicationInfo.getInstance(ASN1TaggedObject.getInstance(asn1sequence.getObjectAt(2)));
    }

    public CertifiedKeyPair(CertOrEncCert certorenccert)
    {
        this(certorenccert, null, null);
    }

    public CertifiedKeyPair(CertOrEncCert certorenccert, EncryptedValue encryptedvalue, PKIPublicationInfo pkipublicationinfo)
    {
        if (certorenccert == null)
        {
            throw new IllegalArgumentException("'certOrEncCert' cannot be null");
        } else
        {
            certOrEncCert = certorenccert;
            privateKey = encryptedvalue;
            publicationInfo = pkipublicationinfo;
            return;
        }
    }

    public static CertifiedKeyPair getInstance(Object obj)
    {
        if (obj instanceof CertifiedKeyPair)
        {
            return (CertifiedKeyPair)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new CertifiedKeyPair((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid object: ").append(obj.getClass().getName()).toString());
        }
    }

    public CertOrEncCert getCertOrEncCert()
    {
        return certOrEncCert;
    }

    public EncryptedValue getPrivateKey()
    {
        return privateKey;
    }

    public PKIPublicationInfo getPublicationInfo()
    {
        return publicationInfo;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(certOrEncCert);
        if (privateKey != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, privateKey));
        }
        if (publicationInfo != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, publicationInfo));
        }
        return new DERSequence(asn1encodablevector);
    }
}
