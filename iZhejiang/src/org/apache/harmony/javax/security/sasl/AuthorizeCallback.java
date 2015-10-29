// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.sasl;

import java.io.Serializable;
import org.apache.harmony.javax.security.auth.callback.Callback;

public class AuthorizeCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0xdf573dee52013e6bL;
    private final String authenticationID;
    private final String authorizationID;
    private boolean authorized;
    private String authorizedID;

    public AuthorizeCallback(String s, String s1)
    {
        authenticationID = s;
        authorizationID = s1;
        authorizedID = s1;
    }

    public String getAuthenticationID()
    {
        return authenticationID;
    }

    public String getAuthorizationID()
    {
        return authorizationID;
    }

    public String getAuthorizedID()
    {
        if (authorized)
        {
            return authorizedID;
        } else
        {
            return null;
        }
    }

    public boolean isAuthorized()
    {
        return authorized;
    }

    public void setAuthorized(boolean flag)
    {
        authorized = flag;
    }

    public void setAuthorizedID(String s)
    {
        if (s != null)
        {
            authorizedID = s;
        }
    }
}
