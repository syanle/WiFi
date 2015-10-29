// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            DownloadFileFromWeiyun, IDownloadFileFromWeiyunStatus

class this._cls0 extends Handler
{

    final DownloadFileFromWeiyun this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 3: default 36
    //                   0 37
    //                   1 235
    //                   2 283
    //                   3 308;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        message = (JSONObject)message.obj;
        int i = message.getInt("ret");
        if (i == 0) goto _L7; else goto _L6
_L6:
        try
        {
            DownloadFileFromWeiyun.access$000(DownloadFileFromWeiyun.this).onError((new StringBuilder()).append("server error, ret = ").append(i).append("").toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            message.printStackTrace();
        }
_L8:
        DownloadFileFromWeiyun.access$000(DownloadFileFromWeiyun.this).onDownloadStart();
        DownloadFileFromWeiyun.access$800(DownloadFileFromWeiyun.this);
        return;
_L7:
        message = message.getJSONObject("data");
        DownloadFileFromWeiyun.access$102(DownloadFileFromWeiyun.this, message.getString("dl_encrypt_url"));
        DownloadFileFromWeiyun.access$202(DownloadFileFromWeiyun.this, message.getString("dl_cookie_name"));
        DownloadFileFromWeiyun.access$302(DownloadFileFromWeiyun.this, message.getString("dl_cookie_value"));
        DownloadFileFromWeiyun.access$402(DownloadFileFromWeiyun.this, message.getInt("dl_svr_port"));
        DownloadFileFromWeiyun.access$502(DownloadFileFromWeiyun.this, message.getString("dl_svr_host"));
        if (DownloadFileFromWeiyun.access$600(DownloadFileFromWeiyun.this) != null && DownloadFileFromWeiyun.access$600(DownloadFileFromWeiyun.this).length() > 0)
        {
            DownloadFileFromWeiyun.access$702(DownloadFileFromWeiyun.this, message.getString("dl_thumb_size"));
        }
          goto _L8
_L3:
        DownloadFileFromWeiyun.access$000(DownloadFileFromWeiyun.this).onDownloadSuccess((new StringBuilder()).append(DownloadFileFromWeiyun.access$900(DownloadFileFromWeiyun.this)).append('/').append(DownloadFileFromWeiyun.access$1000(DownloadFileFromWeiyun.this)).toString());
        return;
_L4:
        int j = Integer.parseInt((String)message.obj);
        DownloadFileFromWeiyun.access$000(DownloadFileFromWeiyun.this).onDownloadProgress(j);
        return;
_L5:
        DownloadFileFromWeiyun.access$000(DownloadFileFromWeiyun.this).onError((String)message.obj);
        return;
    }

    atus(Looper looper)
    {
        this$0 = DownloadFileFromWeiyun.this;
        super(looper);
    }
}
