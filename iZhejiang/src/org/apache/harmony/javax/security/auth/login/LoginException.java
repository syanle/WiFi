// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;

import java.security.GeneralSecurityException;

public class LoginException extends GeneralSecurityException
{

    private static final long serialVersionUID = 0xbf1086f575dfd518L;

    public LoginException()
    {
    }

    public LoginException(String s)
    {
        super(s);
    }
}
