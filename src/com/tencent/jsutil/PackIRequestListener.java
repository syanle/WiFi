// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.jsutil;

import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.sdkutil.JsonUtil;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;

// Referenced classes of package com.tencent.jsutil:
//            JsIRequestListener

public class PackIRequestListener
    implements JsIRequestListener
{

    private IRequestListener mIRequestListener;

    public PackIRequestListener()
    {
    }

    public void onComplete(String s, String s1)
    {
        try
        {
            s = JsonUtil.parseJson((String)TemporaryStorage.get(s));
            mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
            if (mIRequestListener != null)
            {
                mIRequestListener.onComplete(s, null);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void onConnectTimeoutException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new ConnectTimeoutException(s);
            mIRequestListener.onConnectTimeoutException(s, null);
        }
    }

    public void onHttpStatusException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new HttpStatusException(s);
            mIRequestListener.onHttpStatusException(s, null);
        }
    }

    public void onIOException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new IOException(s);
            mIRequestListener.onIOException(s, null);
        }
    }

    public void onJSONException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new JSONException(s);
            mIRequestListener.onJSONException(s, null);
        }
    }

    public void onMalformedURLException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new MalformedURLException(s);
            mIRequestListener.onMalformedURLException(s, null);
        }
    }

    public void onNetworkUnavailableException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new NetworkUnavailableException(s);
            mIRequestListener.onNetworkUnavailableException(s, null);
        }
    }

    public void onSocketTimeoutException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new SocketTimeoutException(s);
            mIRequestListener.onSocketTimeoutException(s, null);
        }
    }

    public void onUnknowException(String s, String s1)
    {
        mIRequestListener = (IRequestListener)TemporaryStorage.get(s1);
        if (mIRequestListener != null)
        {
            s = new Exception(s);
            mIRequestListener.onUnknowException(s, null);
        }
    }
}
