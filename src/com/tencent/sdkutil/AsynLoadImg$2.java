// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.File;

// Referenced classes of package com.tencent.sdkutil:
//            AsynLoadImg, Util

class this._cls0
    implements Runnable
{

    final AsynLoadImg this$0;

    public void run()
    {
        Log.v("AsynLoadImg", "saveFileRunnable:");
        String s = Util.encrypt(AsynLoadImg.access$100(AsynLoadImg.this));
        s = (new StringBuilder()).append("share_qq_").append(s).append(".jpg").toString();
        String s1 = (new StringBuilder()).append(AsynLoadImg.access$200()).append(s).toString();
        File file = new File(s1);
        Message message = AsynLoadImg.access$300(AsynLoadImg.this).obtainMessage();
        if (file.exists())
        {
            message.arg1 = 0;
            message.obj = s1;
            Log.v("AsynLoadImg", (new StringBuilder()).append("file exists: time:").append(System.currentTimeMillis() - AsynLoadImg.access$400(AsynLoadImg.this)).toString());
        } else
        {
            android.graphics.Bitmap bitmap = AsynLoadImg.getbitmap(AsynLoadImg.access$100(AsynLoadImg.this));
            boolean flag;
            if (bitmap != null)
            {
                flag = saveFile(bitmap, s);
            } else
            {
                Log.v("AsynLoadImg", "saveFileRunnable:get bmp fail---");
                flag = false;
            }
            if (flag)
            {
                message.arg1 = 0;
                message.obj = s1;
            } else
            {
                message.arg1 = 1;
            }
            Log.v("AsynLoadImg", (new StringBuilder()).append("file not exists: download time:").append(System.currentTimeMillis() - AsynLoadImg.access$400(AsynLoadImg.this)).toString());
        }
        AsynLoadImg.access$300(AsynLoadImg.this).sendMessage(message);
    }

    ()
    {
        this$0 = AsynLoadImg.this;
        super();
    }
}
