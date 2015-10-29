// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.animation.Animation;

// Referenced classes of package com.pubinfo.izhejiang:
//            ExpandableTextView3

private class <init>
    implements android.view.animation.init>
{

    final ExpandableTextView3 this$0;

    public void onAnimationEnd(Animation animation)
    {
        ExpandableTextView3.access$5(ExpandableTextView3.this, false);
        if (!ExpandableTextView3.access$0(ExpandableTextView3.this))
        {
            setMaxLines(ExpandableTextView3.access$6(ExpandableTextView3.this));
            ExpandableTextView3.access$7(ExpandableTextView3.this);
            return;
        } else
        {
            ExpandableTextView3.access$8(ExpandableTextView3.this);
            return;
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        ExpandableTextView3.access$5(ExpandableTextView3.this, true);
    }

    private ()
    {
        this$0 = ExpandableTextView3.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
