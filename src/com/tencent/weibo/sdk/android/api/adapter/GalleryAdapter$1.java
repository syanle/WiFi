// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.adapter;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

// Referenced classes of package com.tencent.weibo.sdk.android.api.adapter:
//            GalleryAdapter

class val.imageView
    implements com.tencent.weibo.sdk.android.api.util.callBackImage
{

    final GalleryAdapter this$0;
    private final ImageView val$imageView;

    public void callback(Drawable drawable, String s)
    {
        if (drawable != null)
        {
            val$imageView.setImageDrawable(drawable);
        }
    }

    lBackImage()
    {
        this$0 = final_galleryadapter;
        val$imageView = ImageView.this;
        super();
    }
}
