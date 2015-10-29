// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import android.content.Context;
import android.os.Message;
import com.ta.util.http.AsyncHttpClient;
import com.ta.util.http.AsyncHttpRequest;
import com.ta.util.http.AsyncHttpResponseHandler;
import com.ta.util.http.RequestParams;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HttpContext;

public class TASyncHttpClient extends AsyncHttpClient
{

    private int responseCode;
    protected AsyncHttpResponseHandler responseHandler;
    protected String result;

    public TASyncHttpClient()
    {
        responseHandler = new AsyncHttpResponseHandler() {

            final TASyncHttpClient this$0;

            public void onFailure(Throwable throwable, String s)
            {
                result = onRequestFailed(throwable, s);
            }

            public void onSuccess(String s)
            {
                result = s;
            }

            protected void sendMessage(Message message)
            {
                handleMessage(message);
            }

            protected void sendResponseMessage(HttpResponse httpresponse)
            {
                responseCode = httpresponse.getStatusLine().getStatusCode();
                super.sendResponseMessage(httpresponse);
            }

            
            {
                this$0 = TASyncHttpClient.this;
                super();
            }
        };
    }

    public String delete(String s)
    {
        delete(s, null, responseHandler);
        return result;
    }

    public String delete(String s, RequestParams requestparams)
    {
        delete(s, requestparams, responseHandler);
        return result;
    }

    public void delete(String s, RequestParams requestparams, AsyncHttpResponseHandler asynchttpresponsehandler)
    {
        delete(s, asynchttpresponsehandler);
    }

    public String get(String s)
    {
        get(s, null, responseHandler);
        return result;
    }

    public String get(String s, RequestParams requestparams)
    {
        get(s, requestparams, responseHandler);
        return result;
    }

    public int getResponseCode()
    {
        return responseCode;
    }

    public String onRequestFailed(Throwable throwable, String s)
    {
        return "";
    }

    public String post(String s)
    {
        post(s, null, responseHandler);
        return result;
    }

    public String post(String s, RequestParams requestparams)
    {
        post(s, requestparams, responseHandler);
        return result;
    }

    public String postL(String s, List list)
    {
        postL(s, list, responseHandler);
        return result;
    }

    public String put(String s)
    {
        put(s, null, responseHandler);
        return result;
    }

    public String put(String s, RequestParams requestparams)
    {
        put(s, requestparams, responseHandler);
        return result;
    }

    protected void sendRequest(DefaultHttpClient defaulthttpclient, HttpContext httpcontext, HttpUriRequest httpurirequest, String s, AsyncHttpResponseHandler asynchttpresponsehandler, Context context)
    {
        if (s != null)
        {
            httpurirequest.addHeader("Content-Type", s);
        }
        (new AsyncHttpRequest(defaulthttpclient, httpcontext, httpurirequest, asynchttpresponsehandler)).run();
    }

}
