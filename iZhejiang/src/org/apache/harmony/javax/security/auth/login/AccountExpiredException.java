// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            AccountException

public class AccountExpiredException extends AccountException
{

    private static final long serialVersionUID = 0xabd81d1c76efb748L;

    public AccountExpiredException()
    {
    }

    public AccountExpiredException(String s)
    {
        super(s);
    }
}
