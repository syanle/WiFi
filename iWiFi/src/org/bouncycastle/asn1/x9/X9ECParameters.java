// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            X9ObjectIdentifiers, X9Curve, X9FieldID, X9ECPoint

public class X9ECParameters extends ASN1Encodable
    implements X9ObjectIdentifiers
{

    private static final BigInteger ONE = BigInteger.valueOf(1L);
    private ECCurve curve;
    private X9FieldID fieldID;
    private ECPoint g;
    private BigInteger h;
    private BigInteger n;
    private byte seed[];

    public X9ECParameters(ASN1Sequence asn1sequence)
    {
        if (!(asn1sequence.getObjectAt(0) instanceof DERInteger) || !((DERInteger)asn1sequence.getObjectAt(0)).getValue().equals(ONE))
        {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        X9Curve x9curve = new X9Curve(new X9FieldID((ASN1Sequence)asn1sequence.getObjectAt(1)), (ASN1Sequence)asn1sequence.getObjectAt(2));
        curve = x9curve.getCurve();
        g = (new X9ECPoint(curve, (ASN1OctetString)asn1sequence.getObjectAt(3))).getPoint();
        n = ((DERInteger)asn1sequence.getObjectAt(4)).getValue();
        seed = x9curve.getSeed();
        if (asn1sequence.size() == 6)
        {
            h = ((DERInteger)asn1sequence.getObjectAt(5)).getValue();
        }
    }

    public X9ECParameters(ECCurve eccurve, ECPoint ecpoint, BigInteger biginteger)
    {
        this(eccurve, ecpoint, biginteger, ONE, null);
    }

    public X9ECParameters(ECCurve eccurve, ECPoint ecpoint, BigInteger biginteger, BigInteger biginteger1)
    {
        this(eccurve, ecpoint, biginteger, biginteger1, null);
    }

    public X9ECParameters(ECCurve eccurve, ECPoint ecpoint, BigInteger biginteger, BigInteger biginteger1, byte abyte0[])
    {
        curve = eccurve;
        g = ecpoint;
        n = biginteger;
        h = biginteger1;
        seed = abyte0;
        if (eccurve instanceof org.bouncycastle.math.ec.ECCurve.Fp)
        {
            fieldID = new X9FieldID(((org.bouncycastle.math.ec.ECCurve.Fp)eccurve).getQ());
        } else
        if (eccurve instanceof org.bouncycastle.math.ec.ECCurve.F2m)
        {
            eccurve = (org.bouncycastle.math.ec.ECCurve.F2m)eccurve;
            fieldID = new X9FieldID(eccurve.getM(), eccurve.getK1(), eccurve.getK2(), eccurve.getK3());
            return;
        }
    }

    public ECCurve getCurve()
    {
        return curve;
    }

    public ECPoint getG()
    {
        return g;
    }

    public BigInteger getH()
    {
        if (h == null)
        {
            return ONE;
        } else
        {
            return h;
        }
    }

    public BigInteger getN()
    {
        return n;
    }

    public byte[] getSeed()
    {
        return seed;
    }

    public DERObject toASN1Object()
    {
        ASN1EncodableVector asn1encodablevector = new ASN1EncodableVector();
        asn1encodablevector.add(new DERInteger(1));
        asn1encodablevector.add(fieldID);
        asn1encodablevector.add(new X9Curve(curve, seed));
        asn1encodablevector.add(new X9ECPoint(g));
        asn1encodablevector.add(new DERInteger(n));
        if (h != null)
        {
            asn1encodablevector.add(new DERInteger(h));
        }
        return new DERSequence(asn1encodablevector);
    }

}
