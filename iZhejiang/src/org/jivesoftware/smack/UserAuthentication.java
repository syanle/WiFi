// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack;

import org.apache.harmony.javax.security.auth.callback.CallbackHandler;

// Referenced classes of package org.jivesoftware.smack:
//            XMPPException

interface UserAuthentication
{

    public abstract String authenticate(String s, String s1, String s2)
        throws XMPPException;

    public abstract String authenticate(String s, String s1, CallbackHandler callbackhandler)
        throws XMPPException;

    public abstract String authenticateAnonymously()
        throws XMPPException;
}
