// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.os.Bundle;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IRequestListener;
import com.tencent.tauth.QQToken;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;

// Referenced classes of package com.tencent.sdkutil:
//            HttpUtils

final class val.object extends Thread
{

    final Context val$ctx;
    final String val$graphPath;
    final String val$httpMethod;
    final IRequestListener val$listener;
    final Object val$object;
    final Bundle val$params;
    final QQToken val$token;

    public void run()
    {
        org.json.JSONObject jsonobject = HttpUtils.access$100(val$token, val$ctx, val$graphPath, val$params, val$httpMethod);
        if (val$listener != null)
        {
            val$listener.onComplete(jsonobject, val$object);
            WnsClientLog.getInstance().d("openSDK_LOG", "OpenApi onComplete");
        }
_L2:
        return;
        Object obj;
        obj;
        if (val$listener == null) goto _L2; else goto _L1
_L1:
        val$listener.onMalformedURLException(((MalformedURLException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync MalformedURLException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L3
_L3:
        val$listener.onConnectTimeoutException(((ConnectTimeoutException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onConnectTimeoutException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L4
_L4:
        val$listener.onSocketTimeoutException(((SocketTimeoutException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onSocketTimeoutException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L5
_L5:
        val$listener.onNetworkUnavailableException(((NetworkUnavailableException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onNetworkUnavailableException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L6
_L6:
        val$listener.onHttpStatusException(((HttpStatusException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onHttpStatusException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L7
_L7:
        val$listener.onIOException(((IOException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync IOException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener == null) goto _L2; else goto _L8
_L8:
        val$listener.onJSONException(((JSONException) (obj)), val$object);
        WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync JSONException", ((Throwable) (obj)));
        return;
        obj;
        if (val$listener != null)
        {
            val$listener.onUnknowException(((Exception) (obj)), val$object);
            WnsClientLog.getInstance().e("openSDK_LOG", "OpenApi requestAsync onUnknowException", ((Throwable) (obj)));
            return;
        }
          goto _L2
    }

    er()
    {
        val$token = qqtoken;
        val$ctx = context;
        val$graphPath = s;
        val$params = bundle;
        val$httpMethod = s1;
        val$listener = irequestlistener;
        val$object = obj;
        super();
    }
}
