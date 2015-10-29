// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import java.io.PrintStream;

// Referenced classes of package com.cat.list:
//            XListViewHeader

public class XListView extends ListView
    implements android.widget.AbsListView.OnScrollListener
{
    public static interface IXListViewListener
    {

        public abstract void onRefresh();
    }

    public static interface OnXScrollListener
        extends android.widget.AbsListView.OnScrollListener
    {

        public abstract void onXScrolling(View view);
    }


    private static final float OFFSET_RADIO = 1.8F;
    private static final int PULL_LOAD_MORE_DELTA = 50;
    private static final int SCROLLBACK_FOOTER = 1;
    private static final int SCROLLBACK_HEADER = 0;
    private static final int SCROLL_DURATION = 400;
    private boolean mEnablePullLoad;
    private boolean mEnablePullRefresh;
    private TextView mHeaderTimeView;
    private XListViewHeader mHeaderView;
    private RelativeLayout mHeaderViewContent;
    private int mHeaderViewHeight;
    private boolean mIsFooterReady;
    private float mLastY;
    private IXListViewListener mListViewListener;
    private boolean mPullLoading;
    private boolean mPullRefreshing;
    private int mScrollBack;
    private android.widget.AbsListView.OnScrollListener mScrollListener;
    private Scroller mScroller;
    private int mTotalItemCount;

    public XListView(Context context)
    {
        super(context);
        mLastY = -1F;
        mEnablePullRefresh = true;
        mPullRefreshing = false;
        mIsFooterReady = false;
        initWithContext(context);
    }

    public XListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mLastY = -1F;
        mEnablePullRefresh = true;
        mPullRefreshing = false;
        mIsFooterReady = false;
        initWithContext(context);
    }

    public XListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mLastY = -1F;
        mEnablePullRefresh = true;
        mPullRefreshing = false;
        mIsFooterReady = false;
        initWithContext(context);
    }

    private void initWithContext(Context context)
    {
        mScroller = new Scroller(context, new DecelerateInterpolator());
        super.setOnScrollListener(this);
        mHeaderView = new XListViewHeader(context);
        mHeaderViewContent = (RelativeLayout)mHeaderView.findViewById(0x7f0a00f8);
        mHeaderTimeView = (TextView)mHeaderView.findViewById(0x7f0a00fb);
        addHeaderView(mHeaderView);
        mHeaderView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final XListView this$0;

            public void onGlobalLayout()
            {
                mHeaderViewHeight = mHeaderViewContent.getHeight();
                getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = XListView.this;
                super();
            }
        });
    }

    private void invokeOnScrolling()
    {
        if (mScrollListener instanceof OnXScrollListener)
        {
            ((OnXScrollListener)mScrollListener).onXScrolling(this);
        }
    }

    private void resetHeaderHeight()
    {
        int j;
        for (j = mHeaderView.getVisiableHeight(); j == 0 || mPullRefreshing && j <= mHeaderViewHeight;)
        {
            return;
        }

        boolean flag = false;
        int i = ((flag) ? 1 : 0);
        if (mPullRefreshing)
        {
            i = ((flag) ? 1 : 0);
            if (j > mHeaderViewHeight)
            {
                i = mHeaderViewHeight;
            }
        }
        mScrollBack = 0;
        mScroller.startScroll(0, j, 0, i - j, 400);
        invalidate();
    }

    private void updateHeaderHeight(float f)
    {
        mHeaderView.setVisiableHeight((int)f + mHeaderView.getVisiableHeight());
        if (mEnablePullRefresh && !mPullRefreshing)
        {
            if (mHeaderView.getVisiableHeight() > mHeaderViewHeight)
            {
                mHeaderView.setState(1);
            } else
            {
                mHeaderView.setState(0);
            }
        }
        setSelection(0);
    }

    public void computeScroll()
    {
        if (mScroller.computeScrollOffset())
        {
            if (mScrollBack == 0)
            {
                mHeaderView.setVisiableHeight(mScroller.getCurrY());
            }
            postInvalidate();
            invokeOnScrolling();
        }
        super.computeScroll();
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        mTotalItemCount = k;
        if (mScrollListener != null)
        {
            mScrollListener.onScroll(abslistview, i, j, k);
        }
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (mScrollListener != null)
        {
            mScrollListener.onScrollStateChanged(abslistview, i);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (mLastY == -1F)
        {
            mLastY = motionevent.getRawY();
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 48
    //                   0 121
    //                   1 48
    //                   2 132;
           goto _L1 _L2 _L1 _L3
_L1:
        mLastY = -1F;
        if (getFirstVisiblePosition() == 0)
        {
            if (mEnablePullRefresh && mHeaderView.getVisiableHeight() > mHeaderViewHeight)
            {
                mPullRefreshing = true;
                mHeaderView.setState(2);
                if (mListViewListener != null)
                {
                    mListViewListener.onRefresh();
                }
            }
            resetHeaderHeight();
        }
_L5:
        return super.onTouchEvent(motionevent);
_L2:
        mLastY = motionevent.getRawY();
        continue; /* Loop/switch isn't completed */
_L3:
        float f = motionevent.getRawY() - mLastY;
        mLastY = motionevent.getRawY();
        System.out.println((new StringBuilder("\u6570\u636E\u76D1\u6D4B\uFF1A")).append(getFirstVisiblePosition()).append("---->").append(getLastVisiblePosition()).toString());
        if (getFirstVisiblePosition() == 0 && (mHeaderView.getVisiableHeight() > 0 || f > 0.0F))
        {
            updateHeaderHeight(f / 1.8F);
            invokeOnScrolling();
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void setAdapter(ListAdapter listadapter)
    {
        super.setAdapter(listadapter);
    }

    public void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        mScrollListener = onscrolllistener;
    }

    public void setPullLoadEnable(boolean flag)
    {
        mEnablePullLoad = flag;
    }

    public void setPullRefreshEnable(boolean flag)
    {
        mEnablePullRefresh = flag;
        if (!mEnablePullRefresh)
        {
            mHeaderViewContent.setVisibility(4);
            return;
        } else
        {
            mHeaderViewContent.setVisibility(0);
            return;
        }
    }

    public void setRefreshTime(String s)
    {
        mHeaderTimeView.setText(s);
    }

    public void setXListViewListener(IXListViewListener ixlistviewlistener)
    {
        mListViewListener = ixlistviewlistener;
    }

    public void stopRefresh()
    {
        if (mPullRefreshing)
        {
            mPullRefreshing = false;
            resetHeaderHeight();
        }
    }


}
