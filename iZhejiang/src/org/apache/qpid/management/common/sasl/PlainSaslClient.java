// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.qpid.management.common.sasl;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.harmony.javax.security.auth.callback.Callback;
import org.apache.harmony.javax.security.auth.callback.CallbackHandler;
import org.apache.harmony.javax.security.auth.callback.NameCallback;
import org.apache.harmony.javax.security.auth.callback.PasswordCallback;
import org.apache.harmony.javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.harmony.javax.security.sasl.SaslClient;
import org.apache.harmony.javax.security.sasl.SaslException;

public class PlainSaslClient
    implements SaslClient
{

    private static byte SEPARATOR = 0;
    private String authenticationID;
    private String authorizationID;
    private CallbackHandler cbh;
    private boolean completed;
    private byte password[];

    public PlainSaslClient(String s, CallbackHandler callbackhandler)
        throws SaslException
    {
        completed = false;
        cbh = callbackhandler;
        callbackhandler = ((CallbackHandler) (getUserInfo()));
        authorizationID = s;
        authenticationID = (String)callbackhandler[0];
        password = (byte[])callbackhandler[1];
        if (authenticationID == null || password == null)
        {
            throw new SaslException("PLAIN: authenticationID and password must be specified");
        } else
        {
            return;
        }
    }

    private void clearPassword()
    {
        if (password == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < password.length) goto _L4; else goto _L3
_L3:
        password = null;
_L2:
        return;
_L4:
        password[i] = 0;
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private Object[] getUserInfo()
        throws SaslException
    {
        char ac[];
        String s;
        PasswordCallback passwordcallback;
        try
        {
            NameCallback namecallback = new NameCallback("PLAIN authentication id: ");
            passwordcallback = new PasswordCallback("PLAIN password: ", false);
            cbh.handle(new Callback[] {
                namecallback, passwordcallback
            });
            s = namecallback.getName();
            ac = passwordcallback.getPassword();
        }
        catch (IOException ioexception)
        {
            throw new SaslException("Cannot get password", ioexception);
        }
        catch (UnsupportedCallbackException unsupportedcallbackexception)
        {
            throw new SaslException("Cannot get userid/password", unsupportedcallbackexception);
        }
        if (ac == null) goto _L2; else goto _L1
_L1:
        ac = (new String(ac)).getBytes("UTF8");
        passwordcallback.clearPassword();
_L4:
        return (new Object[] {
            s, ac
        });
_L2:
        ac = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void dispose()
        throws SaslException
    {
        clearPassword();
    }

    public byte[] evaluateChallenge(byte abyte0[])
        throws SaslException
    {
        int i;
        i = 0;
        if (completed)
        {
            throw new IllegalStateException("PLAIN: authentication already completed");
        }
        completed = true;
        if (authorizationID != null) goto _L2; else goto _L1
_L1:
        abyte0 = null;
_L3:
        byte abyte1[];
        byte abyte2[];
        int j;
        int k;
        try
        {
            abyte1 = authenticationID.getBytes("UTF8");
            j = password.length;
            k = abyte1.length;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new SaslException("PLAIN: Cannot get UTF-8 encoding of ids", abyte0);
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        i = abyte0.length;
        abyte2 = new byte[i + (j + k + 2)];
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        System.arraycopy(abyte0, 0, abyte2, 0, abyte0.length);
        i = abyte0.length;
_L4:
        j = i + 1;
        abyte2[i] = SEPARATOR;
        System.arraycopy(abyte1, 0, abyte2, j, abyte1.length);
        i = j + abyte1.length;
        abyte2[i] = SEPARATOR;
        System.arraycopy(password, 0, abyte2, i + 1, password.length);
        clearPassword();
        return abyte2;
_L2:
        abyte0 = authorizationID.getBytes("UTF8");
          goto _L3
        i = 0;
          goto _L4
    }

    protected void finalize()
    {
        clearPassword();
    }

    public String getMechanismName()
    {
        return "PLAIN";
    }

    public Object getNegotiatedProperty(String s)
    {
        if (completed)
        {
            if (s.equals("javax.security.sasl.qop"))
            {
                return "auth";
            } else
            {
                return null;
            }
        } else
        {
            throw new IllegalStateException("PLAIN: authentication not completed");
        }
    }

    public boolean hasInitialResponse()
    {
        return true;
    }

    public boolean isComplete()
    {
        return completed;
    }

    public byte[] unwrap(byte abyte0[], int i, int j)
        throws SaslException
    {
        if (completed)
        {
            throw new IllegalStateException("PLAIN: this mechanism supports neither integrity nor privacy");
        } else
        {
            throw new IllegalStateException("PLAIN: authentication not completed");
        }
    }

    public byte[] wrap(byte abyte0[], int i, int j)
        throws SaslException
    {
        if (completed)
        {
            throw new IllegalStateException("PLAIN: this mechanism supports neither integrity nor privacy");
        } else
        {
            throw new IllegalStateException("PLAIN: authentication not completed");
        }
    }

}
