// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

public class ClipImageBorderView extends View
{

    private int mBorderColor;
    private int mBorderWidth;
    private int mHorizontalPadding;
    private Paint mPaint;
    private int mVerticalPadding;
    private int mWidth;

    public ClipImageBorderView(Context context)
    {
        this(context, null);
    }

    public ClipImageBorderView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ClipImageBorderView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mBorderColor = Color.parseColor("#FFFFFF");
        mBorderWidth = 1;
        mBorderWidth = (int)TypedValue.applyDimension(1, mBorderWidth, getResources().getDisplayMetrics());
        mPaint = new Paint();
        mPaint.setAntiAlias(true);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        mWidth = getWidth() - mHorizontalPadding * 2;
        mVerticalPadding = (getHeight() - mWidth) / 2;
        mPaint.setColor(Color.parseColor("#aa000000"));
        mPaint.setStyle(android.graphics.Paint.Style.FILL);
        canvas.drawRect(0.0F, 0.0F, mHorizontalPadding, getHeight(), mPaint);
        canvas.drawRect(getWidth() - mHorizontalPadding, 0.0F, getWidth(), getHeight(), mPaint);
        canvas.drawRect(mHorizontalPadding, 0.0F, getWidth() - mHorizontalPadding, mVerticalPadding, mPaint);
        canvas.drawRect(mHorizontalPadding, getHeight() - mVerticalPadding, getWidth() - mHorizontalPadding, getHeight(), mPaint);
        mPaint.setColor(mBorderColor);
        mPaint.setStrokeWidth(mBorderWidth);
        mPaint.setStyle(android.graphics.Paint.Style.STROKE);
        canvas.drawRect(mHorizontalPadding, mVerticalPadding, getWidth() - mHorizontalPadding, getHeight() - mVerticalPadding, mPaint);
    }

    public void setHorizontalPadding(int i)
    {
        mHorizontalPadding = i;
    }
}
