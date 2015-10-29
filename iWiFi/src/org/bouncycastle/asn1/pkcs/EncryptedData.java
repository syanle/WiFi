// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedData extends ASN1Encodable
{

    DERObjectIdentifier bagId;
    DERObject bagValue;
    ASN1Sequence data;

    public EncryptedData(ASN1Sequence asn1sequence)
    {
        if (((DERInteger)asn1sequence.getObjectAt(0)).getValue().intValue() != 0)
        {
            throw new IllegalArgumentException("sequence not version 0");
        } else
        {
            data = (ASN1Sequence)asn1sequence.getObjectAt(1);
            return;
        }
    }

    public EncryptedData(DERObjectIdentifier derobjectidentifier, AlgorithmIdentifier algorithmidentifier, DEREncodable derencodable)
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(derobjectidentifier);
        asn1encodablevector.add(algorithmidentifier.getDERObject());
        asn1encodablevector.add(new BERTaggedObject(false, 0, derencodable));
        data = new BERSequence(asn1encodablevector);
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
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public ASN1OctetString getContent()
    {
        if (data.size() == 3)
        {
            return ASN1OctetString.getInstance((DERTaggedObject)data.getObjectAt(2), false);
        } else
        {
            return null;
        }
    }

    public DERObjectIdentifier getContentType()
    {
        return (DERObjectIdentifier)data.getObjectAt(0);
    }

    public AlgorithmIdentifier getEncryptionAlgorithm()
    {
        return AlgorithmIdentifier.getInstance(data.getObjectAt(1));
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(0));
        asn1encodablevector.add(data);
        return new BERSequence(asn1encodablevector);
    }
}
