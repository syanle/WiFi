// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

public class XListViewHeader extends LinearLayout
{

    public static final int STATE_NORMAL = 0;
    public static final int STATE_READY = 1;
    public static final int STATE_REFRESHING = 2;
    private final int ROTATE_ANIM_DURATION;
    private ImageView mArrowImageView;
    private LinearLayout mContainer;
    private TextView mHintTextView;
    private ProgressBar mProgressBar;
    private Animation mRotateDownAnim;
    private Animation mRotateUpAnim;
    private int mState;

    public XListViewHeader(Context context)
    {
        super(context);
        mState = 0;
        ROTATE_ANIM_DURATION = 180;
        initView(context);
    }

    public XListViewHeader(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mState = 0;
        ROTATE_ANIM_DURATION = 180;
        initView(context);
    }

    private void initView(Context context)
    {
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, 0);
        mContainer = (LinearLayout)LayoutInflater.from(context).inflate(0x7f030039, null);
        addView(mContainer, layoutparams);
        setGravity(80);
        mArrowImageView = (ImageView)findViewById(0x7f0a00fc);
        mHintTextView = (TextView)findViewById(0x7f0a00fa);
        mProgressBar = (ProgressBar)findViewById(0x7f0a00fd);
        mRotateUpAnim = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        mRotateUpAnim.setDuration(180L);
        mRotateUpAnim.setFillAfter(true);
        mRotateDownAnim = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        mRotateDownAnim.setDuration(180L);
        mRotateDownAnim.setFillAfter(true);
    }

    public int getVisiableHeight()
    {
        return mContainer.getHeight();
    }

    public void setState(int i)
    {
        if (i == mState)
        {
            return;
        }
        if (i == 2)
        {
            mArrowImageView.clearAnimation();
            mArrowImageView.setVisibility(4);
            mProgressBar.setVisibility(0);
        } else
        {
            mArrowImageView.setVisibility(0);
            mProgressBar.setVisibility(4);
        }
        i;
        JVM INSTR tableswitch 0 2: default 64
    //                   0 89
    //                   1 135
    //                   2 173;
           goto _L1 _L2 _L3 _L4
_L1:
        mState = i;
        return;
_L2:
        if (mState == 1)
        {
            mArrowImageView.startAnimation(mRotateDownAnim);
        }
        if (mState == 2)
        {
            mArrowImageView.clearAnimation();
        }
        mHintTextView.setText(0x7f060071);
        continue; /* Loop/switch isn't completed */
_L3:
        if (mState != 1)
        {
            mArrowImageView.clearAnimation();
            mArrowImageView.startAnimation(mRotateUpAnim);
            mHintTextView.setText(0x7f060072);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        mHintTextView.setText(0x7f060073);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setVisiableHeight(int i)
    {
        int j = i;
        if (i < 0)
        {
            j = 0;
        }
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)mContainer.getLayoutParams();
        layoutparams.height = j;
        mContainer.setLayoutParams(layoutparams);
    }
}
