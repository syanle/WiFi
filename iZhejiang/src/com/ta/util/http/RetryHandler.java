// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class RetryHandler
    implements HttpRequestRetryHandler
{

    private static final int RETRY_SLEEP_TIME_MILLIS = 1500;
    private static HashSet exceptionBlacklist;
    private static HashSet exceptionWhitelist;
    private final int maxRetries;

    public RetryHandler(int i)
    {
        maxRetries = i;
    }

    protected boolean isInList(HashSet hashset, Throwable throwable)
    {
        hashset = hashset.iterator();
        do
        {
            if (!hashset.hasNext())
            {
                return false;
            }
        } while (!((Class)hashset.next()).isInstance(throwable));
        return true;
    }

    public boolean retryRequest(IOException ioexception, int i, HttpContext httpcontext)
    {
        boolean flag1 = true;
        Boolean boolean1 = (Boolean)httpcontext.getAttribute("http.request_sent");
        boolean flag;
        boolean flag2;
        if (boolean1 != null && boolean1.booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i > maxRetries)
        {
            flag1 = false;
        } else
        if (isInList(exceptionBlacklist, ioexception))
        {
            flag1 = false;
        } else
        if (isInList(exceptionWhitelist, ioexception))
        {
            flag1 = true;
        } else
        if (!flag)
        {
            flag1 = true;
        }
        flag2 = flag1;
        if (flag1)
        {
            if (((HttpUriRequest)httpcontext.getAttribute("http.request")).getMethod().equals("POST"))
            {
                flag2 = false;
            } else
            {
                flag2 = true;
            }
        }
        if (flag2)
        {
            SystemClock.sleep(1500L);
            return flag2;
        } else
        {
            ioexception.printStackTrace();
            return flag2;
        }
    }

    static 
    {
        exceptionWhitelist = new HashSet();
        exceptionBlacklist = new HashSet();
        exceptionWhitelist.add(org/apache/http/NoHttpResponseException);
        exceptionWhitelist.add(java/net/UnknownHostException);
        exceptionWhitelist.add(java/net/SocketException);
        exceptionBlacklist.add(java/io/InterruptedIOException);
        exceptionBlacklist.add(javax/net/ssl/SSLException);
    }
}
