// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.RelativeLayout;

// Referenced classes of package com.cat.picture:
//            ClipZoomImageView, ClipImageBorderView

public class ClipImageLayout extends RelativeLayout
{

    private static ClipZoomImageView mZoomImageView;
    private ClipImageBorderView mClipImageView;
    private int mHorizontalPadding;

    public ClipImageLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mHorizontalPadding = 20;
        mZoomImageView = new ClipZoomImageView(context);
        mClipImageView = new ClipImageBorderView(context);
        context = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        addView(mZoomImageView, context);
        addView(mClipImageView, context);
        mHorizontalPadding = (int)TypedValue.applyDimension(1, mHorizontalPadding, getResources().getDisplayMetrics());
        mZoomImageView.setHorizontalPadding(mHorizontalPadding);
        mClipImageView.setHorizontalPadding(mHorizontalPadding);
    }

    public Bitmap clip()
    {
        return mZoomImageView.clip();
    }

    public void setDrawable(Drawable drawable)
    {
        mZoomImageView.setImageDrawable(drawable);
    }

    public void setHorizontalPadding(int i)
    {
        mHorizontalPadding = i;
    }
}
