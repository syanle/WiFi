// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class PageInnerLoadingView extends LinearLayout
{

    private Context mContext;
    private AnimationDrawable mLoadingAnim;
    private ImageView mLoadingImage;
    private TextView mLoadingText;

    public PageInnerLoadingView(Context context)
    {
        super(context);
        mContext = context;
    }

    public PageInnerLoadingView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mContext = context;
        initView();
    }

    private void initView()
    {
        ((LayoutInflater)mContext.getSystemService("layout_inflater")).inflate(com.pubinfo.wifi_core.R.layout.page_inner_loading, this);
        mLoadingImage = (ImageView)findViewById(com.pubinfo.wifi_core.R.id.iv_page_inner_loading);
        mLoadingImage.measure(0, 0);
        mLoadingText = (TextView)findViewById(com.pubinfo.wifi_core.R.id.tv_page_inner_loading_text);
        mLoadingText.setHeight(mLoadingImage.getMeasuredHeight());
        mLoadingAnim = (AnimationDrawable)mLoadingImage.getBackground();
    }

    public void dismissPageInnerLoading()
    {
        stopLoadingAnimation();
        setVisibility(8);
    }

    public boolean isAgainShowLoading()
    {
        return !mLoadingText.isShown();
    }

    public void setLoadingText(CharSequence charsequence)
    {
        mLoadingText.setText(charsequence);
    }

    public void showPageInnerLoading()
    {
        showPageInnerLoading(getResources().getString(com.pubinfo.wifi_core.R.string.str_tv_loading_text));
    }

    public void showPageInnerLoading(String s)
    {
        mLoadingImage.setVisibility(0);
        setVisibility(0);
        startLoadingAnimation();
    }

    public void showPageInnerLoadingError()
    {
        showPageInnerLoadingNoDataOrError(getResources().getString(com.pubinfo.wifi_core.R.string.str_tv_get_data_err_text));
    }

    public void showPageInnerLoadingNoDataOrError(String s)
    {
        mLoadingImage.setVisibility(4);
        setLoadingText(s);
    }

    public void showPageInnerLoadingNodata()
    {
        showPageInnerLoadingNoDataOrError(getResources().getString(com.pubinfo.wifi_core.R.string.str_tv_no_data_text));
    }

    public void startLoadingAnimation()
    {
        if (mLoadingAnim.isRunning())
        {
            mLoadingAnim.stop();
        }
        mLoadingAnim.start();
    }

    public void stopLoadingAnimation()
    {
        mLoadingAnim.stop();
    }
}
