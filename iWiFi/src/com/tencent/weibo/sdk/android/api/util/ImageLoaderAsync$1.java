// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.weibo.sdk.android.api.util:
//            ImageLoaderAsync

class val.imagePath extends Handler
{

    final ImageLoaderAsync this$0;
    private final llBackImage val$callback;
    private final String val$imagePath;

    public void handleMessage(Message message)
    {
        val$callback.callback((Drawable)message.obj, val$imagePath);
    }

    llBackImage()
    {
        this$0 = final_imageloaderasync;
        val$callback = llbackimage;
        val$imagePath = String.this;
        super();
    }
}
