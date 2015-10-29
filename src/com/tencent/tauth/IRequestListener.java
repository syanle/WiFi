// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public interface IRequestListener
{

    public abstract void onComplete(JSONObject jsonobject, Object obj);

    public abstract void onConnectTimeoutException(ConnectTimeoutException connecttimeoutexception, Object obj);

    public abstract void onHttpStatusException(HttpStatusException httpstatusexception, Object obj);

    public abstract void onIOException(IOException ioexception, Object obj);

    public abstract void onJSONException(JSONException jsonexception, Object obj);

    public abstract void onMalformedURLException(MalformedURLException malformedurlexception, Object obj);

    public abstract void onNetworkUnavailableException(NetworkUnavailableException networkunavailableexception, Object obj);

    public abstract void onSocketTimeoutException(SocketTimeoutException sockettimeoutexception, Object obj);

    public abstract void onUnknowException(Exception exception, Object obj);
}
