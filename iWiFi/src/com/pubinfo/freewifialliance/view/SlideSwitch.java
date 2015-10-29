// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

public class SlideSwitch extends View
{
    private class AnimationTransRunnable
        implements Runnable
    {

        private int dstX;
        private int duration;
        private int srcX;
        final SlideSwitch this$0;

        public void run()
        {
            byte byte0;
            if (dstX > srcX)
            {
                byte0 = 5;
            } else
            {
                byte0 = -5;
            }
            if (duration == 0)
            {
                mSwitchStatus = 2;
                postInvalidate();
                return;
            }
            Log.d("SlideSwitch", (new StringBuilder("start Animation: [ ")).append(srcX).append(" , ").append(dstX).append(" ]").toString());
            int i = srcX + byte0;
            do
            {
                if (Math.abs(i - dstX) <= 5)
                {
                    mDstX = dstX;
                    SlideSwitch slideswitch = SlideSwitch.this;
                    InterruptedException interruptedexception;
                    if (mDstX > 35)
                    {
                        byte0 = 1;
                    } else
                    {
                        byte0 = 0;
                    }
                    slideswitch.mSwitchStatus = byte0;
                    postInvalidate();
                    return;
                }
                mDstX = i;
                mSwitchStatus = 2;
                postInvalidate();
                i += byte0;
                try
                {
                    Thread.sleep(10L);
                }
                // Misplaced declaration of an exception variable
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
            } while (true);
        }

        public AnimationTransRunnable(float f, float f1, int i)
        {
            this$0 = SlideSwitch.this;
            super();
            srcX = (int)f;
            dstX = (int)f1;
            duration = i;
        }
    }

    public static interface OnSwitchChangedListener
    {

        public abstract void onSwitchChanged(SlideSwitch slideswitch, int i);
    }


    public static final int SWITCH_OFF = 0;
    public static final int SWITCH_ON = 1;
    public static final int SWITCH_SCROLING = 2;
    public static final String TAG = "SlideSwitch";
    private int mBmpHeight;
    private int mBmpWidth;
    private int mDstX;
    private boolean mHasScrolled;
    private String mOffText;
    private OnSwitchChangedListener mOnSwitchChangedListener;
    private String mOnText;
    private Paint mPaint;
    private int mSrcX;
    private int mSwitchStatus;
    Bitmap mSwitch_off;
    Bitmap mSwitch_on;
    Bitmap mSwitch_thumb;
    private int mThumbWidth;

    public SlideSwitch(Context context, int i)
    {
        super(context);
        mOnText = "";
        mOffText = "";
        mSwitchStatus = 1;
        mHasScrolled = false;
        mSrcX = 0;
        mDstX = 0;
        mBmpWidth = 0;
        mBmpHeight = 0;
        mThumbWidth = 0;
        mPaint = new Paint(1);
        mOnSwitchChangedListener = null;
        mSwitchStatus = i;
        init();
    }

    public SlideSwitch(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mOnText = "";
        mOffText = "";
        mSwitchStatus = 1;
        mHasScrolled = false;
        mSrcX = 0;
        mDstX = 0;
        mBmpWidth = 0;
        mBmpHeight = 0;
        mThumbWidth = 0;
        mPaint = new Paint(1);
        mOnSwitchChangedListener = null;
        init();
    }

    public SlideSwitch(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mOnText = "";
        mOffText = "";
        mSwitchStatus = 1;
        mHasScrolled = false;
        mSrcX = 0;
        mDstX = 0;
        mBmpWidth = 0;
        mBmpHeight = 0;
        mThumbWidth = 0;
        mPaint = new Paint(1);
        mOnSwitchChangedListener = null;
        init();
    }

    private void init()
    {
        android.content.res.Resources resources = getResources();
        mSwitch_off = BitmapFactory.decodeResource(resources, 0x7f020057);
        mSwitch_on = BitmapFactory.decodeResource(resources, 0x7f020058);
        mSwitch_thumb = BitmapFactory.decodeResource(resources, 0x7f020059);
        mBmpWidth = mSwitch_on.getWidth();
        mBmpHeight = mSwitch_on.getHeight();
        mThumbWidth = mSwitch_thumb.getWidth();
    }

    public void drawBitmap(Canvas canvas, Rect rect, Rect rect1, Bitmap bitmap)
    {
        Rect rect2 = rect1;
        if (rect1 == null)
        {
            rect2 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        canvas.drawBitmap(bitmap, rect, rect2, new Paint());
    }

    public int getStatus()
    {
        return mSwitchStatus;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        mPaint.setTextSize(14F);
        mPaint.setTypeface(Typeface.DEFAULT_BOLD);
        if (mSwitchStatus == 0)
        {
            drawBitmap(canvas, null, null, mSwitch_off);
            drawBitmap(canvas, null, null, mSwitch_thumb);
            mPaint.setColor(Color.rgb(105, 105, 105));
            canvas.translate(mSwitch_thumb.getWidth(), 0.0F);
            canvas.drawText(mOffText, 0.0F, 20F, mPaint);
            return;
        }
        if (mSwitchStatus == 1)
        {
            drawBitmap(canvas, null, null, mSwitch_on);
            int i = canvas.save();
            canvas.translate(mSwitch_on.getWidth() - mSwitch_thumb.getWidth(), 0.0F);
            drawBitmap(canvas, null, null, mSwitch_thumb);
            mPaint.setColor(-1);
            canvas.restoreToCount(i);
            canvas.drawText(mOnText, 17F, 20F, mPaint);
            return;
        }
        int j;
        if (mDstX > 35)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        mSwitchStatus = j;
        drawBitmap(canvas, new Rect(0, 0, mDstX, mBmpHeight), new Rect(0, 0, mDstX, mBmpHeight), mSwitch_on);
        mPaint.setColor(-1);
        canvas.drawText(mOnText, 17F, 20F, mPaint);
        j = canvas.save();
        canvas.translate(mDstX, 0.0F);
        drawBitmap(canvas, new Rect(mDstX, 0, mBmpWidth, mBmpHeight), new Rect(0, 0, mBmpWidth - mDstX, mBmpHeight), mSwitch_off);
        canvas.restoreToCount(j);
        j = canvas.save();
        canvas.clipRect(mDstX, 0, mBmpWidth, mBmpHeight);
        canvas.translate(mThumbWidth, 0.0F);
        mPaint.setColor(Color.rgb(105, 105, 105));
        canvas.drawText(mOffText, 0.0F, 20F, mPaint);
        canvas.restoreToCount(j);
        j = canvas.save();
        canvas.translate(mDstX - mThumbWidth / 2, 0.0F);
        drawBitmap(canvas, null, null, mSwitch_thumb);
        canvas.restoreToCount(j);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        i = motionevent.getAction();
        Log.d("SlideSwitch", (new StringBuilder("onTouchEvent  x=")).append(motionevent.getX()).toString());
        i;
        JVM INSTR tableswitch 0 1: default 52
    //                   0 54
    //                   1 65;
           goto _L1 _L2 _L3
_L1:
        return true;
_L2:
        mSrcX = (int)motionevent.getX();
        return true;
_L3:
        if (!mHasScrolled)
        {
            mSwitchStatus = Math.abs(mSwitchStatus - 1);
            int j = 10;
            int k = 62;
            if (mSwitchStatus == 0)
            {
                j = 62;
                k = 10;
            }
            (new Thread(new AnimationTransRunnable(j, k, 1))).start();
        } else
        {
            invalidate();
            mHasScrolled = false;
        }
        if (mOnSwitchChangedListener != null)
        {
            mOnSwitchChangedListener.onSwitchChanged(this, mSwitchStatus);
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void setLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        layoutparams.width = mBmpWidth;
        layoutparams.height = mBmpHeight;
        super.setLayoutParams(layoutparams);
    }

    public void setOnSwitchChangedListener(OnSwitchChangedListener onswitchchangedlistener)
    {
        mOnSwitchChangedListener = onswitchchangedlistener;
    }

    public void setStatus(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        mSwitchStatus = i;
        if (!mHasScrolled)
        {
            i = 10;
            int j = 62;
            if (mSwitchStatus == 0)
            {
                i = 62;
                j = 10;
            }
            (new Thread(new AnimationTransRunnable(i, j, 1))).start();
        } else
        {
            invalidate();
            mHasScrolled = false;
        }
        if (mOnSwitchChangedListener != null)
        {
            mOnSwitchChangedListener.onSwitchChanged(this, mSwitchStatus);
        }
    }

    public void setText(String s, String s1)
    {
        mOnText = s;
        mOffText = s1;
        invalidate();
    }



}
