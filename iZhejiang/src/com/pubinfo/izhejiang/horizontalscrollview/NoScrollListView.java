// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.horizontalscrollview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class NoScrollListView extends ListView
{

    public NoScrollListView(Context context)
    {
        super(context);
    }

    public NoScrollListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public NoScrollListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(0x1fffffff, 0x80000000));
    }
}
