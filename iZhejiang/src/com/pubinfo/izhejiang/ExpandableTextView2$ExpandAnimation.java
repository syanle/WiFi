// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.pubinfo.izhejiang:
//            ExpandableTextView2

private class istener extends Animation
{

    private final int mDistance;
    private final int mStartHeight;
    final ExpandableTextView2 this$0;

    protected void applyTransformation(float f, Transformation transformation)
    {
        ExpandableTextView2.access$3(ExpandableTextView2.this, mStartHeight + Math.round((float)mDistance * f));
    }

    public istener()
    {
        this$0 = ExpandableTextView2.this;
        super();
        int i;
        if (ExpandableTextView2.access$0(ExpandableTextView2.this))
        {
            mStartHeight = ExpandableTextView2.access$1(ExpandableTextView2.this);
            i = ExpandableTextView2.access$2(ExpandableTextView2.this);
        } else
        {
            ExpandableTextView2.access$3(ExpandableTextView2.this, ExpandableTextView2.access$2(ExpandableTextView2.this));
            mStartHeight = ExpandableTextView2.access$2(ExpandableTextView2.this);
            i = ExpandableTextView2.access$1(ExpandableTextView2.this);
            setMaxLines(0x7fffffff);
        }
        mDistance = i - mStartHeight;
        setDuration(ExpandableTextView2.access$4(ExpandableTextView2.this));
        setAnimationListener(new istener(ExpandableTextView2.this, null));
    }
}
