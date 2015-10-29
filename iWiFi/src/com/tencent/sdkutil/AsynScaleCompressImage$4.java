// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;

// Referenced classes of package com.tencent.sdkutil:
//            Util, AsynScaleCompressImage

final class val.handler
    implements Runnable
{

    final Handler val$handler;
    final ArrayList val$imgPaths;

    public void run()
    {
        for (int i = 0; i < val$imgPaths.size(); i++)
        {
            String s1 = (String)val$imgPaths.get(i);
            if (Util.isValidUrl(s1) || !Util.fileExists(s1))
            {
                continue;
            }
            Object obj = BitmapFactory.decodeFile(s1);
            if (obj == null)
            {
                continue;
            }
            String s = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/tmp/").toString();
            s1 = Util.encrypt(s1);
            s1 = (new StringBuilder()).append("share2qzone_temp").append(s1).append(".jpg").toString();
            obj = AsynScaleCompressImage.compressBitmap(AsynScaleCompressImage.access$000(((android.graphics.Bitmap) (obj)), 840), s, s1);
            if (obj != null)
            {
                val$imgPaths.set(i, obj);
            }
        }

        Message message = val$handler.obtainMessage(101);
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("images", val$imgPaths);
        message.setData(bundle);
        val$handler.sendMessage(message);
    }

    ()
    {
        val$imgPaths = arraylist;
        val$handler = handler1;
        super();
    }
}
