// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.animation.Animation;

// Referenced classes of package com.pubinfo.izhejiang:
//            ExpandableTextView2

private class <init>
    implements android.view.animation.init>
{

    final ExpandableTextView2 this$0;

    public void onAnimationEnd(Animation animation)
    {
        ExpandableTextView2.access$5(ExpandableTextView2.this, false);
        if (!ExpandableTextView2.access$0(ExpandableTextView2.this))
        {
            setMaxLines(ExpandableTextView2.access$6(ExpandableTextView2.this));
            ExpandableTextView2.access$7(ExpandableTextView2.this);
            return;
        } else
        {
            ExpandableTextView2.access$8(ExpandableTextView2.this);
            return;
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        ExpandableTextView2.access$5(ExpandableTextView2.this, true);
    }

    private ()
    {
        this$0 = ExpandableTextView2.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
