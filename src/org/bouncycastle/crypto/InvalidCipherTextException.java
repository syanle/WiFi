// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.crypto;


// Referenced classes of package org.bouncycastle.crypto:
//            CryptoException

public class InvalidCipherTextException extends CryptoException
{

    public InvalidCipherTextException()
    {
    }

    public InvalidCipherTextException(String s)
    {
        super(s);
    }
}
