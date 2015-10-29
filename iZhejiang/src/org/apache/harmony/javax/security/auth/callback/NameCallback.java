// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class NameCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0x345510db07eb277dL;
    private String defaultName;
    private String inputName;
    private String prompt;

    public NameCallback(String s)
    {
        setPrompt(s);
    }

    public NameCallback(String s, String s1)
    {
        setPrompt(s);
        setDefaultName(s1);
    }

    private void setDefaultName(String s)
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("auth.1E");
        } else
        {
            defaultName = s;
            return;
        }
    }

    private void setPrompt(String s)
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

    public String getDefaultName()
    {
        return defaultName;
    }

    public String getName()
    {
        return inputName;
    }

    public String getPrompt()
    {
        return prompt;
    }

    public void setName(String s)
    {
        inputName = s;
    }
}
