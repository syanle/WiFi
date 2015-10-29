// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            AccountException

public class AccountLockedException extends AccountException
{

    private static final long serialVersionUID = 0x72e9b269047e569eL;

    public AccountLockedException()
    {
    }

    public AccountLockedException(String s)
    {
        super(s);
    }
}
