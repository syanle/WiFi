// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            OriginatorInfo, EncryptedContentInfo, RecipientInfo

public class EnvelopedData extends ASN1Encodable
{

    private EncryptedContentInfo encryptedContentInfo;
    private OriginatorInfo originatorInfo;
    private ASN1Set recipientInfos;
    private ASN1Set unprotectedAttrs;
    private DERInteger version;

    public EnvelopedData(ASN1Sequence asn1sequence)
    {
        version = (DERInteger)asn1sequence.getObjectAt(0);
        org.bouncycastle.asn1.DEREncodable derencodable = asn1sequence.getObjectAt(1);
        byte byte0;
        int i;
        if (derencodable instanceof ASN1TaggedObject)
        {
            originatorInfo = OriginatorInfo.getInstance((ASN1TaggedObject)derencodable, false);
            byte0 = 3;
            derencodable = asn1sequence.getObjectAt(2);
        } else
        {
            byte0 = 2;
        }
        recipientInfos = ASN1Set.getInstance(derencodable);
        i = byte0 + 1;
        encryptedContentInfo = EncryptedContentInfo.getInstance(asn1sequence.getObjectAt(byte0));
        if (asn1sequence.size() > i)
        {
            unprotectedAttrs = ASN1Set.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(i), false);
        }
    }

    public EnvelopedData(OriginatorInfo originatorinfo, ASN1Set asn1set, EncryptedContentInfo encryptedcontentinfo, ASN1Set asn1set1)
    {
        if (originatorinfo == null && asn1set1 == null) goto _L2; else goto _L1
_L1:
        version = new DERInteger(2);
_L4:
        originatorInfo = originatorinfo;
        recipientInfos = asn1set;
        encryptedContentInfo = encryptedcontentinfo;
        unprotectedAttrs = asn1set1;
        return;
_L2:
        version = new DERInteger(0);
        Enumeration enumeration = asn1set.getObjects();
        do
        {
            if (!enumeration.hasMoreElements())
            {
                continue; /* Loop/switch isn't completed */
            }
        } while (RecipientInfo.getInstance(enumeration.nextElement()).getVersion().equals(version));
        version = new DERInteger(2);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static EnvelopedData getInstance(Object obj)
    {
        if (obj == null || (obj instanceof EnvelopedData))
        {
            return (EnvelopedData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new EnvelopedData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid EnvelopedData: ").append(obj.getClass().getName()).toString());
        }
    }

    public static EnvelopedData getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public EncryptedContentInfo getEncryptedContentInfo()
    {
        return encryptedContentInfo;
    }

    public OriginatorInfo getOriginatorInfo()
    {
        return originatorInfo;
    }

    public ASN1Set getRecipientInfos()
    {
        return recipientInfos;
    }

    public ASN1Set getUnprotectedAttrs()
    {
        return unprotectedAttrs;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        if (originatorInfo != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, originatorInfo));
        }
        asn1encodablevector.add(recipientInfos);
        asn1encodablevector.add(encryptedContentInfo);
        if (unprotectedAttrs != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, unprotectedAttrs));
        }
        return new BERSequence(asn1encodablevector);
    }
}
