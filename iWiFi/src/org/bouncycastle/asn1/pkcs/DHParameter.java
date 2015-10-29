// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;

public class DHParameter extends ASN1Encodable
{

    DERInteger g;
    DERInteger l;
    DERInteger p;

    public DHParameter(BigInteger biginteger, BigInteger biginteger1, int i)
    {
        p = new DERInteger(biginteger);
        g = new DERInteger(biginteger1);
        if (i != 0)
        {
            l = new DERInteger(i);
            return;
        } else
        {
            l = null;
            return;
        }
    }

    public DHParameter(ASN1Sequence asn1sequence)
    {
        asn1sequence = asn1sequence.getObjects();
        p = (DERInteger)asn1sequence.nextElement();
        g = (DERInteger)asn1sequence.nextElement();
        if (asn1sequence.hasMoreElements())
        {
            l = (DERInteger)asn1sequence.nextElement();
            return;
        } else
        {
            l = null;
            return;
        }
    }

    public BigInteger getG()
    {
        return g.getPositiveValue();
    }

    public BigInteger getL()
    {
        if (l == null)
        {
            return null;
        } else
        {
            return l.getPositiveValue();
        }
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
        if (getL() != null)
        {
            asn1encodablevector.add(l);
        }
        return new DERSequence(asn1encodablevector);
    }
}
