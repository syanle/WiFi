// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.view.MotionEvent;

// Referenced classes of package com.cat.picture:
//            ClipZoomImageView

class nGestureListener extends android.view.leOnGestureListener
{

    final ClipZoomImageView this$0;

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        if (ClipZoomImageView.access$3(ClipZoomImageView.this))
        {
            return true;
        }
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        if (getScale() < ClipZoomImageView.access$4())
        {
            postDelayed(new toScaleRunnable(ClipZoomImageView.this, ClipZoomImageView.access$4(), f, f1), 16L);
            ClipZoomImageView.access$2(ClipZoomImageView.this, true);
            return true;
        } else
        {
            postDelayed(new toScaleRunnable(ClipZoomImageView.this, ClipZoomImageView.access$5(ClipZoomImageView.this), f, f1), 16L);
            ClipZoomImageView.access$2(ClipZoomImageView.this, true);
            return true;
        }
    }

    toScaleRunnable()
    {
        this$0 = ClipZoomImageView.this;
        super();
    }
}
