// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.pubinfo.izhejiang:
//            ExpandableTextView3

private class istener extends Animation
{

    private final int mDistance;
    private final int mStartHeight;
    final ExpandableTextView3 this$0;

    protected void applyTransformation(float f, Transformation transformation)
    {
        ExpandableTextView3.access$4(ExpandableTextView3.this, mStartHeight + Math.round((float)mDistance * f));
    }

    public istener()
    {
        this$0 = ExpandableTextView3.this;
        super();
        int i;
        if (ExpandableTextView3.access$0(ExpandableTextView3.this))
        {
            mStartHeight = ExpandableTextView3.access$1(ExpandableTextView3.this);
            i = ExpandableTextView3.access$2(ExpandableTextView3.this);
        } else
        {
            mStartHeight = ExpandableTextView3.access$2(ExpandableTextView3.this);
            i = ExpandableTextView3.access$1(ExpandableTextView3.this);
            setMaxLines(0x7fffffff);
        }
        mDistance = i - mStartHeight;
        setDuration(ExpandableTextView3.access$3(ExpandableTextView3.this));
        setAnimationListener(new istener(ExpandableTextView3.this, null));
    }
}
