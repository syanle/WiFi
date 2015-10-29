// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import com.pubinfo.freewifialliance.view.adpter.IconPagerAdapter;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            PageIndicator, IcsLinearLayout

public class IconPageIndicator extends HorizontalScrollView
    implements PageIndicator
{

    private Runnable mIconSelector;
    private final IcsLinearLayout mIconsLayout;
    private android.support.v4.view.ViewPager.OnPageChangeListener mListener;
    private int mSelectedIndex;
    private ViewPager mViewPager;

    public IconPageIndicator(Context context)
    {
        this(context, null);
    }

    public IconPageIndicator(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setHorizontalScrollBarEnabled(false);
        mIconsLayout = new IcsLinearLayout(context, 0x7f010001);
        addView(mIconsLayout, new android.widget.FrameLayout.LayoutParams(-2, -1, 17));
    }

    private void animateToIcon(int i)
    {
        final View iconView = mIconsLayout.getChildAt(i);
        if (mIconSelector != null)
        {
            removeCallbacks(mIconSelector);
        }
        mIconSelector = new Runnable() {

            final IconPageIndicator this$0;
            private final View val$iconView;

            public void run()
            {
                int j = iconView.getLeft();
                int k = (getWidth() - iconView.getWidth()) / 2;
                smoothScrollTo(j - k, 0);
                mIconSelector = null;
            }

            
            {
                this$0 = IconPageIndicator.this;
                iconView = view;
                super();
            }
        };
        post(mIconSelector);
    }

    public void notifyDataSetChanged()
    {
        mIconsLayout.removeAllViews();
        IconPagerAdapter iconpageradapter = (IconPagerAdapter)mViewPager.getAdapter();
        int j = iconpageradapter.getCount();
        int i = 0;
        do
        {
            if (i >= j)
            {
                if (mSelectedIndex > j)
                {
                    mSelectedIndex = j - 1;
                }
                setCurrentItem(mSelectedIndex);
                requestLayout();
                return;
            }
            ImageView imageview = new ImageView(getContext(), null, 0x7f010001);
            imageview.setImageResource(iconpageradapter.getIconResId(i));
            mIconsLayout.addView(imageview);
            i++;
        } while (true);
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (mIconSelector != null)
        {
            post(mIconSelector);
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (mIconSelector != null)
        {
            removeCallbacks(mIconSelector);
        }
    }

    public void onPageScrollStateChanged(int i)
    {
        if (mListener != null)
        {
            mListener.onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int j)
    {
        if (mListener != null)
        {
            mListener.onPageScrolled(i, f, j);
        }
    }

    public void onPageSelected(int i)
    {
        setCurrentItem(i);
        if (mListener != null)
        {
            mListener.onPageSelected(i);
        }
    }

    public void setCurrentItem(int i)
    {
        if (mViewPager == null)
        {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        mSelectedIndex = i;
        mViewPager.setCurrentItem(i);
        int k = mIconsLayout.getChildCount();
        int j = 0;
        do
        {
            if (j >= k)
            {
                return;
            }
            View view = mIconsLayout.getChildAt(j);
            boolean flag;
            if (j == i)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view.setSelected(flag);
            if (flag)
            {
                animateToIcon(i);
            }
            j++;
        } while (true);
    }

    public void setOnPageChangeListener(android.support.v4.view.ViewPager.OnPageChangeListener onpagechangelistener)
    {
        mListener = onpagechangelistener;
    }

    public void setViewPager(ViewPager viewpager)
    {
        if (mViewPager == viewpager)
        {
            return;
        }
        if (mViewPager != null)
        {
            mViewPager.setOnPageChangeListener(null);
        }
        if (viewpager.getAdapter() == null)
        {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        } else
        {
            mViewPager = viewpager;
            viewpager.setOnPageChangeListener(this);
            notifyDataSetChanged();
            return;
        }
    }

    public void setViewPager(ViewPager viewpager, int i)
    {
        setViewPager(viewpager);
        setCurrentItem(i);
    }

}
