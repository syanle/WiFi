// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;


public class NetworkUnavailableException extends Exception
{

    public static final String ERROR_INFO = "network unavailable";

    public NetworkUnavailableException(String s)
    {
        super(s);
    }
}
