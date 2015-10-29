// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;


// Referenced classes of package org.apache.harmony.javax.security.sasl:
//            SaslException

public class AuthenticationException extends SaslException
{

    private static final long serialVersionUID = 0xce5251d8228acea1L;

    public AuthenticationException()
    {
    }

    public AuthenticationException(String s)
    {
        super(s);
    }

    public AuthenticationException(String s, Throwable throwable)
    {
        super(s, throwable);
    }
}
