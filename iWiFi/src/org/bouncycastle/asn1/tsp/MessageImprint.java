// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.tsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class MessageImprint extends ASN1Encodable
{

    AlgorithmIdentifier hashAlgorithm;
    byte hashedMessage[];

    public MessageImprint(ASN1Sequence asn1sequence)
    {
        hashAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(0));
        hashedMessage = ASN1OctetString.getInstance(asn1sequence.getObjectAt(1)).getOctets();
    }

    public MessageImprint(AlgorithmIdentifier algorithmidentifier, byte abyte0[])
    {
        hashAlgorithm = algorithmidentifier;
        hashedMessage = abyte0;
    }

    public static MessageImprint getInstance(Object obj)
    {
        if (obj == null || (obj instanceof MessageImprint))
        {
            return (MessageImprint)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new MessageImprint((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException("Bad object in factory.");
        }
    }

    public AlgorithmIdentifier getHashAlgorithm()
    {
        return hashAlgorithm;
    }

    public byte[] getHashedMessage()
    {
        return hashedMessage;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(hashAlgorithm);
        asn1encodablevector.add(new DEROctetString(hashedMessage));
        return new DERSequence(asn1encodablevector);
    }
}
