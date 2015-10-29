// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            EncryptedContentInfo

public class EncryptedData extends ASN1Encodable
{

    private EncryptedContentInfo encryptedContentInfo;
    private ASN1Set unprotectedAttrs;
    private DERInteger version;

    private EncryptedData(ASN1Sequence asn1sequence)
    {
        version = DERInteger.getInstance(asn1sequence.getObjectAt(0));
        encryptedContentInfo = EncryptedContentInfo.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() == 3)
        {
            unprotectedAttrs = ASN1Set.getInstance(asn1sequence.getObjectAt(2));
        }
    }

    public EncryptedData(EncryptedContentInfo encryptedcontentinfo)
    {
        this(encryptedcontentinfo, null);
    }

    public EncryptedData(EncryptedContentInfo encryptedcontentinfo, ASN1Set asn1set)
    {
        int i;
        if (asn1set == null)
        {
            i = 0;
        } else
        {
            i = 2;
        }
        version = new DERInteger(i);
        encryptedContentInfo = encryptedcontentinfo;
        unprotectedAttrs = asn1set;
    }

    public static EncryptedData getInstance(Object obj)
    {
        if (obj instanceof EncryptedData)
        {
            return (EncryptedData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new EncryptedData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid EncryptedData: ").append(obj.getClass().getName()).toString());
        }
    }

    public EncryptedContentInfo getEncryptedContentInfo()
    {
        return encryptedContentInfo;
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
        asn1encodablevector.add(encryptedContentInfo);
        if (unprotectedAttrs != null)
        {
            asn1encodablevector.add(new BERTaggedObject(false, 1, unprotectedAttrs));
        }
        return new BERSequence(asn1encodablevector);
    }
}
