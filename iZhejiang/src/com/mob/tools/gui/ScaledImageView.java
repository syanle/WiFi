// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Ln;

public class ScaledImageView extends ImageView
    implements android.view.View.OnTouchListener
{
    public static interface OnMatrixChangedListener
    {

        public abstract void onMactrixChage(Matrix matrix1);
    }


    private static final int DRAG_1 = 1;
    private static final int DRAG_2 = 2;
    private static final int NONE = 0;
    private static final int ZOOM = 3;
    private Bitmap bitmap;
    private float distSquare;
    private float downPoint[];
    private int dragScrollMinDistSquare;
    private OnMatrixChangedListener listener;
    private Matrix matrix;
    private int mode;
    private Matrix savedMatrix;

    public ScaledImageView(Context context)
    {
        super(context);
        init(context);
    }

    public ScaledImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    public ScaledImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context);
    }

    private void init(Context context)
    {
        dragScrollMinDistSquare = ViewConfiguration.get(context).getScaledTouchSlop();
        dragScrollMinDistSquare = dragScrollMinDistSquare * dragScrollMinDistSquare;
        setOnTouchListener(this);
    }

    public Bitmap getCropedBitmap(Rect rect)
    {
        Bitmap bitmap1;
        try
        {
            bitmap1 = BitmapHelper.captureView(this, getWidth(), getHeight());
        }
        // Misplaced declaration of an exception variable
        catch (Rect rect)
        {
            Ln.w(rect);
            return null;
        }
        if (bitmap1 != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        Ln.w("ivPhoto.getDrawingCache() returns null", new Object[0]);
        return null;
        rect = Bitmap.createBitmap(bitmap1, rect.left, rect.top, rect.width(), rect.height());
        bitmap1.recycle();
        return rect;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR lookupswitch 7: default 788
    //                   0: 72
    //                   1: 155
    //                   2: 500
    //                   5: 250
    //                   6: 333
    //                   261: 375
    //                   262: 458;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L2:
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        savedMatrix = new Matrix();
        savedMatrix.set(matrix);
        downPoint = (new float[] {
            motionevent.getX(0), motionevent.getY(0)
        });
        mode = 1;
_L9:
        setImageMatrix(matrix);
        break MISSING_BLOCK_LABEL_790;
_L3:
        try
        {
            if (listener != null)
            {
                listener.onMactrixChage(matrix);
            }
            float f = motionevent.getX(0) - downPoint[0];
            float f2 = motionevent.getY(0) - downPoint[1];
            if (mode == 1 && f * f + f2 * f2 <= (float)dragScrollMinDistSquare)
            {
                performClick();
            }
            mode = 0;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            Ln.w(view);
            break MISSING_BLOCK_LABEL_790;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        float af[];
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        float f1;
        float f3;
        f1 = view[0] - af[0];
        f3 = view[1] - af[1];
        distSquare = f3 * f3 + f1 * f1;
        mode = 3;
        continue; /* Loop/switch isn't completed */
_L6:
        downPoint = (new float[] {
            motionevent.getX(1), motionevent.getY(1)
        });
        savedMatrix.set(matrix);
        mode = 2;
        continue; /* Loop/switch isn't completed */
_L7:
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        f1 = view[0] - af[0];
        f3 = view[1] - af[1];
        distSquare = f3 * f3 + f1 * f1;
        mode = 3;
        continue; /* Loop/switch isn't completed */
_L8:
        downPoint = (new float[] {
            motionevent.getX(0), motionevent.getY(0)
        });
        savedMatrix.set(matrix);
        mode = 1;
        continue; /* Loop/switch isn't completed */
_L4:
        if (mode == 1)
        {
            view = new float[2];
            view[0] = motionevent.getX(0);
            view[1] = motionevent.getY(0);
            matrix.set(savedMatrix);
            matrix.postTranslate(view[0] - downPoint[0], view[1] - downPoint[1]);
            continue; /* Loop/switch isn't completed */
        }
        if (mode == 2)
        {
            view = new float[2];
            view[0] = motionevent.getX(1);
            view[1] = motionevent.getY(1);
            matrix.set(savedMatrix);
            matrix.postTranslate(view[0] - downPoint[0], view[1] - downPoint[1]);
            continue; /* Loop/switch isn't completed */
        }
        if (mode != 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        view = new float[2];
        view[0] = motionevent.getX(0);
        view[1] = motionevent.getY(0);
        af = new float[2];
        af[0] = motionevent.getX(1);
        af[1] = motionevent.getY(1);
        f1 = view[0] - af[0];
        f3 = view[1] - af[1];
        matrix.set(savedMatrix);
        f1 = FloatMath.sqrt((f1 * f1 + f3 * f3) / distSquare);
        motionevent = new float[2];
        motionevent[0] = (view[0] + af[0]) / 2.0F;
        motionevent[1] = (view[1] + af[1]) / 2.0F;
        matrix.postScale(f1, f1, motionevent[0], motionevent[1]);
        if (true) goto _L9; else goto _L1
_L1:
        return false;
        return true;
    }

    public void rotateLeft()
    {
        float af[];
        Bitmap bitmap1;
        matrix = new Matrix();
        af = new float[9];
        af;
        af[0] = 0.0F;
        af[1] = 1.0F;
        af[2] = 0.0F;
        af[3] = -1F;
        af[4] = 0.0F;
        af[5] = 0.0F;
        af[6] = 0.0F;
        af[7] = 0.0F;
        af[8] = 1.0F;
        matrix.setValues(af);
        bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (!bitmap1.isRecycled())
        {
            bitmap.recycle();
            bitmap = bitmap1;
        }
        float af2[];
        setImageBitmap(bitmap);
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        matrix.getValues(af);
        int ai[] = new int[2];
        ai[0] = getWidth();
        ai[1] = getHeight();
        float af1[] = new float[2];
        af1[0] = af[0] * (float)bitmap.getWidth();
        af1[1] = af[4] * (float)bitmap.getHeight();
        af2 = new float[2];
        af2[0] = ((float)ai[0] - af1[0]) / 2.0F;
        af2[1] = ((float)ai[1] - af1[1]) / 2.0F;
        af[2] = af2[0];
        af[5] = af2[1];
        try
        {
            matrix.setValues(af);
            if (listener != null)
            {
                listener.onMactrixChage(matrix);
            }
            setImageMatrix(matrix);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
        }
        return;
    }

    public void rotateRight()
    {
        float af[];
        Bitmap bitmap1;
        matrix = new Matrix();
        af = new float[9];
        af;
        af[0] = 0.0F;
        af[1] = -1F;
        af[2] = 0.0F;
        af[3] = 1.0F;
        af[4] = 0.0F;
        af[5] = 0.0F;
        af[6] = 0.0F;
        af[7] = 0.0F;
        af[8] = 1.0F;
        matrix.setValues(af);
        bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (bitmap1 == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (!bitmap1.isRecycled())
        {
            bitmap.recycle();
            bitmap = bitmap1;
        }
        float af2[];
        setImageBitmap(bitmap);
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        matrix.getValues(af);
        int ai[] = new int[2];
        ai[0] = getWidth();
        ai[1] = getHeight();
        float af1[] = new float[2];
        af1[0] = af[0] * (float)bitmap.getWidth();
        af1[1] = af[4] * (float)bitmap.getHeight();
        af2 = new float[2];
        af2[0] = ((float)ai[0] - af1[0]) / 2.0F;
        af2[1] = ((float)ai[1] - af1[1]) / 2.0F;
        af[2] = af2[0];
        af[5] = af2[1];
        try
        {
            matrix.setValues(af);
            if (listener != null)
            {
                listener.onMactrixChage(matrix);
            }
            setImageMatrix(matrix);
            return;
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
        }
        return;
    }

    public void setBitmap(Bitmap bitmap1)
    {
        bitmap = bitmap1;
        setImageBitmap(bitmap1);
        float af[] = new int[2];
        af[0] = getWidth();
        af[1] = getHeight();
        bitmap1 = new int[2];
        bitmap1[0] = bitmap.getWidth();
        bitmap1[1] = bitmap.getHeight();
        int ai[] = BitmapHelper.fixRect(bitmap1, af);
        int ai1[] = new int[2];
        ai1[0] = (af[0] - ai[0]) / 2;
        ai1[1] = (af[1] - ai[1]) / 2;
        af = new float[2];
        af[0] = (float)ai[0] / (float)bitmap1[0];
        af[1] = (float)ai[1] / (float)bitmap1[1];
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        matrix.postScale(af[0], af[1]);
        matrix.postTranslate(ai1[0], ai1[1]);
        if (listener != null)
        {
            listener.onMactrixChage(matrix);
        }
        setImageMatrix(matrix);
    }

    public void setOnMatrixChangedListener(OnMatrixChangedListener onmatrixchangedlistener)
    {
        listener = onmatrixchangedlistener;
        if (matrix != null)
        {
            if (listener != null)
            {
                listener.onMactrixChage(matrix);
            }
            setImageMatrix(matrix);
        }
    }

    public void zoomIn()
    {
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        matrix.postScale(1.072F, 1.072F);
        if (listener != null)
        {
            listener.onMactrixChage(matrix);
        }
        setImageMatrix(matrix);
    }

    public void zoomOut()
    {
        matrix = new Matrix();
        matrix.set(getImageMatrix());
        matrix.postScale(0.933F, 0.933F);
        if (listener != null)
        {
            listener.onMactrixChage(matrix);
        }
        setImageMatrix(matrix);
    }
}
