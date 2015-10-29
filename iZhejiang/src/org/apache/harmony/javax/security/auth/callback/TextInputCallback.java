// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class TextInputCallback
    implements Callback, Serializable
{

    private static final long serialVersionUID = 0x90162061ae4213e4L;
    private String defaultText;
    private String inputText;
    private String prompt;

    public TextInputCallback(String s)
    {
        setPrompt(s);
    }

    public TextInputCallback(String s, String s1)
    {
        setPrompt(s);
        setDefaultText(s1);
    }

    private void setDefaultText(String s)
    {
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("auth.15");
        } else
        {
            defaultText = s;
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

    public String getDefaultText()
    {
        return defaultText;
    }

    public String getPrompt()
    {
        return prompt;
    }

    public String getText()
    {
        return inputText;
    }

    public void setText(String s)
    {
        inputText = s;
    }
}
