// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.httpclient.auth;


// Referenced classes of package org.apache.commons.httpclient.auth:
//            AuthenticationException

public class InvalidCredentialsException extends AuthenticationException
{

    public InvalidCredentialsException()
    {
    }

    public InvalidCredentialsException(String s)
    {
        super(s);
    }

    public InvalidCredentialsException(String s, Throwable throwable)
    {
        super(s, throwable);
    }
}
