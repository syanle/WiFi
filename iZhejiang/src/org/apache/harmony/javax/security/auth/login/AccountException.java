// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            LoginException

public class AccountException extends LoginException
{

    private static final long serialVersionUID = 0xe2ad8c08f4ccb2b5L;

    public AccountException()
    {
    }

    public AccountException(String s)
    {
        super(s);
    }
}
