// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.protobuf;


public class ServiceException extends Exception
{

    private static final long serialVersionUID = 0xef144f5d96ce85b0L;

    public ServiceException(String s)
    {
        super(s);
    }

    public ServiceException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public ServiceException(Throwable throwable)
    {
        super(throwable);
    }
}
