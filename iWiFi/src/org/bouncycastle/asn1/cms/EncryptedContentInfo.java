// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedContentInfo extends ASN1Encodable
{

    private AlgorithmIdentifier contentEncryptionAlgorithm;
    private DERObjectIdentifier contentType;
    private ASN1OctetString encryptedContent;

    public EncryptedContentInfo(ASN1Sequence asn1sequence)
    {
        contentType = (DERObjectIdentifier)asn1sequence.getObjectAt(0);
        contentEncryptionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(1));
        if (asn1sequence.size() > 2)
        {
            encryptedContent = ASN1OctetString.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(2), false);
        }
    }

    public EncryptedContentInfo(DERObjectIdentifier derobjectidentifier, AlgorithmIdentifier algorithmidentifier, ASN1OctetString asn1octetstring)
    {
        contentType = derobjectidentifier;
        contentEncryptionAlgorithm = algorithmidentifier;
        encryptedContent = asn1octetstring;
    }

    public static EncryptedContentInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof EncryptedContentInfo))
        {
            return (EncryptedContentInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new EncryptedContentInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid EncryptedContentInfo: ").append(obj.getClass().getName()).toString());
        }
    }

    public AlgorithmIdentifier getContentEncryptionAlgorithm()
    {
        return contentEncryptionAlgorithm;
    }

    public DERObjectIdentifier getContentType()
    {
        return contentType;
    }

    public ASN1OctetString getEncryptedContent()
    {
        return encryptedContent;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(contentType);
        asn1encodablevector.add(contentEncryptionAlgorithm);
        if (encryptedContent != null)
        {
            asn1encodablevector.add(new BERTaggedObject(false, 0, encryptedContent));
        }
        return new BERSequence(asn1encodablevector);
    }
}
