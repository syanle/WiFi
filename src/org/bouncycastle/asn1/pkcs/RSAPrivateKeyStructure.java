// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class RSAPrivateKeyStructure extends ASN1Encodable
{

    private BigInteger coefficient;
    private BigInteger exponent1;
    private BigInteger exponent2;
    private BigInteger modulus;
    private ASN1Sequence otherPrimeInfos;
    private BigInteger prime1;
    private BigInteger prime2;
    private BigInteger privateExponent;
    private BigInteger publicExponent;
    private int version;

    public RSAPrivateKeyStructure(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2, BigInteger biginteger3, BigInteger biginteger4, BigInteger biginteger5, BigInteger biginteger6, 
            BigInteger biginteger7)
    {
        otherPrimeInfos = null;
        version = 0;
        modulus = biginteger;
        publicExponent = biginteger1;
        privateExponent = biginteger2;
        prime1 = biginteger3;
        prime2 = biginteger4;
        exponent1 = biginteger5;
        exponent2 = biginteger6;
        coefficient = biginteger7;
    }

    public RSAPrivateKeyStructure(ASN1Sequence asn1sequence)
    {
        otherPrimeInfos = null;
        asn1sequence = asn1sequence.getObjects();
        BigInteger biginteger = ((DERInteger)asn1sequence.nextElement()).getValue();
        if (biginteger.intValue() != 0 && biginteger.intValue() != 1)
        {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        version = biginteger.intValue();
        modulus = ((DERInteger)asn1sequence.nextElement()).getValue();
        publicExponent = ((DERInteger)asn1sequence.nextElement()).getValue();
        privateExponent = ((DERInteger)asn1sequence.nextElement()).getValue();
        prime1 = ((DERInteger)asn1sequence.nextElement()).getValue();
        prime2 = ((DERInteger)asn1sequence.nextElement()).getValue();
        exponent1 = ((DERInteger)asn1sequence.nextElement()).getValue();
        exponent2 = ((DERInteger)asn1sequence.nextElement()).getValue();
        coefficient = ((DERInteger)asn1sequence.nextElement()).getValue();
        if (asn1sequence.hasMoreElements())
        {
            otherPrimeInfos = (ASN1Sequence)asn1sequence.nextElement();
        }
    }

    public static RSAPrivateKeyStructure getInstance(Object obj)
    {
        if (obj instanceof RSAPrivateKeyStructure)
        {
            return (RSAPrivateKeyStructure)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new RSAPrivateKeyStructure((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown object in factory: ").append(obj.getClass().getName()).toString());
        }
    }

    public static RSAPrivateKeyStructure getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public BigInteger getCoefficient()
    {
        return coefficient;
    }

    public BigInteger getExponent1()
    {
        return exponent1;
    }

    public BigInteger getExponent2()
    {
        return exponent2;
    }

    public BigInteger getModulus()
    {
        return modulus;
    }

    public BigInteger getPrime1()
    {
        return prime1;
    }

    public BigInteger getPrime2()
    {
        return prime2;
    }

    public BigInteger getPrivateExponent()
    {
        return privateExponent;
    }

    public BigInteger getPublicExponent()
    {
        return publicExponent;
    }

    public int getVersion()
    {
        return version;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(version));
        asn1encodablevector.add(new DERInteger(getModulus()));
        asn1encodablevector.add(new DERInteger(getPublicExponent()));
        asn1encodablevector.add(new DERInteger(getPrivateExponent()));
        asn1encodablevector.add(new DERInteger(getPrime1()));
        asn1encodablevector.add(new DERInteger(getPrime2()));
        asn1encodablevector.add(new DERInteger(getExponent1()));
        asn1encodablevector.add(new DERInteger(getExponent2()));
        asn1encodablevector.add(new DERInteger(getCoefficient()));
        if (otherPrimeInfos != null)
        {
            asn1encodablevector.add(otherPrimeInfos);
        }
        return new DERSequence(asn1encodablevector);
    }
}
