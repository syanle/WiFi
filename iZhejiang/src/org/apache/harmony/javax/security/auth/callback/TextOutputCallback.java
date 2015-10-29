// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.harmony.javax.security.auth.callback;

import java.io.Serializable;

// Referenced classes of package org.apache.harmony.javax.security.auth.callback:
//            Callback

public class TextOutputCallback
    implements Callback, Serializable
{

    public static final int ERROR = 2;
    public static final int INFORMATION = 0;
    public static final int WARNING = 1;
    private static final long serialVersionUID = 0x177251917c1bd1feL;
    private String message;
    private int messageType;

    public TextOutputCallback(int i, String s)
    {
        if (i > 2 || i < 0)
        {
            throw new IllegalArgumentException("auth.16");
        }
        if (s == null || s.length() == 0)
        {
            throw new IllegalArgumentException("auth.1F");
        } else
        {
            messageType = i;
            message = s;
            return;
        }
    }

    public String getMessage()
    {
        return message;
    }

    public int getMessageType()
    {
        return messageType;
    }
}
