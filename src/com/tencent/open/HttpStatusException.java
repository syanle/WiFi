// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;


public class HttpStatusException extends Exception
{

    public static final String ERROR_INFO = "http status code error:";

    public HttpStatusException(String s)
    {
        super(s);
    }
}
