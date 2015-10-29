// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.os.Handler;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.plus:
//            ImageActivity, b

class h
    implements IRequestListener
{

    final ImageActivity a;

    h(ImageActivity imageactivity)
    {
        a = imageactivity;
        super();
    }

    private void a(int i)
    {
        if (ImageActivity.m(a) < 2)
        {
            ImageActivity.n(a);
        }
    }

    public void onComplete(JSONObject jsonobject, Object obj)
    {
        int i = -1;
        int j = jsonobject.getInt("ret");
        if (j != 0) goto _L2; else goto _L1
_L1:
        i = j;
        jsonobject = jsonobject.getString("nickname");
        i = j;
        ImageActivity.k(a).post(new b(this, jsonobject));
        i = j;
        a.a("10659", 0L);
        i = j;
_L4:
        if (i != 0)
        {
            a(i);
        }
        return;
_L2:
        i = j;
        a.a("10661", 0L);
        i = j;
        continue; /* Loop/switch isn't completed */
        jsonobject;
        jsonobject.printStackTrace();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onConnectTimeoutException(ConnectTimeoutException connecttimeoutexception, Object obj)
    {
        a(0);
    }

    public void onHttpStatusException(HttpStatusException httpstatusexception, Object obj)
    {
        a(0);
    }

    public void onIOException(IOException ioexception, Object obj)
    {
        a(0);
    }

    public void onJSONException(JSONException jsonexception, Object obj)
    {
        a(0);
    }

    public void onMalformedURLException(MalformedURLException malformedurlexception, Object obj)
    {
        a(0);
    }

    public void onNetworkUnavailableException(NetworkUnavailableException networkunavailableexception, Object obj)
    {
        a(0);
    }

    public void onSocketTimeoutException(SocketTimeoutException sockettimeoutexception, Object obj)
    {
        a(0);
    }

    public void onUnknowException(Exception exception, Object obj)
    {
        a(0);
    }
}
