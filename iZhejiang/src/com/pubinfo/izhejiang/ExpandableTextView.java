// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

public class ExpandableTextView extends TextView
{

    private static int MAX_LINE_NUM = 20;
    private static int MIN_LINE_NUM = 1;
    Bitmap bitmapDown;
    Bitmap bitmapUp;
    int h;
    private int lineNum;
    private boolean mIsExpanded;
    private android.view.View.OnClickListener mOnClickListener;
    int tag;
    int w;

    public ExpandableTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        lineNum = MIN_LINE_NUM;
        mIsExpanded = false;
        init(context, attributeset);
    }

    private void init(Context context, AttributeSet attributeset)
    {
        setMaxLines(lineNum);
        setMinLines(1);
        bitmapDown = BitmapFactory.decodeResource(getResources(), 0x7f020128);
        bitmapUp = BitmapFactory.decodeResource(getResources(), 0x7f020129);
        w = bitmapDown.getWidth() + (int)context.getResources().getDimension(0x7f090003);
        h = bitmapDown.getHeight() + (int)context.getResources().getDimension(0x7f090004);
        super.setOnClickListener(new android.view.View.OnClickListener() {

            final ExpandableTextView this$0;

            public void onClick(View view)
            {
                if (lineNum == ExpandableTextView.MIN_LINE_NUM)
                {
                    lineNum = ExpandableTextView.MAX_LINE_NUM;
                    setMaxLines(lineNum);
                } else
                {
                    lineNum = ExpandableTextView.MIN_LINE_NUM;
                    setMaxLines(lineNum);
                }
                if (mOnClickListener != null)
                {
                    mOnClickListener.onClick(view);
                }
            }

            
            {
                this$0 = ExpandableTextView.this;
                super();
            }
        });
    }

    public boolean isExpanded()
    {
        return mIsExpanded;
    }

    public void setMaxLine(int i)
    {
        lineNum = i;
        setMaxLines(i);
    }

    public void setMaxLines(int i)
    {
        super.setMaxLines(i);
        if (getLineCount() < MIN_LINE_NUM || getLineCount() == MIN_LINE_NUM)
        {
            mIsExpanded = false;
        }
        if (tag == 1)
        {
            mIsExpanded = false;
            return;
        }
        if (lineNum == MAX_LINE_NUM)
        {
            mIsExpanded = true;
            return;
        } else
        {
            mIsExpanded = false;
            return;
        }
    }

    public void setMinLines(int i)
    {
        super.setMinLines(i);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        if (!isClickable())
        {
            setClickable(true);
        }
        mOnClickListener = onclicklistener;
    }

    public void setTag(int i)
    {
        tag = i;
    }






}
