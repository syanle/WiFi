// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;
import java.util.Arrays;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class PasswordCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0x1f7780e27139c5e6L;
    boolean echoOn;
    private char inputPassword[];
    private String prompt;

    public PasswordCallback(String s, boolean flag)
    {
        setPrompt(s);
        echoOn = flag;
    }

    private void setPrompt(String s)
        throws IllegalArgumentException
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("auth.14");
        } else
        {
            prompt = s;
            return;
        }
    }

    public void clearPassword()
    {
        if (inputPassword != null)
        {
            Arrays.fill(inputPassword, '\0');
        }
    }

    public char[] getPassword()
    {
        if (inputPassword != null)
        {
            char ac[] = new char[inputPassword.length];
            System.arraycopy(inputPassword, 0, ac, 0, ac.length);
            return ac;
        } else
        {
            return null;
        }
    }

    public String getPrompt()
    {
        return prompt;
    }

    public boolean isEchoOn()
    {
        return echoOn;
    }

    public void setPassword(char ac[])
    {
        if (ac == null)
        {
            inputPassword = ac;
            return;
        } else
        {
            inputPassword = new char[ac.length];
            System.arraycopy(ac, 0, inputPassword, 0, inputPassword.length);
            return;
        }
    }
}
