// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONException;

// Referenced classes of package com.tencent.tauth:
//            UploadFileToWeiyun, Tencent

class this._cls0 extends Thread
{

    final UploadFileToWeiyun this$0;

    public void run()
    {
        Object obj = Uri.parse(UploadFileToWeiyun.access$700(UploadFileToWeiyun.this));
        obj = (new StringBuilder()).append(SystemClock.elapsedRealtime()).append("__").append(((Uri) (obj)).getLastPathSegment()).toString();
        Object obj1 = new Bundle();
        ((Bundle) (obj1)).putString("access_token", (new StringBuilder()).append(UploadFileToWeiyun.access$800(UploadFileToWeiyun.this).getAccessToken()).append("").toString());
        ((Bundle) (obj1)).putString("oauth_consumer_key", "222222");
        ((Bundle) (obj1)).putString("openid", (new StringBuilder()).append(UploadFileToWeiyun.access$800(UploadFileToWeiyun.this).getOpenId()).append("").toString());
        ((Bundle) (obj1)).putString("format", "json");
        ((Bundle) (obj1)).putString("sha", str_file_key);
        ((Bundle) (obj1)).putString("md5", UploadFileToWeiyun.access$900(UploadFileToWeiyun.this));
        ((Bundle) (obj1)).putString("size", (new StringBuilder()).append(UploadFileToWeiyun.access$1000(UploadFileToWeiyun.this)).append("").toString());
        ((Bundle) (obj1)).putString("name", ((String) (obj)));
        ((Bundle) (obj1)).putString("upload_type", "control");
        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun getUploadPermission parames = ").append(((Bundle) (obj1)).toString()).toString());
        try
        {
            obj = UploadFileToWeiyun.access$800(UploadFileToWeiyun.this).request(UploadFileToWeiyun.access$1100(UploadFileToWeiyun.this), ((Bundle) (obj1)), "GET");
            obj1 = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            obj1.what = 0;
            obj1.obj = obj;
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(((Message) (obj1)));
            return;
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            malformedurlexception = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            malformedurlexception.what = -1;
            malformedurlexception.obj = "getUploadPermission MalformedURLException";
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(malformedurlexception);
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            ioexception = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            ioexception.what = -1;
            ioexception.obj = "getUploadPermission IOException";
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(ioexception);
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            jsonexception = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            jsonexception.what = -1;
            jsonexception.obj = "getUploadPermission JSONException";
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(jsonexception);
            return;
        }
        catch (NetworkUnavailableException networkunavailableexception)
        {
            networkunavailableexception.printStackTrace();
            networkunavailableexception = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
            networkunavailableexception.what = -1;
            networkunavailableexception.obj = "getUploadPermission NetworkUnavailableException";
            UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(networkunavailableexception);
            return;
        }
        catch (HttpStatusException httpstatusexception)
        {
            httpstatusexception.printStackTrace();
        }
        httpstatusexception = UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).obtainMessage();
        httpstatusexception.what = -1;
        httpstatusexception.obj = "getUploadPermission HttpStatusException";
        UploadFileToWeiyun.access$1200(UploadFileToWeiyun.this).sendMessage(httpstatusexception);
    }

    ption()
    {
        this$0 = UploadFileToWeiyun.this;
        super();
    }
}
