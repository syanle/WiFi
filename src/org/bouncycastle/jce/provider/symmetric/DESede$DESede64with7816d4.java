// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.jce.provider.JCEMac;

// Referenced classes of package org.bouncycastle.jce.provider.symmetric:
//            DESede

public static class  extends JCEMac
{

    public ()
    {
        super(new CBCBlockCipherMac(new DESedeEngine(), 64, new ISO7816d4Padding()));
    }
}
