// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.bouncycastle.openssl;

import java.io.IOException;

public class PEMException extends IOException
{

    Exception underlying;

    public PEMException(String s)
    {
        super(s);
    }

    public PEMException(String s, Exception exception)
    {
        super(s);
        underlying = exception;
    }

    public Throwable getCause()
    {
        return underlying;
    }

    public Exception getUnderlyingException()
    {
        return underlying;
    }
}
