// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


// Referenced classes of package org.jivesoftware.smack.packet:
//            Message

public static class <init>
{

    private String language;
    private String message;

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (this != obj) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (obj == null) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if (getClass() != obj.getClass()) goto _L4; else goto _L5
_L5:
        obj = (<init>)obj;
        if (language == null) goto _L7; else goto _L6
_L6:
        flag = flag1;
        if (!language.equals(((language) (obj)).language)) goto _L4; else goto _L8
_L8:
        return message.equals(((message) (obj)).message);
_L7:
        if (((message) (obj)).language != null)
        {
            return false;
        }
        if (true) goto _L8; else goto _L9
_L9:
    }

    public String getLanguage()
    {
        return language;
    }

    public String getMessage()
    {
        return message;
    }

    public int hashCode()
    {
        int j = message.hashCode();
        int i;
        if (language != null)
        {
            i = language.hashCode();
        } else
        {
            i = 0;
        }
        return j * 31 + i;
    }



    private (String s, String s1)
    {
        if (s == null)
        {
            throw new NullPointerException("Language cannot be null.");
        }
        if (s1 == null)
        {
            throw new NullPointerException("Message cannot be null.");
        } else
        {
            language = s;
            message = s1;
            return;
        }
    }

    message(String s, String s1, message message1)
    {
        this(s, s1);
    }
}
