// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            OriginatorInfo, EncryptedContentInfo

public class AuthEnvelopedData extends ASN1Encodable
{

    private ASN1Set authAttrs;
    private EncryptedContentInfo authEncryptedContentInfo;
    private ASN1OctetString mac;
    private OriginatorInfo originatorInfo;
    private ASN1Set recipientInfos;
    private ASN1Set unauthAttrs;
    private DERInteger version;

    public AuthEnvelopedData(ASN1Sequence asn1sequence)
    {
        version = (DERInteger)asn1sequence.getObjectAt(0).getDERObject();
        DERObject derobject = asn1sequence.getObjectAt(1).getDERObject();
        int i;
        int j;
        if (derobject instanceof ASN1TaggedObject)
        {
            originatorInfo = OriginatorInfo.getInstance((ASN1TaggedObject)derobject, false);
            i = 3;
            derobject = asn1sequence.getObjectAt(2).getDERObject();
        } else
        {
            i = 2;
        }
        recipientInfos = ASN1Set.getInstance(derobject);
        j = i + 1;
        authEncryptedContentInfo = EncryptedContentInfo.getInstance(asn1sequence.getObjectAt(i).getDERObject());
        i = j + 1;
        derobject = asn1sequence.getObjectAt(j).getDERObject();
        if (derobject instanceof ASN1TaggedObject)
        {
            authAttrs = ASN1Set.getInstance((ASN1TaggedObject)derobject, false);
            int k = i + 1;
            derobject = asn1sequence.getObjectAt(i).getDERObject();
            i = k;
        }
        mac = ASN1OctetString.getInstance(derobject);
        if (asn1sequence.size() > i)
        {
            unauthAttrs = ASN1Set.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(i).getDERObject(), false);
        }
    }

    public AuthEnvelopedData(OriginatorInfo originatorinfo, ASN1Set asn1set, EncryptedContentInfo encryptedcontentinfo, ASN1Set asn1set1, ASN1OctetString asn1octetstring, ASN1Set asn1set2)
    {
        version = new DERInteger(0);
        originatorInfo = originatorinfo;
        recipientInfos = asn1set;
        authEncryptedContentInfo = encryptedcontentinfo;
        authAttrs = asn1set1;
        mac = asn1octetstring;
        unauthAttrs = asn1set2;
    }

    public static AuthEnvelopedData getInstance(Object obj)
    {
        if (obj == null || (obj instanceof AuthEnvelopedData))
        {
            return (AuthEnvelopedData)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new AuthEnvelopedData((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid AuthEnvelopedData: ").append(obj.getClass().getName()).toString());
        }
    }

    public static AuthEnvelopedData getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ASN1Set getAuthAttrs()
    {
        return authAttrs;
    }

    public EncryptedContentInfo getAuthEncryptedContentInfo()
    {
        return authEncryptedContentInfo;
    }

    public ASN1OctetString getMac()
    {
        return mac;
    }

    public OriginatorInfo getOriginatorInfo()
    {
        return originatorInfo;
    }

    public ASN1Set getRecipientInfos()
    {
        return recipientInfos;
    }

    public ASN1Set getUnauthAttrs()
    {
        return unauthAttrs;
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
        asn1encodablevector.add(authEncryptedContentInfo);
        if (authAttrs != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 1, authAttrs));
        }
        asn1encodablevector.add(mac);
        if (unauthAttrs != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 2, unauthAttrs));
        }
        return new BERSequence(asn1encodablevector);
    }
}
