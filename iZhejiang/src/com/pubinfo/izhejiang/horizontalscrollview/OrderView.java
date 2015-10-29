// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.horizontalscrollview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Scroller;

public class OrderView extends LinearLayout
{
    public static interface StayViewListener
    {

        public abstract void onStayViewGone();

        public abstract void onStayViewShow();
    }


    private Context mContext;
    private ScrollView scrollView;
    private Scroller scroller;
    private View stayView;
    private StayViewListener stayViewListener;
    boolean up;

    public OrderView(Context context)
    {
        super(context);
        up = true;
        mContext = context;
    }

    public OrderView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        up = true;
        mContext = context;
        init();
    }

    private void init()
    {
        setOrientation(1);
        scroller = new Scroller(mContext);
    }

    public void computeScroll()
    {
        if (stayView != null && scrollView != null && stayViewListener != null)
        {
            int i = scrollView.getScrollY();
            if (up && i >= stayView.getTop())
            {
                stayViewListener.onStayViewShow();
                up = false;
            }
            if (!up && i <= stayView.getBottom() - stayView.getHeight())
            {
                stayViewListener.onStayViewGone();
                up = true;
            }
        }
    }

    public void setStayView(View view, ScrollView scrollview, StayViewListener stayviewlistener)
    {
        stayView = view;
        scrollView = scrollview;
        stayViewListener = stayviewlistener;
    }
}
