// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.TextView;

public class ExpandableTextView3 extends TextView
{
    private class ExpandAnimation extends Animation
    {

        private final int mDistance;
        private final int mStartHeight;
        final ExpandableTextView3 this$0;

        protected void applyTransformation(float f, Transformation transformation)
        {
            changeExpanderHeight(mStartHeight + Math.round((float)mDistance * f));
        }

        public ExpandAnimation()
        {
            this$0 = ExpandableTextView3.this;
            super();
            int i;
            if (mExpanded)
            {
                mStartHeight = mOriginalHeight;
                i = mCollapseHeight;
            } else
            {
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

        final ExpandableTextView3 this$0;

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
            this$0 = ExpandableTextView3.this;
            super();
        }

        ExpandAnimationListener(ExpandAnimationListener expandanimationlistener)
        {
            this();
        }
    }

    public static interface OnCollapseListener
    {

        public abstract void onCollapse(ExpandableTextView3 expandabletextview3);
    }

    public static interface OnExpandListener
    {

        public abstract void onExpand(ExpandableTextView3 expandabletextview3);
    }


    private static final long DEFAULT_ANIMATION_DURATION = 400L;
    private static final boolean DEFAULT_EXPANDED = false;
    private static final int DEFAULT_MIN_LINES = 1;
    public static final int EXPANDER_MAX_LINES = 0x7fffffff;
    private boolean mAnimating;
    private long mAnimationDuration;
    private int mCollapseHeight;
    private boolean mExpanded;
    private boolean mInitialized;
    private int mMinLines;
    private OnCollapseListener mOnCollapseListener;
    private OnExpandListener mOnExpandListener;
    private int mOriginalHeight;
    private int mOriginalWidth;

    public ExpandableTextView3(Context context)
    {
        super(context);
        mExpanded = false;
        mMinLines = 1;
        mAnimationDuration = 400L;
        init(context, null);
    }

    public ExpandableTextView3(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mExpanded = false;
        mMinLines = 1;
        mAnimationDuration = 400L;
        init(context, attributeset);
    }

    public ExpandableTextView3(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mExpanded = false;
        mMinLines = 1;
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

    private void init(Context context, AttributeSet attributeset)
    {
        context = context.obtainStyledAttributes(attributeset, R.styleable.ExpandableTextView2);
        mExpanded = context.getBoolean(0, false);
        mMinLines = context.getInteger(1, 1);
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

    public boolean isAnimating()
    {
        return mAnimating;
    }

    public boolean isExpanded()
    {
        return mExpanded;
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
            setTag(0x7f0a0012, null);
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

    public void setAnimationDuration(long l)
    {
        mAnimationDuration = l;
    }

    public void setExpanded(boolean flag)
    {
        mExpanded = flag;
        mAnimating = false;
        setMaxLines(0x7fffffff);
    }

    public ExpandableTextView3 setOnCollapseListener(OnCollapseListener oncollapselistener)
    {
        mOnCollapseListener = oncollapselistener;
        return this;
    }

    public ExpandableTextView3 setOnExpandListener(OnExpandListener onexpandlistener)
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
            expand(flag);
            return;
        }
    }









}
