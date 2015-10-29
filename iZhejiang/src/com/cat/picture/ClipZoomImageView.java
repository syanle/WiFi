// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.picture;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

public class ClipZoomImageView extends ImageView
    implements android.view.ScaleGestureDetector.OnScaleGestureListener, android.view.View.OnTouchListener, android.view.ViewTreeObserver.OnGlobalLayoutListener
{
    private class AutoScaleRunnable
        implements Runnable
    {

        static final float BIGGER = 1.07F;
        static final float SMALLER = 0.93F;
        private float mTargetScale;
        final ClipZoomImageView this$0;
        private float tmpScale;
        private float x;
        private float y;

        public void run()
        {
            mScaleMatrix.postScale(tmpScale, tmpScale, x, y);
            checkBorder();
            setImageMatrix(mScaleMatrix);
            float f = getScale();
            if (tmpScale > 1.0F && f < mTargetScale || tmpScale < 1.0F && mTargetScale < f)
            {
                postDelayed(this, 16L);
                return;
            } else
            {
                f = mTargetScale / f;
                mScaleMatrix.postScale(f, f, x, y);
                checkBorder();
                setImageMatrix(mScaleMatrix);
                isAutoScale = false;
                return;
            }
        }

        public AutoScaleRunnable(float f, float f1, float f2)
        {
            this$0 = ClipZoomImageView.this;
            super();
            mTargetScale = f;
            x = f1;
            y = f2;
            if (getScale() < mTargetScale)
            {
                tmpScale = 1.07F;
                return;
            } else
            {
                tmpScale = 0.93F;
                return;
            }
        }
    }


    public static float SCALE_MAX = 4F;
    private static float SCALE_MID = 2.0F;
    private static final String TAG = com/cat/picture/ClipZoomImageView.getSimpleName();
    private float initScale;
    private boolean isAutoScale;
    private boolean isCanDrag;
    private int lastPointerCount;
    private GestureDetector mGestureDetector;
    private int mHorizontalPadding;
    private float mLastX;
    private float mLastY;
    private ScaleGestureDetector mScaleGestureDetector;
    private final Matrix mScaleMatrix;
    private int mTouchSlop;
    private int mVerticalPadding;
    private final float matrixValues[];
    private boolean once;

    public ClipZoomImageView(Context context)
    {
        this(context, null);
    }

    public ClipZoomImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initScale = 1.0F;
        once = true;
        matrixValues = new float[9];
        mScaleGestureDetector = null;
        mScaleMatrix = new Matrix();
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
        mGestureDetector = new GestureDetector(context, new android.view.GestureDetector.SimpleOnGestureListener() {

            final ClipZoomImageView this$0;

            public boolean onDoubleTap(MotionEvent motionevent)
            {
                if (isAutoScale)
                {
                    return true;
                }
                float f = motionevent.getX();
                float f1 = motionevent.getY();
                if (getScale() < ClipZoomImageView.SCALE_MID)
                {
                    postDelayed(new AutoScaleRunnable(ClipZoomImageView.SCALE_MID, f, f1), 16L);
                    isAutoScale = true;
                    return true;
                } else
                {
                    postDelayed(new AutoScaleRunnable(initScale, f, f1), 16L);
                    isAutoScale = true;
                    return true;
                }
            }

            
            {
                this$0 = ClipZoomImageView.this;
                super();
            }
        });
        mScaleGestureDetector = new ScaleGestureDetector(context, this);
        setOnTouchListener(this);
    }

    private void checkBorder()
    {
        RectF rectf = getMatrixRectF();
        float f = 0.0F;
        float f3 = 0.0F;
        float f1 = 0.0F;
        float f2 = 0.0F;
        int i = getWidth();
        int j = getHeight();
        if ((double)rectf.width() + 0.01D >= (double)(i - mHorizontalPadding * 2))
        {
            f = f3;
            if (rectf.left > (float)mHorizontalPadding)
            {
                f = -rectf.left + (float)mHorizontalPadding;
            }
            if (rectf.right < (float)(i - mHorizontalPadding))
            {
                f = (float)(i - mHorizontalPadding) - rectf.right;
            }
        }
        if ((double)rectf.height() + 0.01D >= (double)(j - mVerticalPadding * 2))
        {
            f1 = f2;
            if (rectf.top > (float)mVerticalPadding)
            {
                f1 = -rectf.top + (float)mVerticalPadding;
            }
            if (rectf.bottom < (float)(j - mVerticalPadding))
            {
                f1 = (float)(j - mVerticalPadding) - rectf.bottom;
            }
        }
        mScaleMatrix.postTranslate(f, f1);
    }

    private RectF getMatrixRectF()
    {
        Matrix matrix = mScaleMatrix;
        RectF rectf = new RectF();
        Drawable drawable = getDrawable();
        if (drawable != null)
        {
            rectf.set(0.0F, 0.0F, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(rectf);
        }
        return rectf;
    }

    private boolean isCanDrag(float f, float f1)
    {
        return Math.sqrt(f * f + f1 * f1) >= (double)mTouchSlop;
    }

    public Bitmap clip()
    {
        Bitmap bitmap = Bitmap.createBitmap(getWidth(), getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmap));
        return Bitmap.createBitmap(bitmap, mHorizontalPadding, mVerticalPadding, getWidth() - mHorizontalPadding * 2, getWidth() - mHorizontalPadding * 2);
    }

    public final float getScale()
    {
        mScaleMatrix.getValues(matrixValues);
        return matrixValues[0];
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    public void onGlobalLayout()
    {
        Drawable drawable;
label0:
        {
            if (once)
            {
                drawable = getDrawable();
                if (drawable != null)
                {
                    break label0;
                }
            }
            return;
        }
        mVerticalPadding = (getHeight() - (getWidth() - mHorizontalPadding * 2)) / 2;
        int i = getWidth();
        int j = getHeight();
        int k = drawable.getIntrinsicWidth();
        int l = drawable.getIntrinsicHeight();
        float f1 = 1.0F;
        float f = f1;
        if (k < getWidth() - mHorizontalPadding * 2)
        {
            f = f1;
            if (l > getHeight() - mVerticalPadding * 2)
            {
                f = ((float)getWidth() * 1.0F - (float)(mHorizontalPadding * 2)) / (float)k;
            }
        }
        f1 = f;
        if (l < getHeight() - mVerticalPadding * 2)
        {
            f1 = f;
            if (k > getWidth() - mHorizontalPadding * 2)
            {
                f1 = ((float)getHeight() * 1.0F - (float)(mVerticalPadding * 2)) / (float)l;
            }
        }
        f = f1;
        if (k < getWidth() - mHorizontalPadding * 2)
        {
            f = f1;
            if (l < getHeight() - mVerticalPadding * 2)
            {
                f = Math.max(((float)getWidth() * 1.0F - (float)(mHorizontalPadding * 2)) / (float)k, ((float)getHeight() * 1.0F - (float)(mVerticalPadding * 2)) / (float)l);
            }
        }
        initScale = f;
        SCALE_MID = initScale * 2.0F;
        SCALE_MAX = initScale * 4F;
        mScaleMatrix.postTranslate((i - k) / 2, (j - l) / 2);
        mScaleMatrix.postScale(f, f, getWidth() / 2, getHeight() / 2);
        setImageMatrix(mScaleMatrix);
        once = false;
    }

    public boolean onScale(ScaleGestureDetector scalegesturedetector)
    {
        float f2 = getScale();
        float f1;
        for (f1 = scalegesturedetector.getScaleFactor(); getDrawable() == null || (f2 >= SCALE_MAX || f1 <= 1.0F) && (f2 <= initScale || f1 >= 1.0F);)
        {
            return true;
        }

        float f = f1;
        if (f1 * f2 < initScale)
        {
            f = initScale / f2;
        }
        f1 = f;
        if (f * f2 > SCALE_MAX)
        {
            f1 = SCALE_MAX / f2;
        }
        mScaleMatrix.postScale(f1, f1, scalegesturedetector.getFocusX(), scalegesturedetector.getFocusY());
        checkBorder();
        setImageMatrix(mScaleMatrix);
        return true;
    }

    public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
    {
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
    {
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (mGestureDetector.onTouchEvent(motionevent))
        {
            return true;
        }
        mScaleGestureDetector.onTouchEvent(motionevent);
        float f1 = 0.0F;
        float f = 0.0F;
        int j = motionevent.getPointerCount();
        int i = 0;
        float f2;
        float f3;
        do
        {
            if (i >= j)
            {
                f2 = f1 / (float)j;
                f3 = f / (float)j;
                if (j != lastPointerCount)
                {
                    isCanDrag = false;
                    mLastX = f2;
                    mLastY = f3;
                }
                lastPointerCount = j;
                switch (motionevent.getAction())
                {
                default:
                    return true;

                case 1: // '\001'
                case 3: // '\003'
                    lastPointerCount = 0;
                    return true;

                case 2: // '\002'
                    f = f2 - mLastX;
                    break;
                }
                break;
            }
            f1 += motionevent.getX(i);
            f += motionevent.getY(i);
            i++;
        } while (true);
        f1 = f3 - mLastY;
        if (!isCanDrag)
        {
            isCanDrag = isCanDrag(f, f1);
        }
        if (isCanDrag && getDrawable() != null)
        {
            view = getMatrixRectF();
            if (view.width() <= (float)(getWidth() - mHorizontalPadding * 2))
            {
                f = 0.0F;
            }
            if (view.height() <= (float)(getHeight() - mVerticalPadding * 2))
            {
                f1 = 0.0F;
            }
            mScaleMatrix.postTranslate(f, f1);
            checkBorder();
            setImageMatrix(mScaleMatrix);
        }
        mLastX = f2;
        mLastY = f3;
        return true;
    }

    public void setHorizontalPadding(int i)
    {
        mHorizontalPadding = i;
    }







}
