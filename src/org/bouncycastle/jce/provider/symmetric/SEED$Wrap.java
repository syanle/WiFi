// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import org.bouncycastle.crypto.engines.SEEDWrapEngine;
import org.bouncycastle.jce.provider.WrapCipherSpi;

// Referenced classes of package org.bouncycastle.jce.provider.symmetric:
//            SEED

public static class it> extends WrapCipherSpi
{

    public ()
    {
        super(new SEEDWrapEngine());
    }
}
