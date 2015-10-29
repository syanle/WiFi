// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.xbill.DNS;


// Referenced classes of package org.xbill.DNS:
//            TextParseException, Tokenizer

static class message extends TextParseException
{

    String message;

    public String getBaseMessage()
    {
        return message;
    }

    public (String s, int i, String s1)
    {
        super((new StringBuilder(String.valueOf(s))).append(":").append(i).append(": ").append(s1).toString());
        message = s1;
    }
}
