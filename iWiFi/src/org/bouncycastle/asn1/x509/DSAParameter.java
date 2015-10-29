// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class DSAParameter extends ASN1Encodable
{

    DERInteger g;
    DERInteger p;
    DERInteger q;

    public DSAParameter(BigInteger biginteger, BigInteger biginteger1, BigInteger biginteger2)
    {
        p = new DERInteger(biginteger);
        q = new DERInteger(biginteger1);
        g = new DERInteger(biginteger2);
    }

    public DSAParameter(ASN1Sequence asn1sequence)
    {
        if (asn1sequence.size() != 3)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Bad sequence size: ").append(asn1sequence.size()).toString());
        } else
        {
            asn1sequence = asn1sequence.getObjects();
            p = DERInteger.getInstance(asn1sequence.nextElement());
            q = DERInteger.getInstance(asn1sequence.nextElement());
            g = DERInteger.getInstance(asn1sequence.nextElement());
            return;
        }
    }

    public static DSAParameter getInstance(Object obj)
    {
        if (obj == null || (obj instanceof DSAParameter))
        {
            return (DSAParameter)obj;
        }
        if (obj instanceof ASN1Sequence)
        {
            return new DSAParameter((ASN1Sequence)obj);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid DSAParameter: ").append(obj.getClass().getName()).toString());
        }
    }

    public static DSAParameter getInstance(ASN1TaggedObject asn1taggedobject, boolean flag)
    {
        return getInstance(ASN1Sequence.getInstance(asn1taggedobject, flag));
    }

    public BigInteger getG()
    {
        return g.getPositiveValue();
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
        asn1encodablevector.add(p);
        asn1encodablevector.add(q);
        asn1encodablevector.add(g);
        return new DERSequence(asn1encodablevector);
    }
}
