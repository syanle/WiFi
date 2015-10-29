// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;

public class UsernameHashedPasswordCallbackHandler
    implements CallbackHandler
{

    private char pwchars[];
    private String user;

    public UsernameHashedPasswordCallbackHandler(String s, String s1)
        throws Exception
    {
        user = s;
        pwchars = getHash(s1);
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

    public static char[] getHash(String s)
        throws NoSuchAlgorithmException, UnsupportedEncodingException
    {
        char ac[];
        int i;
        int j;
        int k;
        j = 0;
        s = s.getBytes("utf-8");
        ac = MessageDigest.getInstance("MD5");
        k = s.length;
        i = 0;
_L3:
        if (i < k) goto _L2; else goto _L1
_L1:
        s = ac.digest();
        ac = new char[s.length];
        k = s.length;
        i = 0;
_L4:
        if (j >= k)
        {
            return ac;
        }
        break MISSING_BLOCK_LABEL_65;
_L2:
        ac.update(s[i]);
        i++;
          goto _L3
        ac[i] = (char)s[j];
        j++;
        i++;
          goto _L4
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
