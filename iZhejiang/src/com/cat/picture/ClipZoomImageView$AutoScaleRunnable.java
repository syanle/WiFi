// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.graphics.Matrix;

// Referenced classes of package com.cat.picture:
//            ClipZoomImageView

private class tmpScale
    implements Runnable
{

    static final float BIGGER = 1.07F;
    static final float SMALLER = 0.93F;
    private float mTargetScale;
    final ClipZoomImageView this$0;
    private float tmpScale;
    private float x;
    private float y;

    public void run()
    {
        ClipZoomImageView.access$0(ClipZoomImageView.this).postScale(tmpScale, tmpScale, x, y);
        ClipZoomImageView.access$1(ClipZoomImageView.this);
        setImageMatrix(ClipZoomImageView.access$0(ClipZoomImageView.this));
        float f = getScale();
        if (tmpScale > 1.0F && f < mTargetScale || tmpScale < 1.0F && mTargetScale < f)
        {
            postDelayed(this, 16L);
            return;
        } else
        {
            f = mTargetScale / f;
            ClipZoomImageView.access$0(ClipZoomImageView.this).postScale(f, f, x, y);
            ClipZoomImageView.access$1(ClipZoomImageView.this);
            setImageMatrix(ClipZoomImageView.access$0(ClipZoomImageView.this));
            ClipZoomImageView.access$2(ClipZoomImageView.this, false);
            return;
        }
    }

    public _cls9(float f, float f1, float f2)
    {
        this$0 = ClipZoomImageView.this;
        super();
        mTargetScale = f;
        x = f1;
        y = f2;
        if (getScale() < mTargetScale)
        {
            tmpScale = 1.07F;
            return;
        } else
        {
            tmpScale = 0.93F;
            return;
        }
    }
}
