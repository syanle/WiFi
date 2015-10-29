// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.sdkutil:
//            Util, AsynScaleCompressImage

final class val.handler
    implements Runnable
{

    final Handler val$handler;
    final String val$imgPath;

    public void run()
    {
        Object obj = BitmapFactory.decodeFile(val$imgPath);
        if (obj != null)
        {
            String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/tmp/").toString();
            String s1 = Util.encrypt(val$imgPath);
            s1 = (new StringBuilder()).append("share2qq_temp").append(s1).append(".jpg").toString();
            obj = AsynScaleCompressImage.compressBitmap(AsynScaleCompressImage.access$000(((android.graphics.Bitmap) (obj)), 140), s, s1);
            if (obj != null)
            {
                Message message = val$handler.obtainMessage(101);
                message.obj = obj;
                val$handler.sendMessage(message);
                return;
            }
        }
        obj = val$handler.obtainMessage(102);
        obj.arg1 = 3;
        val$handler.sendMessage(((Message) (obj)));
    }

    ()
    {
        val$imgPath = s;
        val$handler = handler1;
        super();
    }
}
