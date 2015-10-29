// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.os.Handler;

// Referenced classes of package com.tencent.weibo.sdk.android.api.util:
//            ImageLoaderAsync, Util

class val.handler extends Thread
{

    final ImageLoaderAsync this$0;
    private final Handler val$handler;
    private final String val$imagePath;

    public void run()
    {
        android.graphics.drawable.Drawable drawable = Util.loadImageFromUrl(val$imagePath);
        val$handler.sendMessage(val$handler.obtainMessage(0, drawable));
    }

    ()
    {
        this$0 = final_imageloaderasync;
        val$imagePath = s;
        val$handler = Handler.this;
        super();
    }
}
