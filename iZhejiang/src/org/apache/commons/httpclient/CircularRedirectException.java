// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.httpclient;


// Referenced classes of package org.apache.commons.httpclient:
//            RedirectException

public class CircularRedirectException extends RedirectException
{

    public CircularRedirectException()
    {
    }

    public CircularRedirectException(String s)
    {
        super(s);
    }

    public CircularRedirectException(String s, Throwable throwable)
    {
        super(s, throwable);
    }
}
