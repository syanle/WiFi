// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jivesoftware.smack.packet;


public class StreamError
{

    private String code;

    public StreamError(String s)
    {
        code = s;
    }

    public String getCode()
    {
        return code;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("stream:error (").append(code).append(")");
        return stringbuilder.toString();
    }
}
