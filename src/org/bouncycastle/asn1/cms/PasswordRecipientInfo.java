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
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class PasswordRecipientInfo extends ASN1Encodable
{

    private ASN1OctetString encryptedKey;
    private AlgorithmIdentifier keyDerivationAlgorithm;
    private AlgorithmIdentifier keyEncryptionAlgorithm;
    private DERInteger version;

    public PasswordRecipientInfo(ASN1Sequence asn1sequence)
    {
        version = (DERInteger)asn1sequence.getObjectAt(0);
        if (asn1sequence.getObjectAt(1) instanceof ASN1TaggedObject)
        {
            keyDerivationAlgorithm = AlgorithmIdentifier.getInstance((ASN1TaggedObject)asn1sequence.getObjectAt(1), false);
            keyEncryptionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(2));
            encryptedKey = (ASN1OctetString)asn1sequence.getObjectAt(3);
            return;
        } else
        {
            keyEncryptionAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(1));
            encryptedKey = (ASN1OctetString)asn1sequence.getObjectAt(2);
            return;
        }
    }

    public PasswordRecipientInfo(AlgorithmIdentifier algorithmidentifier, ASN1OctetString asn1octetstring)
    {
        version = new DERInteger(0);
        keyEncryptionAlgorithm = algorithmidentifier;
        encryptedKey = asn1octetstring;
    }

    public PasswordRecipientInfo(AlgorithmIdentifier algorithmidentifier, AlgorithmIdentifier algorithmidentifier1, ASN1OctetString asn1octetstring)
    {
        version = new DERInteger(0);
        keyDerivationAlgorithm = algorithmidentifier;
        keyEncryptionAlgorithm = algorithmidentifier1;
        encryptedKey = asn1octetstring;
    }

    public static PasswordRecipientInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof PasswordRecipientInfo))
        {
            return (PasswordRecipientInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new PasswordRecipientInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid PasswordRecipientInfo: ").append(obj.getClass().getName()).toString());
        }
    }

    public static PasswordRecipientInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public ASN1OctetString getEncryptedKey()
    {
        return encryptedKey;
    }

    public AlgorithmIdentifier getKeyDerivationAlgorithm()
    {
        return keyDerivationAlgorithm;
    }

    public AlgorithmIdentifier getKeyEncryptionAlgorithm()
    {
        return keyEncryptionAlgorithm;
    }

    public DERInteger getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(version);
        if (keyDerivationAlgorithm != null)
        {
            asn1encodablevector.add(new DERTaggedObject(false, 0, keyDerivationAlgorithm));
        }
        asn1encodablevector.add(keyEncryptionAlgorithm);
        asn1encodablevector.add(encryptedKey);
        return new DERSequence(asn1encodablevector);
    }
}
