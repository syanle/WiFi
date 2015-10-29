// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.cryptopro;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class GOST3410ParamSetParameters extends ASN1Encodable
{

    DERInteger a;
    int keySize;
    DERInteger p;
    DERInteger q;

    public GOST3410ParamSetParameters(int i, BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2)
    {
        keySize = i;
        p = new DERInteger(biginteger);
        q = new DERInteger(biginteger1);
        a = new DERInteger(biginteger2);
    }

    public GOST3410ParamSetParameters(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        keySize = ((DERInteger)asn1sequence.nextElement()).getValue().intValue();
        p = (DERInteger)asn1sequence.nextElement();
        q = (DERInteger)asn1sequence.nextElement();
        a = (DERInteger)asn1sequence.nextElement();
    }

    public static GOST3410ParamSetParameters getInstance(Object obj)
    {
        if (obj == null || (obj instanceof GOST3410ParamSetParameters))
        {
            return (GOST3410ParamSetParameters)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new GOST3410ParamSetParameters((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid GOST3410Parameter: ").append(obj.getClass().getName()).toString());
        }
    }

    public static GOST3410ParamSetParameters getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public BigInteger getA()
    {
        return a.getPositiveValue();
    }

    public int getKeySize()
    {
        return keySize;
    }

    public int getLKeySize()
    {
        return keySize;
    }

    public BigInteger getP()
    {
        return p.getPositiveValue();
    }

    public BigInteger getQ()
    {
        return q.getPositiveValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(keySize));
        asn1encodablevector.add(p);
        asn1encodablevector.add(q);
        asn1encodablevector.add(a);
        return new DERSequence(asn1encodablevector);
    }
}
