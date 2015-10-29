// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class ElGamalParameter extends ASN1Encodable
{

    DERInteger g;
    DERInteger p;

    public ElGamalParameter(BigInteger biginteger, BigInteger biginteger1)
    {
        p = new DERInteger(biginteger);
        g = new DERInteger(biginteger1);
    }

    public ElGamalParameter(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        p = (DERInteger)asn1sequence.nextElement();
        g = (DERInteger)asn1sequence.nextElement();
    }

    public BigInteger getG()
    {
        return g.getPositiveValue();
    }

    public BigInteger getP()
    {
        return p.getPositiveValue();
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(p);
        asn1encodablevector.add(g);
        return new DERSequence(asn1encodablevector);
    }
}
