// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            CredentialException

public class CredentialExpiredException extends CredentialException
{

    private static final long serialVersionUID = 0xb5d3aba8330656afL;

    public CredentialExpiredException()
    {
    }

    public CredentialExpiredException(String s)
    {
        super(s);
    }
}
