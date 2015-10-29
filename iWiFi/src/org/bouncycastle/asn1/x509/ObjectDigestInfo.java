// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;

// Referenced classes of package org.bouncycastle.asn1.x509:
//            AlgorithmIdentifier

public class ObjectDigestInfo extends ASN1Encodable
{

    public static final int otherObjectDigest = 2;
    public static final int publicKey = 0;
    public static final int publicKeyCert = 1;
    AlgorithmIdentifier digestAlgorithm;
    DEREnumerated digestedObjectType;
    DERBitString objectDigest;
    DERObjectIdentifier otherObjectTypeID;

    public ObjectDigestInfo(int i, String s, AlgorithmIdentifier algorithmidentifier, byte abyte0[])
    {
        digestedObjectType = new DEREnumerated(i);
        if (i == 2)
        {
            otherObjectTypeID = new DERObjectIdentifier(s);
        }
        digestAlgorithm = algorithmidentifier;
        objectDigest = new DERBitString(abyte0);
    }

    private ObjectDigestInfo(ASN1Sequence asn1sequence)
    {
        int i = 1;
        super();
        if (asn1sequence.size() > 4 || asn1sequence.size() < 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        }
        digestedObjectType = DEREnumerated.getInstance(asn1sequence.getObjectAt(0));
        if (asn1sequence.size() == 4)
        {
            otherObjectTypeID = DERObjectIdentifier.getInstance(asn1sequence.getObjectAt(1));
        } else
        {
            i = 0;
        }
        digestAlgorithm = AlgorithmIdentifier.getInstance(asn1sequence.getObjectAt(i + 1));
        objectDigest = DERBitString.getInstance(asn1sequence.getObjectAt(i + 2));
    }

    public static ObjectDigestInfo getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ObjectDigestInfo))
        {
            return (ObjectDigestInfo)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ObjectDigestInfo((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("illegal object in getInstance: ").append(obj.getClass().getName()).toString());
        }
    }

    public static ObjectDigestInfo getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public AlgorithmIdentifier getDigestAlgorithm()
    {
        return digestAlgorithm;
    }

    public DEREnumerated getDigestedObjectType()
    {
        return digestedObjectType;
    }

    public DERBitString getObjectDigest()
    {
        return objectDigest;
    }

    public DERObjectIdentifier getOtherObjectTypeID()
    {
        return otherObjectTypeID;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(digestedObjectType);
        if (otherObjectTypeID != null)
        {
            asn1encodablevector.add(otherObjectTypeID);
        }
        asn1encodablevector.add(digestAlgorithm);
        asn1encodablevector.add(objectDigest);
        return new DERSequence(asn1encodablevector);
    }
}
