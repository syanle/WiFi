// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.util.encoders.Hex;

// Referenced classes of package org.bouncycastle.asn1.x9:
//            X9ECParametersHolder, X962NamedCurves, X9ECParameters

static final class er extends X9ECParametersHolder
{

    protected X9ECParameters createParameters()
    {
        org.bouncycastle.math.ec.er er = new org.bouncycastle.math.ec.er(new BigInteger("6277101735386680763835789423207666416083908700390324961279"), new BigInteger("fffffffffffffffffffffffffffffffefffffffffffffffc", 16), new BigInteger("22123dc2395a05caa7423daeccc94760a7d462256bd56916", 16));
        return new X9ECParameters(er, er.decodePoint(Hex.decode("027d29778100c65a1da1783716588dce2b8b4aee8e228f1896")), new BigInteger("ffffffffffffffffffffffff7a62d031c83f4294f640ec13", 16), BigInteger.valueOf(1L), Hex.decode("c469684435deb378c4b65ca9591e2a5763059a2e"));
    }

    er()
    {
    }
}