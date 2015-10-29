// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.pkcs:
//            PKCSObjectIdentifiers, ContentInfo

public class SignedData extends ASN1Encodable
    implements PKCSObjectIdentifiers
{

    private ASN1Set certificates;
    private ContentInfo contentInfo;
    private ASN1Set crls;
    private ASN1Set digestAlgorithms;
    private ASN1Set signerInfos;
    private DERInteger version;

    public SignedData(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        version = (DERInteger)asn1sequence.nextElement();
        digestAlgorithms = (ASN1Set)asn1sequence.nextElement();
        contentInfo = ContentInfo.getInstance(asn1sequence.nextElement());
        do
        {
            if (!asn1sequence.hasMoreElements())
            {
                break;
            }
            Object obj = (DERObject)asn1sequence.nextElement();
            if (obj instanceof DERTaggedObject)
            {
                obj = (DERTaggedObject)obj;
                switch (((DERTaggedObject) (obj)).getTagNo())
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder()).append("unknown tag value ").append(((DERTaggedObject) (obj)).getTagNo()).toString());

                case 0: // '\0'
                    certificates = ASN1Set.getInstance(((org.bouncycastle.asn1.ASN1TaggedObject) (obj)), false);
                    break;

                case 1: // '\001'
                    crls = ASN1Set.getInstance(((org.bouncycastle.asn1.ASN1TaggedObject) (obj)), false);
                    break;
                }
            } else
            {
                signerInfos = (ASN1Set)obj;
            }
        } while (true);
    }

    public SignedData(DERInteger derinteger, ASN1Set asn1set, ContentInfo contentinfo, ASN1Set asn1set1, ASN1Set asn1set2, ASN1Set asn1set3)
    {
        version = derinteger;
        digestAlgorithms = asn1set;
        contentInfo = contentinfo;
        certificates = asn1set1;
        crls = asn1set2;
        signerInfos = asn1set3;
    }

    public static SignedData getInstance(Object obj)
    {
        if (obj instanceof SignedData)
        {
            return (SignedData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new SignedData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj).toString());
        }
    }

    public ASN1Set getCRLs()
    {
        return crls;
    }

    public ASN1Set getCertificates()
    {
        return certificates;
    }

    public ContentInfo getContentInfo()
    {
        return contentInfo;
    }

    public ASN1Set getDigestAlgorithms()
    {
        return digestAlgorithms;
    }

    public ASN1Set getSignerInfos()
    {
        return signerInfos;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(digestAlgorithms);
        asn1encodablevector.add(contentInfo);
        if (certificates != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, certificates));
        }
        if (crls != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, crls));
        }
        asn1encodablevector.add(signerInfos);
        return new BERSequence(asn1encodablevector);
    }
}
