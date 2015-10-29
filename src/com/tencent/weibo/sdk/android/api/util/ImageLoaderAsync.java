// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.tencent.weibo.sdk.android.api.util:
//            Util

public class ImageLoaderAsync
{
    public static interface callBackImage
    {

        public abstract void callback(Drawable drawable, String s);
    }


    public ImageLoaderAsync()
    {
    }

    public Drawable loadImage(final String imagePath, final callBackImage callback)
    {
        (new Thread() {

            final ImageLoaderAsync this$0;
            private final Handler val$handler;
            private final String val$imagePath;

            public void run()
            {
                Drawable drawable = Util.loadImageFromUrl(imagePath);
                handler.sendMessage(handler.obtainMessage(0, drawable));
            }

            
            {
                this$0 = ImageLoaderAsync.this;
                imagePath = s;
                handler = handler1;
                super();
            }
        }).start();
        return null;
    }

    // Unreferenced inner class com/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1

/* anonymous class */
    class _cls1 extends Handler
    {

        final ImageLoaderAsync this$0;
        private final callBackImage val$callback;
        private final String val$imagePath;

        public void handleMessage(Message message)
        {
            callback.callback((Drawable)message.obj, imagePath);
        }

            
            {
                this$0 = ImageLoaderAsync.this;
                callback = callbackimage;
                imagePath = s;
                super();
            }
    }

}
