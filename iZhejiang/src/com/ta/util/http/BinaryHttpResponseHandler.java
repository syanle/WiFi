// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.os.Message;
import java.io.IOException;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.ta.util.http:
//            AsyncHttpResponseHandler

public class BinaryHttpResponseHandler extends AsyncHttpResponseHandler
{

    private static String mAllowedContentTypes[] = {
        "image/jpeg", "image/png"
    };

    public BinaryHttpResponseHandler()
    {
    }

    public BinaryHttpResponseHandler(String as[])
    {
        this();
        mAllowedContentTypes = as;
    }

    protected void handleFailureMessage(Throwable throwable, byte abyte0[])
    {
        onFailure(throwable, abyte0);
    }

    protected void handleMessage(Message message)
    {
        switch (message.what)
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            super.handleMessage(message);
            return;

        case 4: // '\004'
            message = ((Message) ((Object[])message.obj));
            handleSuccessMessage(((Integer)message[0]).intValue(), (byte[])message[1]);
            return;

        case 1: // '\001'
            message = ((Message) ((Object[])message.obj));
            handleFailureMessage((Throwable)message[0], message[1].toString());
            return;
        }
    }

    protected void handleSuccessMessage(int i, byte abyte0[])
    {
        onSuccess(i, abyte0);
    }

    public void onFailure(Throwable throwable, byte abyte0[])
    {
        onFailure(throwable);
    }

    public void onSuccess(int i, byte abyte0[])
    {
        onSuccess(abyte0);
    }

    public void onSuccess(byte abyte0[])
    {
    }

    protected void sendFailureMessage(Throwable throwable, byte abyte0[])
    {
        sendMessage(obtainMessage(1, ((Object) (new Object[] {
            throwable, abyte0
        }))));
    }

    protected void sendResponseMessage(HttpResponse httpresponse)
    {
        Object obj;
        Header aheader[];
        StatusLine statusline;
        int i = 0;
        statusline = httpresponse.getStatusLine();
        aheader = httpresponse.getHeaders("Content-Type");
        obj = null;
        if (aheader.length != 1)
        {
            sendFailureMessage(new HttpResponseException(statusline.getStatusCode(), "None, or more than one, Content-Type Header found!"), null);
            return;
        }
        Header header = aheader[0];
        boolean flag = false;
        String as[] = mAllowedContentTypes;
        int j = as.length;
        do
        {
            if (i >= j)
            {
                if (!flag)
                {
                    sendFailureMessage(new HttpResponseException(statusline.getStatusCode(), "Content-Type not allowed!"), null);
                    return;
                }
                break;
            }
            if (Pattern.matches(as[i], header.getValue()))
            {
                flag = true;
            }
            i++;
        } while (true);
        header = null;
        org.apache.http.HttpEntity httpentity = httpresponse.getEntity();
        httpresponse = header;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        httpresponse = new BufferedHttpEntity(httpentity);
        httpresponse = EntityUtils.toByteArray(httpresponse);
_L1:
        if (statusline.getStatusCode() >= 300)
        {
            sendFailureMessage(new HttpResponseException(statusline.getStatusCode(), statusline.getReasonPhrase()), httpresponse);
            return;
        } else
        {
            sendSuccessMessage(statusline.getStatusCode(), httpresponse);
            return;
        }
        httpresponse;
        sendFailureMessage(httpresponse, null);
        httpresponse = obj;
          goto _L1
    }

    protected void sendSuccessMessage(int i, byte abyte0[])
    {
        sendMessage(obtainMessage(4, ((Object) (new Object[] {
            Integer.valueOf(i), abyte0
        }))));
    }

}
