// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

// Referenced classes of package org.bouncycastle.asn1.cms:
//            RecipientIdentifier

public class KeyTransRecipientInfo extends ASN1Encodable
{

    private ASN1OctetString encryptedKey;
    private AlgorithmIdentifier keyEncryptionAlgorithm;
    private RecipientIdentifier rid;
    private DERInteger version;

    public KeyTransRecipientInfo(ASN1Sequence asn1sequence)
    {
        version = (DERInteger)asn1sequence.getObjectAt(0);
        rid = RecipientIdentifier.getInstance(asn1sequence.getObjectAt(1));
        keyEncryptionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(2));
        encryptedKey = (ASN1OctetString)asn1sequence.getObjectAt(3);
    }

    public KeyTransRecipientInfo(RecipientIdentifier recipientidentifier, AlgorithmIdentifier algorithmidentifier, ASN1OctetString asn1octetstring)
    {
        if (recipientidentifier.getDERObject() instanceof ASN1TaggedObject)
        {
            version = new DERInteger(2);
        } else
        {
            version = new DERInteger(0);
        }
        rid = recipientidentifier;
        keyEncryptionAlgorithm = algorithmidentifier;
        encryptedKey = asn1octetstring;
    }

    public static KeyTransRecipientInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof KeyTransRecipientInfo))
        {
            return (KeyTransRecipientInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new KeyTransRecipientInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Illegal object in KeyTransRecipientInfo: ").append(obj.getClass().getName()).toString());
        }
    }

    public ASN1OctetString getEncryptedKey()
    {
        return encryptedKey;
    }

    public AlgorithmIdentifier getKeyEncryptionAlgorithm()
    {
        return keyEncryptionAlgorithm;
    }

    public RecipientIdentifier getRecipientIdentifier()
    {
        return rid;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        asn1encodablevector.add(rid);
        asn1encodablevector.add(keyEncryptionAlgorithm);
        asn1encodablevector.add(encryptedKey);
        return new DERSequence(asn1encodablevector);
    }
}
