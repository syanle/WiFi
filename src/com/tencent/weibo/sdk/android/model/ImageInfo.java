// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.model;

import android.graphics.drawable.Drawable;

// Referenced classes of package com.tencent.weibo.sdk.android.model:
//            BaseVO

public class ImageInfo extends BaseVO
{

    private static final long serialVersionUID = 0x24bcac05e58a47acL;
    private Drawable drawable;
    private String imageName;
    private String imagePath;
    private String playPath;

    public ImageInfo()
    {
    }

    public Drawable getDrawable()
    {
        return drawable;
    }

    public String getImageName()
    {
        return imageName;
    }

    public String getImagePath()
    {
        return imagePath;
    }

    public String getPlayPath()
    {
        return playPath;
    }

    public void setDrawable(Drawable drawable1)
    {
        drawable = drawable1;
    }

    public void setImageName(String s)
    {
        imageName = s;
    }

    public void setImagePath(String s)
    {
        imagePath = s;
    }

    public void setPlayPath(String s)
    {
        playPath = s;
    }
}
