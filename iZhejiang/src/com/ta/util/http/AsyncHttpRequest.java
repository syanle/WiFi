// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import java.io.File;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.ta.util.http:
//            BinaryHttpResponseHandler, FileHttpResponseHandler, AsyncHttpResponseHandler

public class AsyncHttpRequest
    implements Runnable
{

    private final AbstractHttpClient client;
    private final HttpContext context;
    private int executionCount;
    private boolean isBinaryRequest;
    private final HttpUriRequest request;
    private final AsyncHttpResponseHandler responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstracthttpclient, HttpContext httpcontext, HttpUriRequest httpurirequest, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        client = abstracthttpclient;
        context = httpcontext;
        request = httpurirequest;
        responseHandler = asynchttpresponsehandler;
        if (asynchttpresponsehandler instanceof BinaryHttpResponseHandler)
        {
            isBinaryRequest = true;
        } else
        if (asynchttpresponsehandler instanceof FileHttpResponseHandler)
        {
            abstracthttpclient = (FileHttpResponseHandler)asynchttpresponsehandler;
            httpcontext = abstracthttpclient.getTempFile();
            if (httpcontext.exists())
            {
                long l = httpcontext.length();
                abstracthttpclient.setPreviousFileSize(l);
                request.setHeader("RANGE", (new StringBuilder("bytes=")).append(l).append("-").toString());
                return;
            }
        }
    }

    private void makeRequest()
        throws IOException
    {
        if (Thread.currentThread().isInterrupted())
        {
            break MISSING_BLOCK_LABEL_49;
        }
        org.apache.http.HttpResponse httpresponse = client.execute(request, context);
        if (!Thread.currentThread().isInterrupted() && responseHandler != null)
        {
            responseHandler.sendResponseMessage(httpresponse);
        }
_L1:
        return;
        IOException ioexception;
        ioexception;
        if (!Thread.currentThread().isInterrupted())
        {
            throw ioexception;
        }
          goto _L1
    }

    private void makeRequestWithRetries()
        throws ConnectException
    {
        Object obj;
        Object obj2;
        boolean flag;
        flag = true;
        obj = null;
        obj2 = client.getHttpRequestRetryHandler();
_L5:
        if (!flag)
        {
            obj2 = new ConnectException();
            ((ConnectException) (obj2)).initCause(((Throwable) (obj)));
            throw obj2;
        }
        makeRequest();
_L2:
        return;
        Object obj1;
        obj1;
        if (responseHandler == null) goto _L2; else goto _L1
_L1:
        responseHandler.sendFailureMessage(((Throwable) (obj1)), "can't resolve host");
        return;
        obj1;
        if (responseHandler == null) goto _L2; else goto _L3
_L3:
        responseHandler.sendFailureMessage(((Throwable) (obj1)), "can't resolve host");
        return;
        obj1;
        if (responseHandler != null)
        {
            responseHandler.sendFailureMessage(((Throwable) (obj1)), "socket time out");
            return;
        }
          goto _L2
        obj1;
        int i = executionCount + 1;
        executionCount = i;
        flag = ((HttpRequestRetryHandler) (obj2)).retryRequest(((IOException) (obj1)), i, context);
        continue; /* Loop/switch isn't completed */
        obj1;
        obj1 = new IOException((new StringBuilder("NPE in HttpClient")).append(((NullPointerException) (obj1)).getMessage()).toString());
        int j = executionCount + 1;
        executionCount = j;
        flag = ((HttpRequestRetryHandler) (obj2)).retryRequest(((IOException) (obj1)), j, context);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void run()
    {
        if (responseHandler != null)
        {
            responseHandler.sendStartMessage();
        }
        makeRequestWithRetries();
        if (responseHandler != null)
        {
            responseHandler.sendFinishMessage();
        }
_L1:
        return;
        IOException ioexception;
        ioexception;
        if (responseHandler != null)
        {
            responseHandler.sendFinishMessage();
            if (isBinaryRequest)
            {
                responseHandler.sendFailureMessage(ioexception, null);
                return;
            } else
            {
                responseHandler.sendFailureMessage(ioexception, null);
                return;
            }
        }
          goto _L1
    }
}
