// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.TextView;

public class ExpandableTextView2 extends TextView
{
    class ExpandAnimRunnable
        implements Runnable
    {

        final ExpandableTextView2 this$0;

        public void run()
        {
            startAnimation(new ExpandAnimation());
        }

        ExpandAnimRunnable()
        {
            this$0 = ExpandableTextView2.this;
            super();
        }
    }

    private class ExpandAnimation extends Animation
    {

        private final int mDistance;
        private final int mStartHeight;
        final ExpandableTextView2 this$0;

        protected void applyTransformation(float f, Transformation transformation)
        {
            changeExpanderHeight(mStartHeight + Math.round((float)mDistance * f));
        }

        public ExpandAnimation()
        {
            this$0 = ExpandableTextView2.this;
            super();
            int i;
            if (mExpanded)
            {
                mStartHeight = mOriginalHeight;
                i = mCollapseHeight;
            } else
            {
                changeExpanderHeight(mCollapseHeight);
                mStartHeight = mCollapseHeight;
                i = mOriginalHeight;
                setMaxLines(0x7fffffff);
            }
            mDistance = i - mStartHeight;
            setDuration(mAnimationDuration);
            setAnimationListener(new ExpandAnimationListener(null));
        }
    }

    private class ExpandAnimationListener
        implements android.view.animation.Animation.AnimationListener
    {

        final ExpandableTextView2 this$0;

        public void onAnimationEnd(Animation animation)
        {
            mAnimating = false;
            if (!mExpanded)
            {
                setMaxLines(mMinLines);
                toggleOnCollapseListener();
                return;
            } else
            {
                toggleOnExpandListener();
                return;
            }
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            mAnimating = true;
        }

        private ExpandAnimationListener()
        {
            this$0 = ExpandableTextView2.this;
            super();
        }

        ExpandAnimationListener(ExpandAnimationListener expandanimationlistener)
        {
            this();
        }
    }

    public static interface OnCallBack
    {

        public abstract void onCallBack(ExpandableTextView2 expandabletextview2);
    }

    public static interface OnCollapseListener
    {

        public abstract void onCollapse(ExpandableTextView2 expandabletextview2);
    }

    public static interface OnExpandListener
    {

        public abstract void onExpand(ExpandableTextView2 expandabletextview2);
    }


    public static final long DEFAULT_ANIMATION_DURATION = 400L;
    private static final boolean DEFAULT_EXPANDED = false;
    private static final int DEFAULT_MIN_LINES = 2;
    public static final int EXPANDER_MAX_LINES = 0x7fffffff;
    private boolean mAnimating;
    private long mAnimationDuration;
    private int mCollapseHeight;
    private ExpandAnimation mExpandAnim;
    private boolean mExpanded;
    private boolean mInitialized;
    private int mMinLines;
    private boolean mNeedExpanded;
    private OnCollapseListener mOnCollapseListener;
    private OnExpandListener mOnExpandListener;
    private int mOriginalHeight;
    private int mOriginalWidth;

    public ExpandableTextView2(Context context)
    {
        super(context);
        mMinLines = 2;
        mExpanded = false;
        mNeedExpanded = false;
        mExpandAnim = null;
        mAnimationDuration = 400L;
        init(context, null);
    }

    public ExpandableTextView2(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mMinLines = 2;
        mExpanded = false;
        mNeedExpanded = false;
        mExpandAnim = null;
        mAnimationDuration = 400L;
        init(context, attributeset);
    }

    public ExpandableTextView2(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mMinLines = 2;
        mExpanded = false;
        mNeedExpanded = false;
        mExpandAnim = null;
        mAnimationDuration = 400L;
        init(context, attributeset);
    }

    private void changeExpanderHeight(int i)
    {
        android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
        layoutparams.width = mOriginalWidth;
        layoutparams.height = i;
        setLayoutParams(layoutparams);
    }

    private int getAvailableWidth()
    {
        return getWidth() - getPaddingLeft() - getPaddingRight();
    }

    private void init(Context context, AttributeSet attributeset)
    {
        context = context.obtainStyledAttributes(attributeset, R.styleable.ExpandableTextView2);
        mExpanded = context.getBoolean(0, false);
        mMinLines = context.getInteger(1, 2);
        context.recycle();
    }

    private void toggleOnCollapseListener()
    {
        if (mOnCollapseListener != null)
        {
            mOnCollapseListener.onCollapse(this);
        }
    }

    private void toggleOnExpandListener()
    {
        if (mOnExpandListener != null)
        {
            mOnExpandListener.onExpand(this);
        }
    }

    public void collapse()
    {
        collapse(true);
    }

    public void collapse(boolean flag)
    {
        if (mAnimating)
        {
            return;
        }
        if (flag)
        {
            mAnimating = true;
            startAnimation(new ExpandAnimation());
        } else
        {
            setMaxLines(mMinLines);
            toggleOnCollapseListener();
        }
        mExpanded = false;
    }

    public void expand()
    {
        expand(true);
    }

    public void expand(boolean flag)
    {
        if (mAnimating)
        {
            return;
        }
        if (flag)
        {
            mAnimating = true;
            startAnimation(new ExpandAnimation());
        } else
        {
            setMaxLines(0x7fffffff);
            toggleOnExpandListener();
        }
        mExpanded = true;
    }

    public void foceInit()
    {
        mInitialized = false;
        mOriginalWidth = 0;
        mOriginalHeight = 0;
        setMaxLines(0x7fffffff);
        mCollapseHeight = 0;
        mNeedExpanded = false;
        mExpanded = false;
    }

    public boolean getExpanded()
    {
        return mExpanded;
    }

    public boolean getTextViewNeededExpand()
    {
        return mNeedExpanded;
    }

    public boolean isOverFlowed()
    {
        return getPaint().measureText(getText().toString()) > (float)getAvailableWidth();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (!mInitialized)
        {
            mOriginalWidth = getMeasuredWidth();
            mOriginalHeight = getMeasuredHeight();
            setMaxLines(mMinLines);
            super.onMeasure(i, j);
            mCollapseHeight = getMeasuredHeight();
            mInitialized = true;
            if (mOriginalHeight > mCollapseHeight)
            {
                mNeedExpanded = true;
            } else
            {
                mNeedExpanded = false;
            }
            j = mOriginalWidth;
            if (mExpanded)
            {
                i = mOriginalHeight;
            } else
            {
                i = mCollapseHeight;
            }
            setMeasuredDimension(j, i);
        } else
        if (getTag(0x7f0a0012) != null && !mAnimating)
        {
            mOriginalWidth = getMeasuredWidth();
            i = getLineHeight();
            mOriginalHeight = getLineCount() * i + 1;
            mCollapseHeight = mMinLines * i + 1;
            j = mOriginalWidth;
            if (mExpanded)
            {
                i = mOriginalHeight;
            } else
            {
                i = mCollapseHeight;
            }
            setMeasuredDimension(j, i);
            return;
        }
    }

    public void setExpanded(boolean flag)
    {
        mExpanded = flag;
        mAnimating = false;
        setMaxLines(0x7fffffff);
    }

    public ExpandableTextView2 setOnCollapseListener(OnCollapseListener oncollapselistener)
    {
        mOnCollapseListener = oncollapselistener;
        return this;
    }

    public ExpandableTextView2 setOnExpandListener(OnExpandListener onexpandlistener)
    {
        mOnExpandListener = onexpandlistener;
        return this;
    }

    public void toggle()
    {
        toggle(true);
    }

    public void toggle(boolean flag)
    {
        if (mExpanded)
        {
            collapse(flag);
            return;
        } else
        {
            expand(true);
            return;
        }
    }









}
