// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            AccountException

public class AccountNotFoundException extends AccountException
{

    private static final long serialVersionUID = 0x14cb34fd629799d6L;

    public AccountNotFoundException()
    {
    }

    public AccountNotFoundException(String s)
    {
        super(s);
    }
}
