// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            Tokenizer

public static class <init>
{

    public int type;
    public String value;

    private <init> set(int i, StringBuffer stringbuffer)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException();
        }
        type = i;
        if (stringbuffer == null)
        {
            stringbuffer = null;
        } else
        {
            stringbuffer = stringbuffer.toString();
        }
        value = stringbuffer;
        return this;
    }

    public boolean isEOL()
    {
        boolean flag1 = true;
        boolean flag = flag1;
        if (type != 1)
        {
            flag = flag1;
            if (type != 0)
            {
                flag = false;
            }
        }
        return flag;
    }

    public boolean isString()
    {
        return type == 3 || type == 4;
    }

    public String toString()
    {
        switch (type)
        {
        default:
            return "<unknown>";

        case 0: // '\0'
            return "<eof>";

        case 1: // '\001'
            return "<eol>";

        case 2: // '\002'
            return "<whitespace>";

        case 3: // '\003'
            return (new StringBuilder("<identifier: ")).append(value).append(">").toString();

        case 4: // '\004'
            return (new StringBuilder("<quoted_string: ")).append(value).append(">").toString();

        case 5: // '\005'
            return (new StringBuilder("<comment: ")).append(value).append(">").toString();
        }
    }


    private tion()
    {
        type = -1;
        value = null;
    }

    value(value value1)
    {
        this();
    }
}
