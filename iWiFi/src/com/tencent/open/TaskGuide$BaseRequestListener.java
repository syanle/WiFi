// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;

// Referenced classes of package com.tencent.open:
//            TaskGuide, HttpStatusException, NetworkUnavailableException

abstract class <init>
    implements IRequestListener
{

    final TaskGuide this$0;

    protected abstract void handleException(Exception exception);

    public void onConnectTimeoutException(ConnectTimeoutException connecttimeoutexception, Object obj)
    {
        handleException(connecttimeoutexception);
    }

    public void onHttpStatusException(HttpStatusException httpstatusexception, Object obj)
    {
        handleException(httpstatusexception);
    }

    public void onIOException(IOException ioexception, Object obj)
    {
        handleException(ioexception);
    }

    public void onJSONException(JSONException jsonexception, Object obj)
    {
        handleException(jsonexception);
    }

    public void onMalformedURLException(MalformedURLException malformedurlexception, Object obj)
    {
        handleException(malformedurlexception);
    }

    public void onNetworkUnavailableException(NetworkUnavailableException networkunavailableexception, Object obj)
    {
        handleException(networkunavailableexception);
    }

    public void onSocketTimeoutException(SocketTimeoutException sockettimeoutexception, Object obj)
    {
        handleException(sockettimeoutexception);
    }

    public void onUnknowException(Exception exception, Object obj)
    {
        handleException(exception);
    }

    private ()
    {
        this$0 = TaskGuide.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
