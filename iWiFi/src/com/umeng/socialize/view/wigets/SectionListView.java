// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            b

public class SectionListView extends ListView
{

    public static final String TAG = com/umeng/socialize/view/wigets/SectionListView.getSimpleName();
    private b mAdapter;
    private View mHeaderView;
    private int mHeaderViewHeight;
    private boolean mHeaderViewVisible;
    private int mHeaderViewWidth;

    public SectionListView(Context context)
    {
        super(context);
    }

    public SectionListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SectionListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void configureHeaderView(int i)
    {
        if (mHeaderView != null)
        {
            View view;
            switch (mAdapter.a(i))
            {
            default:
                return;

            case 0: // '\0'
                mHeaderViewVisible = false;
                return;

            case 1: // '\001'
                mAdapter.a(mHeaderView, i, 255);
                if (mHeaderView.getTop() != 0)
                {
                    mHeaderView.layout(0, 0, mHeaderViewWidth, mHeaderViewHeight);
                }
                mHeaderViewVisible = true;
                return;

            case 2: // '\002'
                view = getChildAt(0);
                break;
            }
            if (view != null)
            {
                int j = view.getBottom();
                int k = mHeaderView.getHeight();
                if (j < k)
                {
                    j -= k;
                } else
                {
                    j = 0;
                }
                mAdapter.a(mHeaderView, i, 255);
                if (mHeaderView.getTop() != j)
                {
                    mHeaderView.layout(0, j, mHeaderViewWidth, mHeaderViewHeight + j);
                }
                mHeaderViewVisible = true;
                return;
            }
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (mHeaderViewVisible)
        {
            drawChild(canvas, mHeaderView, getDrawingTime());
        }
    }

    public volatile ListAdapter getAdapter()
    {
        return getAdapter();
    }

    public b getAdapter()
    {
        return mAdapter;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (mHeaderView != null)
        {
            mHeaderView.layout(0, 0, mHeaderViewWidth, mHeaderViewHeight);
            configureHeaderView(getFirstVisiblePosition());
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (mHeaderView != null)
        {
            measureChild(mHeaderView, i, j);
            mHeaderViewWidth = mHeaderView.getMeasuredWidth();
            mHeaderViewHeight = mHeaderView.getMeasuredHeight();
        }
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (!(listadapter instanceof b))
        {
            throw new IllegalArgumentException((new StringBuilder(String.valueOf(com/umeng/socialize/view/wigets/SectionListView.getSimpleName()))).append(" must use adapter of type ").append(com/umeng/socialize/view/wigets/b.getSimpleName()).toString());
        }
        if (mAdapter != null)
        {
            setOnScrollListener(null);
        }
        mAdapter = (b)listadapter;
        setOnScrollListener((b)listadapter);
        super.setAdapter(listadapter);
    }

    public void setPinnedHeaderView(View view)
    {
        mHeaderView = view;
        if (mHeaderView != null)
        {
            setFadingEdgeLength(0);
        }
        requestLayout();
    }

}
