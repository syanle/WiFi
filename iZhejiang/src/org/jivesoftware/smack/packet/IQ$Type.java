// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;

import java.io.Serializable;

// Referenced classes of package org.jivesoftware.smack.packet:
//            IQ

public static class value
    implements Serializable
{

    public static final value ERROR = new <init>("error");
    public static final <init> GET = new <init>("get");
    public static final <init> RESULT = new <init>("result");
    public static final <init> SET = new <init>("set");
    private String value;

    public static value fromString(String s)
    {
        if (s != null)
        {
            s = s.toLowerCase();
            if (GET.toString().equals(s))
            {
                return GET;
            }
            if (SET.toString().equals(s))
            {
                return SET;
            }
            if (ERROR.toString().equals(s))
            {
                return ERROR;
            }
            if (RESULT.toString().equals(s))
            {
                return RESULT;
            }
        }
        return null;
    }

    public String toString()
    {
        return value;
    }


    private (String s)
    {
        value = s;
    }
}
