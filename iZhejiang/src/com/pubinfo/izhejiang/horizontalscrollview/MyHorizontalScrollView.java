// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang.horizontalscrollview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.pubinfo.izhejiang.horizontalscrollview:
//            HorizontalScrollViewAdapter

public class MyHorizontalScrollView extends HorizontalScrollView
    implements android.view.View.OnClickListener
{
    public static interface CurrentImageChangeListener
    {

        public abstract void onCurrentImgChanged(int i, View view);
    }

    public static interface OnItemClickListener
    {

        public abstract void onClick(View view, int i);
    }


    private static final String TAG = "MyHorizontalScrollView";
    private HorizontalScrollViewAdapter mAdapter;
    private int mChildHeight;
    private int mChildWidth;
    private LinearLayout mContainer;
    private int mCountOneScreen;
    private int mCurrentIndex;
    private View mFirstView;
    private int mFristIndex;
    private CurrentImageChangeListener mListener;
    private OnItemClickListener mOnClickListener;
    private int mScreenWitdh;
    private Map mViewPos;

    public MyHorizontalScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mViewPos = new HashMap();
        context = (WindowManager)context.getSystemService("window");
        attributeset = new DisplayMetrics();
        context.getDefaultDisplay().getMetrics(attributeset);
        mScreenWitdh = ((DisplayMetrics) (attributeset)).widthPixels;
    }

    public void initDatas(HorizontalScrollViewAdapter horizontalscrollviewadapter)
    {
        mAdapter = horizontalscrollviewadapter;
        mContainer = (LinearLayout)getChildAt(0);
        horizontalscrollviewadapter = horizontalscrollviewadapter.getView(0, null, mContainer);
        mContainer.addView(horizontalscrollviewadapter);
        if (mChildWidth == 0 && mChildHeight == 0)
        {
            horizontalscrollviewadapter.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
            mChildHeight = horizontalscrollviewadapter.getMeasuredHeight();
            mChildWidth = horizontalscrollviewadapter.getMeasuredWidth();
            Log.e("MyHorizontalScrollView", (new StringBuilder(String.valueOf(horizontalscrollviewadapter.getMeasuredWidth()))).append(",").append(horizontalscrollviewadapter.getMeasuredHeight()).toString());
            mChildHeight = horizontalscrollviewadapter.getMeasuredHeight();
            int i;
            if (mScreenWitdh / mChildWidth == 0)
            {
                i = mScreenWitdh / mChildWidth + 1;
            } else
            {
                i = mScreenWitdh / mChildWidth + 2;
            }
            mCountOneScreen = i;
            Log.e("MyHorizontalScrollView", (new StringBuilder("mCountOneScreen = ")).append(mCountOneScreen).append(" ,mChildWidth = ").append(mChildWidth).toString());
        }
        initFirstScreenChildren(mCountOneScreen);
    }

    public void initFirstScreenChildren(int i)
    {
        mContainer = (LinearLayout)getChildAt(0);
        mContainer.removeAllViews();
        mViewPos.clear();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            View view = mAdapter.getView(j, null, mContainer);
            view.setOnClickListener(this);
            mContainer.addView(view);
            mViewPos.put(view, Integer.valueOf(j));
            mCurrentIndex = j;
            j++;
        } while (true);
    }

    protected void loadNextImg()
    {
        if (mCurrentIndex == mAdapter.getCount() - 1)
        {
            return;
        } else
        {
            scrollTo(0, 0);
            mViewPos.remove(mContainer.getChildAt(0));
            mContainer.removeViewAt(0);
            Object obj = mAdapter;
            int i = mCurrentIndex + 1;
            mCurrentIndex = i;
            obj = ((HorizontalScrollViewAdapter) (obj)).getView(i, null, mContainer);
            ((View) (obj)).setOnClickListener(this);
            mContainer.addView(((View) (obj)));
            mViewPos.put(obj, Integer.valueOf(mCurrentIndex));
            mFristIndex = mFristIndex + 1;
            return;
        }
    }

    protected void loadPreImg()
    {
        int i;
        if (mFristIndex != 0)
        {
            if ((i = mCurrentIndex - mCountOneScreen) >= 0)
            {
                int j = mContainer.getChildCount() - 1;
                mViewPos.remove(mContainer.getChildAt(j));
                mContainer.removeViewAt(j);
                View view = mAdapter.getView(i, null, mContainer);
                mViewPos.put(view, Integer.valueOf(i));
                mContainer.addView(view, 0);
                view.setOnClickListener(this);
                scrollTo(mChildWidth, 0);
                mCurrentIndex = mCurrentIndex - 1;
                mFristIndex = mFristIndex - 1;
                return;
            }
        }
    }

    public void onClick(View view)
    {
        if (mOnClickListener == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < mContainer.getChildCount()) goto _L4; else goto _L3
_L3:
        mOnClickListener.onClick(view, ((Integer)mViewPos.get(view)).intValue());
_L2:
        return;
_L4:
        mContainer.getChildAt(i).setBackgroundColor(-1);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        mContainer = (LinearLayout)getChildAt(0);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 2 2: default 24
    //                   2 30;
           goto _L1 _L2
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        int i = getScrollX();
        if (i >= mChildWidth)
        {
            loadNextImg();
        }
        if (i == 0)
        {
            loadPreImg();
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setCurrentImageChangeListener(CurrentImageChangeListener currentimagechangelistener)
    {
        mListener = currentimagechangelistener;
    }

    public void setOnItemClickListener(OnItemClickListener onitemclicklistener)
    {
        mOnClickListener = onitemclicklistener;
    }
}
