// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth;

import java.security.BasicPermission;

public final class AuthPermission extends BasicPermission
{

    private static final String CREATE_LOGIN_CONTEXT = "createLoginContext";
    private static final String CREATE_LOGIN_CONTEXT_ANY = "createLoginContext.*";
    private static final long serialVersionUID = 0x50932ad66da4d0e6L;

    public AuthPermission(String s)
    {
        super(init(s));
    }

    public AuthPermission(String s, String s1)
    {
        super(init(s), s1);
    }

    private static String init(String s)
    {
        if (s == null)
        {
            throw new NullPointerException("auth.13");
        }
        String s1 = s;
        if ("createLoginContext".equals(s))
        {
            s1 = "createLoginContext.*";
        }
        return s1;
    }
}
