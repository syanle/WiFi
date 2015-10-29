// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.Log;
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
//            ImageActivity, o, p

class i
    implements IRequestListener
{

    final ImageActivity a;

    i(ImageActivity imageactivity)
    {
        a = imageactivity;
        super();
    }

    private void a(int j, String s)
    {
        ImageActivity.k(a).post(new o(this));
        if (s == null)
        {
            if (j == -2)
            {
                ImageActivity.b(a, "\u7F51\u7EDC\u6709\u95EE\u9898\u5462\uFF0C\u68C0\u67E5\u4E00\u4E0B\u7F51\u7EDC\u518D\u91CD\u8BD5\u5427\uFF1A\uFF09", 1);
            } else
            {
                ImageActivity.b(a, "\u8BBE\u7F6E\u51FA\u9519\u4E86\uFF0C\u8BF7\u91CD\u65B0\u767B\u5F55\u518D\u5C1D\u8BD5\u4E0B\u5462\uFF1A\uFF09", 1);
            }
        } else
        {
            ImageActivity.b(a, s, 1);
        }
        a.a("10660", 0L);
        Log.i("ImageActivity", (new StringBuilder()).append("setAvatar failure, errorCode: ").append(j).toString());
    }

    public void onComplete(JSONObject jsonobject, Object obj)
    {
        ImageActivity.k(a).post(new p(this));
        int j;
        try
        {
            j = jsonobject.getInt("ret");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((JSONException) (obj)).printStackTrace();
            j = -1;
        }
        if (j == 0)
        {
            ImageActivity.b(a, "\u8BBE\u7F6E\u6210\u529F", 0);
            a.a("10658", 0L);
            obj = a;
            if (ImageActivity.l(a) != null && !"".equals(ImageActivity.l(a)))
            {
                Intent intent = new Intent();
                intent.setClassName(((android.content.Context) (obj)), ImageActivity.l(a));
                if (((Activity) (obj)).getPackageManager().resolveActivity(intent, 0) != null)
                {
                    ((Activity) (obj)).startActivity(intent);
                }
            }
            ImageActivity.a(a, 0, jsonobject.toString(), null, null);
            ImageActivity.j(a);
            return;
        } else
        {
            a(j, null);
            return;
        }
    }

    public void onConnectTimeoutException(ConnectTimeoutException connecttimeoutexception, Object obj)
    {
        a(-2, null);
    }

    public void onHttpStatusException(HttpStatusException httpstatusexception, Object obj)
    {
        a(-2, null);
    }

    public void onIOException(IOException ioexception, Object obj)
    {
        ioexception.printStackTrace();
        a(-2, null);
    }

    public void onJSONException(JSONException jsonexception, Object obj)
    {
        jsonexception.printStackTrace();
        a(-1, null);
    }

    public void onMalformedURLException(MalformedURLException malformedurlexception, Object obj)
    {
        malformedurlexception.printStackTrace();
        a(0, null);
    }

    public void onNetworkUnavailableException(NetworkUnavailableException networkunavailableexception, Object obj)
    {
        a(-2, null);
    }

    public void onSocketTimeoutException(SocketTimeoutException sockettimeoutexception, Object obj)
    {
        a(-2, null);
    }

    public void onUnknowException(Exception exception, Object obj)
    {
        a(1, null);
    }
}
