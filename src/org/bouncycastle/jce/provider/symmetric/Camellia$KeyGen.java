// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.jce.provider.JCEKeyGenerator;

// Referenced classes of package org.bouncycastle.jce.provider.symmetric:
//            Camellia

public static class <init> extends JCEKeyGenerator
{

    public ()
    {
        this(256);
    }

    public <init>(int i)
    {
        super("Camellia", i, new CipherKeyGenerator());
    }
}
