// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.view.View;

// Referenced classes of package com.pubinfo.izhejiang:
//            ExpandableTextView

class this._cls0
    implements android.view.xtView._cls1
{

    final ExpandableTextView this$0;

    public void onClick(View view)
    {
        if (ExpandableTextView.access$0(ExpandableTextView.this) == ExpandableTextView.access$1())
        {
            ExpandableTextView.access$3(ExpandableTextView.this, ExpandableTextView.access$2());
            setMaxLines(ExpandableTextView.access$0(ExpandableTextView.this));
        } else
        {
            ExpandableTextView.access$3(ExpandableTextView.this, ExpandableTextView.access$1());
            setMaxLines(ExpandableTextView.access$0(ExpandableTextView.this));
        }
        if (ExpandableTextView.access$4(ExpandableTextView.this) != null)
        {
            ExpandableTextView.access$4(ExpandableTextView.this).onClick(view);
        }
    }

    ()
    {
        this$0 = ExpandableTextView.this;
        super();
    }
}
