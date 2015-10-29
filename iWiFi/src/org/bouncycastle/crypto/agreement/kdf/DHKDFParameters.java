// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.crypto.DerivationParameters;

public class DHKDFParameters
    implements DerivationParameters
{

    private final DERObjectIdentifier algorithm;
    private final byte extraInfo[];
    private final int keySize;
    private final byte z[];

    public DHKDFParameters(DERObjectIdentifier derobjectidentifier, int i, byte abyte0[])
    {
        algorithm = derobjectidentifier;
        keySize = i;
        z = abyte0;
        extraInfo = null;
    }

    public DHKDFParameters(DERObjectIdentifier derobjectidentifier, int i, byte abyte0[], byte abyte1[])
    {
        algorithm = derobjectidentifier;
        keySize = i;
        z = abyte0;
        extraInfo = abyte1;
    }

    public DERObjectIdentifier getAlgorithm()
    {
        return algorithm;
    }

    public byte[] getExtraInfo()
    {
        return extraInfo;
    }

    public int getKeySize()
    {
        return keySize;
    }

    public byte[] getZ()
    {
        return z;
    }
}
