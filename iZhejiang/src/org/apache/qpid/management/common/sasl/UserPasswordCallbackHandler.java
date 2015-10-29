// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.io.IOException;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;

public class UserPasswordCallbackHandler
    implements CallbackHandler
{

    private char pwchars[];
    private String user;

    public UserPasswordCallbackHandler(String s, String s1)
    {
        user = s;
        pwchars = s1.toCharArray();
    }

    private void clearPassword()
    {
        if (pwchars == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < pwchars.length) goto _L4; else goto _L3
_L3:
        pwchars = null;
_L2:
        return;
_L4:
        pwchars[i] = '\0';
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void finalize()
    {
        clearPassword();
    }

    public void handle(Callback acallback[])
        throws IOException, UnsupportedCallbackException
    {
        int i = 0;
_L2:
        if (i >= acallback.length)
        {
            return;
        }
        if (!(acallback[i] instanceof NameCallback))
        {
            break; /* Loop/switch isn't completed */
        }
        ((NameCallback)acallback[i]).setName(user);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (acallback[i] instanceof PasswordCallback)
        {
            ((PasswordCallback)acallback[i]).setPassword(pwchars);
        } else
        {
            throw new UnsupportedCallbackException(acallback[i]);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
