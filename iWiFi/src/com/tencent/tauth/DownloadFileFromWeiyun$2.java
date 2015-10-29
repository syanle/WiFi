// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONException;

// Referenced classes of package com.tencent.tauth:
//            DownloadFileFromWeiyun, Tencent

class this._cls0 extends Thread
{

    final DownloadFileFromWeiyun this$0;

    public void run()
    {
        Object obj = new Bundle();
        ((Bundle) (obj)).putString("oauth_consumer_key", "222222");
        ((Bundle) (obj)).putString("file_id", DownloadFileFromWeiyun.access$1100(DownloadFileFromWeiyun.this));
        ((Bundle) (obj)).putString("access_token", (new StringBuilder()).append(DownloadFileFromWeiyun.access$1200(DownloadFileFromWeiyun.this).getAccessToken()).append("").toString());
        ((Bundle) (obj)).putString("openid", (new StringBuilder()).append(DownloadFileFromWeiyun.access$1200(DownloadFileFromWeiyun.this).getOpenId()).append("").toString());
        ((Bundle) (obj)).putString("format", "json");
        if (DownloadFileFromWeiyun.access$600(DownloadFileFromWeiyun.this) != null && DownloadFileFromWeiyun.access$600(DownloadFileFromWeiyun.this).length() > 0)
        {
            ((Bundle) (obj)).putString("thumb", (new StringBuilder()).append(DownloadFileFromWeiyun.access$600(DownloadFileFromWeiyun.this)).append("").toString());
        }
        try
        {
            obj = DownloadFileFromWeiyun.access$1200(DownloadFileFromWeiyun.this).request(DownloadFileFromWeiyun.access$1300(DownloadFileFromWeiyun.this), ((Bundle) (obj)), "GET");
            Message message = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            message.what = 0;
            message.obj = obj;
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(message);
            return;
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            malformedurlexception = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            malformedurlexception.what = 3;
            malformedurlexception.obj = "getUploadPermission MalformedURLException";
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(malformedurlexception);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            ioexception = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            ioexception.what = 3;
            ioexception.obj = "getUploadPermission IOException";
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(ioexception);
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            jsonexception = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            jsonexception.what = 3;
            jsonexception.obj = "getUploadPermission JSONException";
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(jsonexception);
            return;
        }
        catch (NetworkUnavailableException networkunavailableexception)
        {
            networkunavailableexception.printStackTrace();
            networkunavailableexception = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
            networkunavailableexception.what = 3;
            networkunavailableexception.obj = "getUploadPermission NetworkUnavailableException";
            DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(networkunavailableexception);
            return;
        }
        catch (HttpStatusException httpstatusexception)
        {
            httpstatusexception.printStackTrace();
        }
        httpstatusexception = DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).obtainMessage();
        httpstatusexception.what = 3;
        httpstatusexception.obj = "getUploadPermission HttpStatusException";
        DownloadFileFromWeiyun.access$1400(DownloadFileFromWeiyun.this).sendMessage(httpstatusexception);
    }

    n()
    {
        this$0 = DownloadFileFromWeiyun.this;
        super();
    }
}
