// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.asymmetric.ec;

import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.signers.ECNRSigner;

// Referenced classes of package org.bouncycastle.jce.provider.asymmetric.ec:
//            Signature

public static class coder extends Signature
{

    public coder()
    {
        super(new SHA512Digest(), new ECNRSigner(), new coder(null));
    }
}
