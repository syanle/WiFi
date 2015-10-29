// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.login;


// Referenced classes of package org.apache.harmony.javax.security.auth.login:
//            CredentialException

public class CredentialNotFoundException extends CredentialException
{

    private static final long serialVersionUID = 0x94081ed269df608dL;

    public CredentialNotFoundException()
    {
    }

    public CredentialNotFoundException(String s)
    {
        super(s);
    }
}
