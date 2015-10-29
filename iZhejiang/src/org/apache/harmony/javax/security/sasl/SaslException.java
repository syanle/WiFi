// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;

import java.io.IOException;

public class SaslException extends IOException
{

    private static final long serialVersionUID = 0x3f8ea98b912ad08aL;
    private Throwable _exception;

    public SaslException()
    {
    }

    public SaslException(String s)
    {
        super(s);
    }

    public SaslException(String s, Throwable throwable)
    {
        super(s);
        if (throwable != null)
        {
            super.initCause(throwable);
            _exception = throwable;
        }
    }

    public Throwable getCause()
    {
        return _exception;
    }

    public Throwable initCause(Throwable throwable)
    {
        super.initCause(throwable);
        _exception = throwable;
        return this;
    }

    public String toString()
    {
        if (_exception == null)
        {
            return super.toString();
        } else
        {
            StringBuilder stringbuilder = new StringBuilder(super.toString());
            stringbuilder.append(", caused by: ");
            stringbuilder.append(_exception.toString());
            return stringbuilder.toString();
        }
    }
}
