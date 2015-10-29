// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            UploadFileToWeiyun, IUploadFileToWeiyunStatus, DataConvert

class this._cls0 extends Handler
{

    final UploadFileToWeiyun this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch -2 3: default 44
    //                   -2 402
    //                   -1 235
    //                   0 45
    //                   1 44
    //                   2 292
    //                   3 352;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L6
_L1:
        return;
_L4:
        message = (JSONObject)message.obj;
        int i = message.getInt("ret");
        if (i != 0)
        {
            try
            {
                UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onError((new StringBuilder()).append("server error, ret = ").append(i).append("").toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Message message)
            {
                message.printStackTrace();
            }
            UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onError((new StringBuilder()).append("server return json error :").append(message.getMessage()).append("").toString());
            return;
        }
        message = message.getJSONObject("data");
        UploadFileToWeiyun.access$102(UploadFileToWeiyun.this, message.getString("file_id"));
        UploadFileToWeiyun.access$202(UploadFileToWeiyun.this, message.getString("csum"));
        UploadFileToWeiyun.access$302(UploadFileToWeiyun.this, DataConvert.string2bytes(UploadFileToWeiyun.access$200(UploadFileToWeiyun.this)));
        UploadFileToWeiyun.access$402(UploadFileToWeiyun.this, message.getInt("port"));
        UploadFileToWeiyun.access$502(UploadFileToWeiyun.this, message.getString("host"));
        UploadFileToWeiyun.access$600(UploadFileToWeiyun.this);
        return;
_L3:
        long l = Thread.currentThread().getId();
        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onError thread id = ").append(l).append("").toString());
        UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onError(message.obj.toString());
        return;
_L5:
        long l1 = Thread.currentThread().getId();
        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onUploadProgress thread id = ").append(l1).append("").toString());
        UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onUploadProgress(Integer.parseInt((String)message.obj));
        return;
_L6:
        long l2 = Thread.currentThread().getId();
        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onUploadSuccess thread id = ").append(l2).append("").toString());
        UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onUploadSuccess();
        return;
_L2:
        long l3 = Thread.currentThread().getId();
        Log.i("weiyun_test", (new StringBuilder()).append("uploadFileToWeiyun onError thread id = ").append(l3).append("").toString());
        UploadFileToWeiyun.access$000(UploadFileToWeiyun.this).onError((String)message.obj);
        return;
    }

    atus(Looper looper)
    {
        this$0 = UploadFileToWeiyun.this;
        super(looper);
    }
}
