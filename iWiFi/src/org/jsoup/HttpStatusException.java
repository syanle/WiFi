// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup;

import java.io.IOException;

public class HttpStatusException extends IOException
{

    private int statusCode;
    private String url;

    public HttpStatusException(String s, int i, String s1)
    {
        super(s);
        statusCode = i;
        url = s1;
    }

    public int getStatusCode()
    {
        return statusCode;
    }

    public String getUrl()
    {
        return url;
    }

    public String toString()
    {
        return (new StringBuilder()).append(super.toString()).append(". Status=").append(statusCode).append(", URL=").append(url).toString();
    }
}
