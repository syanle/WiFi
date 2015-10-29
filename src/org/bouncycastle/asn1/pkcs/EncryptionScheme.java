// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptionScheme extends AlgorithmIdentifier
{

    EncryptionScheme(ASN1Sequence asn1sequence)
    {
        this((DERObjectIdentifier)asn1sequence.getObjectAt(0), asn1sequence.getObjectAt(1));
    }

    public EncryptionScheme(DERObjectIdentifier derobjectidentifier, DEREncodable derencodable)
    {
        super(derobjectidentifier, derencodable);
    }

    public static final AlgorithmIdentifier getInstance(Object obj)
    {
        if (obj instanceof EncryptionScheme)
        {
            return (EncryptionScheme)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new EncryptionScheme((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public DERObject getDERObject()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(getObjectId());
        asn1encodablevector.add(getParameters());
        return new DERSequence(asn1encodablevector);
    }

    public DERObject getObject()
    {
        return (DERObject)getParameters();
    }
}
