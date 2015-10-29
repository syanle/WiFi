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

public class ECGOST3410ParamSetParameters extends ASN1Encodable
{

    DERInteger a;
    DERInteger b;
    DERInteger p;
    DERInteger q;
    DERInteger x;
    DERInteger y;

    public ECGOST3410ParamSetParameters(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2, BigInteger biginteger3, int i, BigInteger biginteger4)
    {
        a = new DERInteger(biginteger);
        b = new DERInteger(biginteger1);
        p = new DERInteger(biginteger2);
        q = new DERInteger(biginteger3);
        x = new DERInteger(i);
        y = new DERInteger(biginteger4);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        a = (DERInteger)asn1sequence.nextElement();
        b = (DERInteger)asn1sequence.nextElement();
        p = (DERInteger)asn1sequence.nextElement();
        q = (DERInteger)asn1sequence.nextElement();
        x = (DERInteger)asn1sequence.nextElement();
        y = (DERInteger)asn1sequence.nextElement();
    }

    public static ECGOST3410ParamSetParameters getInstance(Object obj)
    {
        if (obj == null || (obj instanceof ECGOST3410ParamSetParameters))
        {
            return (ECGOST3410ParamSetParameters)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new ECGOST3410ParamSetParameters((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid GOST3410Parameter: ").append(obj.getClass().getName()).toString());
        }
    }

    public static ECGOST3410ParamSetParameters getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public BigInteger getA()
    {
        return a.getPositiveValue();
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
        asn1encodablevector.add(a);
        asn1encodablevector.add(b);
        asn1encodablevector.add(p);
        asn1encodablevector.add(q);
        asn1encodablevector.add(x);
        asn1encodablevector.add(y);
        return new DERSequence(asn1encodablevector);
    }
}
