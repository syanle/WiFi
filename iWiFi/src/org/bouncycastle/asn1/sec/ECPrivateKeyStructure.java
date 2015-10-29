// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.sec;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.util.BigIntegers;

public class ECPrivateKeyStructure extends ASN1Encodable
{

    private ASN1Sequence seq;

    public ECPrivateKeyStructure(BigInteger biginteger)
    {
        biginteger = BigIntegers.asUnsignedByteArray(biginteger);
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(1));
        asn1encodablevector.add(new DEROctetString(biginteger));
        seq = new DERSequence(asn1encodablevector);
    }

    public ECPrivateKeyStructure(BigInteger biginteger, ASN1Encodable asn1encodable)
    {
        this(biginteger, null, asn1encodable);
    }

    public ECPrivateKeyStructure(BigInteger biginteger, DERBitString derbitstring, ASN1Encodable asn1encodable)
    {
        biginteger = BigIntegers.asUnsignedByteArray(biginteger);
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(1));
        asn1encodablevector.add(new DEROctetString(biginteger));
        if (asn1encodable != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 0, asn1encodable));
        }
        if (derbitstring != null)
        {
            asn1encodablevector.add(new DERTaggedObject(true, 1, derbitstring));
        }
        seq = new DERSequence(asn1encodablevector);
    }

    public ECPrivateKeyStructure(ASN1Sequence asn1sequence)
    {
        seq = asn1sequence;
    }

    private ASN1Object getObjectInTag(int i)
    {
        for (Enumeration enumeration = seq.getObjects(); enumeration.hasMoreElements();)
        {
            Object obj = (DEREncodable)enumeration.nextElement();
            if (obj instanceof ASN1TaggedObject)
            {
                obj = (ASN1TaggedObject)obj;
                if (((ASN1TaggedObject) (obj)).getTagNo() == i)
                {
                    return (ASN1Object)((ASN1TaggedObject) (obj)).getObject().getDERObject();
                }
            }
        }

        return null;
    }

    public BigInteger getKey()
    {
        return new BigInteger(1, ((ASN1OctetString)seq.getObjectAt(1)).getOctets());
    }

    public ASN1Object getParameters()
    {
        return getObjectInTag(0);
    }

    public DERBitString getPublicKey()
    {
        return (DERBitString)getObjectInTag(1);
    }

    public DERObject toASN1Object()
    {
        return seq;
    }
}
