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

static final class er extends X9ECParametersHolder
{

    protected X9ECParameters createParameters()
    {
        Object obj = SECNamedCurves.access$000("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF");
        BigInteger biginteger2 = SECNamedCurves.access$000("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC");
        BigInteger biginteger3 = SECNamedCurves.access$000("E87579C11079F43DD824993C2CEE5ED3");
        byte abyte0[] = Hex.decode("000E0D4D696E6768756151750CC03A4473D03679");
        BigInteger biginteger = SECNamedCurves.access$000("FFFFFFFE0000000075A30D1B9038A115");
        BigInteger biginteger1 = BigInteger.valueOf(1L);
        obj = new org.bouncycastle.math.ec.(((BigInteger) (obj)), biginteger2, biginteger3);
        return new X9ECParameters(((ECCurve) (obj)), ((ECCurve) (obj)).decodePoint(Hex.decode("04161FF7528B899B2D0C28607CA52C5B86CF5AC8395BAFEB13C02DA292DDED7A83")), biginteger, biginteger1, abyte0);
    }

    er()
    {
    }
}
