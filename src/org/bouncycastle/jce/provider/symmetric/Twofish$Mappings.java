// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;

// Referenced classes of package org.bouncycastle.jce.provider.symmetric:
//            Twofish

public static class put extends HashMap
{

    public ()
    {
        put("Cipher.Twofish", "org.bouncycastle.jce.provider.symmetric.Twofish$ECB");
        put("KeyGenerator.Twofish", "org.bouncycastle.jce.provider.symmetric.Twofish$KeyGen");
        put("AlgorithmParameters.Twofish", "org.bouncycastle.jce.provider.symmetric.Twofish$AlgParams");
    }
}
