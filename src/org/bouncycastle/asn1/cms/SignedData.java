// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            ContentInfo, CMSObjectIdentifiers, SignerInfo

public class SignedData extends ASN1Encodable
{

    private ASN1Set certificates;
    private boolean certsBer;
    private ContentInfo contentInfo;
    private ASN1Set crls;
    private boolean crlsBer;
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
            if (obj instanceof ASN1TaggedObject)
            {
                obj = (ASN1TaggedObject)obj;
                switch (((ASN1TaggedObject) (obj)).getTagNo())
                {
                default:
                    throw new IllegalArgumentException((new StringBuilder()).append("unknown tag value ").append(((ASN1TaggedObject) (obj)).getTagNo()).toString());

                case 0: // '\0'
                    certsBer = obj instanceof BERTaggedObject;
                    certificates = ASN1Set.getInstance(((ASN1TaggedObject) (obj)), false);
                    break;

                case 1: // '\001'
                    crlsBer = obj instanceof BERTaggedObject;
                    crls = ASN1Set.getInstance(((ASN1TaggedObject) (obj)), false);
                    break;
                }
            } else
            {
                signerInfos = (ASN1Set)obj;
            }
        } while (true);
    }

    public SignedData(ASN1Set asn1set, ContentInfo contentinfo, ASN1Set asn1set1, ASN1Set asn1set2, ASN1Set asn1set3)
    {
        version = calculateVersion(contentinfo.getContentType(), asn1set1, asn1set2, asn1set3);
        digestAlgorithms = asn1set;
        contentInfo = contentinfo;
        certificates = asn1set1;
        crls = asn1set2;
        signerInfos = asn1set3;
        crlsBer = asn1set2 instanceof BERSet;
        certsBer = asn1set1 instanceof BERSet;
    }

    private DERInteger calculateVersion(DERObjectIdentifier derobjectidentifier, ASN1Set asn1set, ASN1Set asn1set1, ASN1Set asn1set2)
    {
        boolean flag8;
        boolean flag9;
        flag9 = false;
        flag8 = false;
        if (asn1set == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        boolean flag1;
        boolean flag3;
        asn1set = asn1set.getObjects();
        flag3 = false;
        flag1 = false;
        flag = false;
_L4:
        boolean flag4;
        boolean flag6;
        boolean flag7;
        flag6 = flag3;
        flag4 = flag1;
        flag7 = flag;
        if (!asn1set.hasMoreElements())
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = asn1set.nextElement();
        if (!(obj instanceof ASN1TaggedObject))
        {
            break MISSING_BLOCK_LABEL_308;
        }
        obj = (ASN1TaggedObject)obj;
        if (((ASN1TaggedObject) (obj)).getTagNo() == 1)
        {
            flag4 = flag3;
            flag1 = true;
            flag3 = flag;
            flag = flag4;
        } else
        if (((ASN1TaggedObject) (obj)).getTagNo() == 2)
        {
            flag4 = true;
            flag3 = flag;
            flag = flag4;
        } else
        {
            if (((ASN1TaggedObject) (obj)).getTagNo() != 3)
            {
                break MISSING_BLOCK_LABEL_308;
            }
            flag = flag3;
            flag3 = true;
        }
_L5:
        flag4 = flag3;
        flag3 = flag;
        flag = flag4;
        if (true) goto _L4; else goto _L3
_L2:
        flag6 = false;
        flag4 = false;
        flag7 = false;
_L3:
        if (flag7)
        {
            return new DERInteger(5);
        }
        boolean flag2 = flag9;
        if (asn1set1 != null)
        {
            asn1set = asn1set1.getObjects();
            flag = flag8;
            do
            {
                flag2 = flag;
                if (!asn1set.hasMoreElements())
                {
                    break;
                }
                if (asn1set.nextElement() instanceof ASN1TaggedObject)
                {
                    flag = true;
                }
            } while (true);
        }
        if (flag2)
        {
            return new DERInteger(5);
        }
        if (flag6)
        {
            return new DERInteger(4);
        }
        if (flag4)
        {
            return new DERInteger(3);
        }
        if (checkForVersion3(asn1set2))
        {
            return new DERInteger(3);
        }
        if (!CMSObjectIdentifiers.data.equals(derobjectidentifier))
        {
            return new DERInteger(3);
        } else
        {
            return new DERInteger(1);
        }
        boolean flag5 = flag;
        flag = flag3;
        flag3 = flag5;
          goto _L5
    }

    private boolean checkForVersion3(ASN1Set asn1set)
    {
        for (asn1set = asn1set.getObjects(); asn1set.hasMoreElements();)
        {
            if (SignerInfo.getInstance(asn1set.nextElement()).getVersion().getValue().intValue() == 3)
            {
                return true;
            }
        }

        return false;
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
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
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

    public ASN1Set getDigestAlgorithms()
    {
        return digestAlgorithms;
    }

    public ContentInfo getEncapContentInfo()
    {
        return contentInfo;
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
            if (certsBer)
            {
                asn1encodablevector.add(new BERTaggedObject(false, 0, certificates));
            } else
            {
                asn1encodablevector.add(new DERTaggedObject(false, 0, certificates));
            }
        }
        if (crls != null)
        {
            if (crlsBer)
            {
                asn1encodablevector.add(new BERTaggedObject(false, 1, crls));
            } else
            {
                asn1encodablevector.add(new DERTaggedObject(false, 1, crls));
            }
        }
        asn1encodablevector.add(signerInfos);
        return new BERSequence(asn1encodablevector);
    }
}
