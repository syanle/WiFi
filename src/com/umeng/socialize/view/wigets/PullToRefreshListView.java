// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.socialize.common.ResContainer;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class PullToRefreshListView extends ListView
    implements android.widget.AbsListView.OnScrollListener
{
    public static interface OnRefreshListener
    {

        public abstract void a();
    }

    private class a
        implements android.view.View.OnClickListener
    {

        final PullToRefreshListView a;

        public void onClick(View view)
        {
            if (a.mRefreshState != 4)
            {
                a.prepareForRefresh();
                a.onRefresh();
            }
        }

        private a()
        {
            a = PullToRefreshListView.this;
            super();
        }

        a(a a1)
        {
            this();
        }
    }


    private static final int PULL_TO_REFRESH = 2;
    private static final int REFRESHING = 4;
    private static final int RELEASE_TO_REFRESH = 3;
    private static final String TAG = "Other";
    private static final int TAP_TO_REFRESH = 1;
    private Context mContext;
    private int mCurrentScrollState;
    private RotateAnimation mFlipAnimation;
    private LayoutInflater mInflater;
    private int mLastMotionY;
    private OnRefreshListener mOnRefreshListener;
    private android.widget.AbsListView.OnScrollListener mOnScrollListener;
    private int mRefreshOriginalTopPadding;
    private int mRefreshState;
    private RelativeLayout mRefreshView;
    private int mRefreshViewHeight;
    private ImageView mRefreshViewImage;
    private TextView mRefreshViewLastUpdated;
    private ProgressBar mRefreshViewProgress;
    private TextView mRefreshViewText;
    private RotateAnimation mReverseFlipAnimation;

    public PullToRefreshListView(Context context)
    {
        super(context);
        init(context);
    }

    public PullToRefreshListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    public PullToRefreshListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context);
    }

    private void applyHeaderPadding(MotionEvent motionevent)
    {
        int k;
        int j1;
        k = 1;
        j1 = motionevent.getHistorySize();
        int i = ((Integer)android/view/MotionEvent.getMethod("getPointerCount", new Class[0]).invoke(motionevent, new Object[0])).intValue();
        k = i;
_L4:
        int l = 0;
_L2:
        if (l >= j1)
        {
            return;
        }
        break MISSING_BLOCK_LABEL_104;
        motionevent;
        throw motionevent;
        Object obj;
        obj;
        System.err.println((new StringBuilder("unexpected ")).append(obj).toString());
        continue; /* Loop/switch isn't completed */
        obj;
        System.err.println((new StringBuilder("unexpected ")).append(obj).toString());
        continue; /* Loop/switch isn't completed */
        int i1 = 0;
        do
        {
label0:
            {
                if (i1 < k)
                {
                    break label0;
                }
                l++;
            }
            if (true)
            {
                break;
            }
            if (mRefreshState == 3)
            {
                if (isVerticalFadingEdgeEnabled())
                {
                    setVerticalScrollBarEnabled(false);
                }
                int j;
                try
                {
                    j = ((Float)android/view/MotionEvent.getMethod("getHistoricalY", new Class[] {
                        Integer.TYPE, Integer.TYPE
                    }).invoke(motionevent, new Object[] {
                        Integer.valueOf(i1), Integer.valueOf(l)
                    })).intValue();
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    j = (int)motionevent.getHistoricalY(l);
                }
                // Misplaced declaration of an exception variable
                catch (MotionEvent motionevent)
                {
                    throw motionevent;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    System.err.println((new StringBuilder("unexpected ")).append(obj).toString());
                    j = 0;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    System.err.println((new StringBuilder("unexpected ")).append(obj).toString());
                    j = 0;
                }
                j = (int)((double)(j - mLastMotionY - mRefreshViewHeight) / 1.7D);
                mRefreshView.setPadding(mRefreshView.getPaddingLeft(), j, mRefreshView.getPaddingRight(), mRefreshView.getPaddingBottom());
            }
            i1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void init(Context context)
    {
        mContext = context;
        mFlipAnimation = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        mFlipAnimation.setInterpolator(new LinearInterpolator());
        mFlipAnimation.setDuration(100L);
        mFlipAnimation.setFillAfter(true);
        mReverseFlipAnimation = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        mReverseFlipAnimation.setInterpolator(new LinearInterpolator());
        mReverseFlipAnimation.setDuration(100L);
        mReverseFlipAnimation.setFillAfter(true);
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mRefreshView = (RelativeLayout)mInflater.inflate(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.LAYOUT, "umeng_socialize_pull_to_refresh_header"), this, false);
        mRefreshViewText = (TextView)mRefreshView.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "pull_to_refresh_text"));
        mRefreshViewImage = (ImageView)mRefreshView.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "pull_to_refresh_image"));
        mRefreshViewProgress = (ProgressBar)mRefreshView.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "pull_to_refresh_progress"));
        mRefreshViewLastUpdated = (TextView)mRefreshView.findViewById(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.ID, "pull_to_refresh_updated_at"));
        mRefreshViewImage.setMinimumHeight(50);
        mRefreshView.setOnClickListener(new a(null));
        mRefreshOriginalTopPadding = mRefreshView.getPaddingTop();
        mRefreshState = 1;
        addHeaderView(mRefreshView);
        super.setOnScrollListener(this);
        measureView(mRefreshView);
        mRefreshViewHeight = mRefreshView.getMeasuredHeight();
    }

    private void measureView(View view)
    {
        android.view.ViewGroup.LayoutParams layoutparams1 = view.getLayoutParams();
        android.view.ViewGroup.LayoutParams layoutparams = layoutparams1;
        if (layoutparams1 == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -2);
        }
        int j = ViewGroup.getChildMeasureSpec(0, 0, layoutparams.width);
        int i = layoutparams.height;
        if (i > 0)
        {
            i = android.view.View.MeasureSpec.makeMeasureSpec(i, 0x40000000);
        } else
        {
            i = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(j, i);
    }

    private void resetHeader()
    {
        if (mRefreshState != 1)
        {
            mRefreshState = 1;
            resetHeaderPadding();
            mRefreshViewText.setText(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "pull_to_refresh_tap_label"));
            mRefreshViewImage.setImageResource(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.DRAWABLE, "umeng_socialize_pulltorefresh_arrow"));
            mRefreshViewImage.clearAnimation();
            mRefreshViewImage.setVisibility(8);
            mRefreshViewProgress.setVisibility(8);
        }
    }

    private void resetHeaderPadding()
    {
        mRefreshView.setPadding(mRefreshView.getPaddingLeft(), mRefreshOriginalTopPadding, mRefreshView.getPaddingRight(), mRefreshView.getPaddingBottom());
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        setSelection(1);
    }

    public void onRefresh()
    {
        Log.d("Other", "onRefresh");
        if (mOnRefreshListener != null)
        {
            mOnRefreshListener.a();
        }
    }

    public void onRefreshComplete()
    {
        Log.d("Other", "onRefreshComplete");
        resetHeader();
        if (mRefreshView.getBottom() > 0)
        {
            invalidateViews();
            setSelection(1);
        }
    }

    public void onRefreshComplete(CharSequence charsequence)
    {
        setLastUpdated(charsequence);
        onRefreshComplete();
    }

    public void onRefreshCompleteKeepState()
    {
        Log.d("Other", "onRefreshCompleteKeepState");
        resetHeader();
        if (mRefreshView.getBottom() > 0)
        {
            invalidateViews();
        }
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if (mCurrentScrollState != 1 || mRefreshState == 4) goto _L2; else goto _L1
_L1:
        if (i != 0) goto _L4; else goto _L3
_L3:
        mRefreshViewImage.setVisibility(0);
        if (mRefreshView.getBottom() <= mRefreshViewHeight + 20 && mRefreshView.getTop() < 0 || mRefreshState == 3) goto _L6; else goto _L5
_L5:
        mRefreshViewText.setText(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "pull_to_refresh_release_label"));
        mRefreshViewImage.clearAnimation();
        mRefreshViewImage.startAnimation(mFlipAnimation);
        mRefreshState = 3;
_L8:
        if (mOnScrollListener != null)
        {
            mOnScrollListener.onScroll(abslistview, i, j, k);
        }
        return;
_L6:
        if (mRefreshView.getBottom() < mRefreshViewHeight + 20 && mRefreshState != 2)
        {
            mRefreshViewText.setText(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "pull_to_refresh_pull_label"));
            if (mRefreshState != 1)
            {
                mRefreshViewImage.clearAnimation();
                mRefreshViewImage.startAnimation(mReverseFlipAnimation);
            }
            mRefreshState = 2;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        mRefreshViewImage.setVisibility(8);
        resetHeader();
        continue; /* Loop/switch isn't completed */
_L2:
        if (mCurrentScrollState == 2 && i == 0 && mRefreshState != 4)
        {
            setSelection(1);
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        mCurrentScrollState = i;
        if (mOnScrollListener != null)
        {
            mOnScrollListener.onScrollStateChanged(abslistview, i);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = (int)motionevent.getY();
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 36
    //                   0 153
    //                   1 42
    //                   2 161;
           goto _L1 _L2 _L3 _L4
_L1:
        return super.onTouchEvent(motionevent);
_L3:
        if (!isVerticalScrollBarEnabled())
        {
            setVerticalScrollBarEnabled(true);
        }
        if (getFirstVisiblePosition() == 0 && mRefreshState != 4)
        {
            if ((mRefreshView.getBottom() > mRefreshViewHeight || mRefreshView.getTop() >= 0) && mRefreshState == 3)
            {
                mRefreshState = 4;
                prepareForRefresh();
                onRefresh();
            } else
            if (mRefreshView.getBottom() < mRefreshViewHeight || mRefreshView.getTop() < 0)
            {
                resetHeader();
                setSelection(1);
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        mLastMotionY = i;
        continue; /* Loop/switch isn't completed */
_L4:
        applyHeaderPadding(motionevent);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void prepareForRefresh()
    {
        resetHeaderPadding();
        mRefreshViewImage.setVisibility(8);
        mRefreshViewImage.setImageDrawable(null);
        mRefreshViewProgress.setVisibility(0);
        mRefreshViewText.setText(ResContainer.getResourceId(mContext, com.umeng.socialize.common.ResContainer.ResType.STRING, "pull_to_refresh_refreshing_label"));
        mRefreshState = 4;
    }

    public void setAdapter(ListAdapter listadapter)
    {
        super.setAdapter(listadapter);
        setSelection(1);
    }

    public void setLastUpdated(CharSequence charsequence)
    {
        if (charsequence != null)
        {
            mRefreshViewLastUpdated.setVisibility(0);
            mRefreshViewLastUpdated.setText(charsequence);
            return;
        } else
        {
            mRefreshViewLastUpdated.setVisibility(8);
            return;
        }
    }

    public void setOnRefreshListener(OnRefreshListener onrefreshlistener)
    {
        mOnRefreshListener = onrefreshlistener;
    }

    public void setOnScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        mOnScrollListener = onscrolllistener;
    }

}
