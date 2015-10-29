// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup;

import java.io.IOException;

public class UnsupportedMimeTypeException extends IOException
{

    private String mimeType;
    private String url;

    public UnsupportedMimeTypeException(String s, String s1, String s2)
    {
        super(s);
        mimeType = s1;
        url = s2;
    }

    public String getMimeType()
    {
        return mimeType;
    }

    public String getUrl()
    {
        return url;
    }

    public String toString()
    {
        return (new StringBuilder()).append(super.toString()).append(". Mimetype=").append(mimeType).append(", URL=").append(url).toString();
    }
}
