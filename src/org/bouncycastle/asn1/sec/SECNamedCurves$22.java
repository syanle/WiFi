// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.asn1.sec;

import java.math.BigInteger;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECParametersHolder;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.util.encoders.Hex;

// Referenced classes of package org.bouncycastle.asn1.sec:
//            SECNamedCurves

static final class r extends X9ECParametersHolder
{

    protected X9ECParameters createParameters()
    {
        Object obj = BigInteger.valueOf(1L);
        BigInteger biginteger2 = SECNamedCurves.access$000("020A601907B8C953CA1481EB10512F78744A3205FD");
        byte abyte0[] = Hex.decode("85E25BFE5C86226CDB12016F7553F9D0E693A268");
        BigInteger biginteger = SECNamedCurves.access$000("040000000000000000000292FE77E70C12A4234C33");
        BigInteger biginteger1 = BigInteger.valueOf(2L);
        obj = new org.bouncycastle.math.ec.(163, 3, 6, 7, ((BigInteger) (obj)), biginteger2, biginteger, biginteger1);
        return new X9ECParameters(((ECCurve) (obj)), ((ECCurve) (obj)).decodePoint(Hex.decode("0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1")), biginteger, biginteger1, abyte0);
    }

    r()
    {
    }
}
