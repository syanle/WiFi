// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.CipherKeyGenerator;

// Referenced classes of package org.bouncycastle.jce.provider:
//            JCEKeyGenerator

public static class t> extends JCEKeyGenerator
{

    public ()
    {
        super("RC2", 128, new CipherKeyGenerator());
    }
}
