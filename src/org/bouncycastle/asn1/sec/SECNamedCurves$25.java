// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.sec;

import java.math.BigInteger;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECParametersHolder;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.util.encoders.Hex;

// Referenced classes of package org.bouncycastle.asn1.sec:
//            SECNamedCurves

static final class r extends X9ECParametersHolder
{

    protected X9ECParameters createParameters()
    {
        Object obj = ECConstants.ZERO;
        BigInteger biginteger2 = BigInteger.valueOf(1L);
        BigInteger biginteger = SECNamedCurves.access$000("8000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF");
        BigInteger biginteger1 = BigInteger.valueOf(4L);
        obj = new org.bouncycastle.math.ec.(233, 74, ((BigInteger) (obj)), biginteger2, biginteger, biginteger1);
        return new X9ECParameters(((ECCurve) (obj)), ((ECCurve) (obj)).decodePoint(Hex.decode("04017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD612601DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3")), biginteger, biginteger1, null);
    }

    r()
    {
    }
}
