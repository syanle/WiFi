// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta;

import android.os.Message;
import com.ta.util.http.AsyncHttpResponseHandler;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

// Referenced classes of package com.ta:
//            TASyncHttpClient

class ResponseHandler extends AsyncHttpResponseHandler
{

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
        TASyncHttpClient.access$0(TASyncHttpClient.this, httpresponse.getStatusLine().getStatusCode());
        super.sendResponseMessage(httpresponse);
    }

    se()
    {
        this$0 = TASyncHttpClient.this;
        super();
    }
}
