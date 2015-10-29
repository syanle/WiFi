// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.mob.tools.FakeActivity;

public class PicViewer extends FakeActivity
    implements android.view.View.OnTouchListener
{

    static final int DRAG = 1;
    static final float MAX_SCALE = 10F;
    static final int NONE = 0;
    static final int ZOOM = 2;
    float dist;
    DisplayMetrics dm;
    private ImageView ivViewer;
    Matrix matrix;
    PointF mid;
    float minScaleR;
    int mode;
    private Bitmap pic;
    PointF prev;
    Matrix savedMatrix;

    public PicViewer()
    {
        matrix = new Matrix();
        savedMatrix = new Matrix();
        minScaleR = 1.0F;
        mode = 0;
        prev = new PointF();
        mid = new PointF();
        dist = 1.0F;
    }

    private void CheckView()
    {
        float af[] = new float[9];
        matrix.getValues(af);
        if (mode == 2)
        {
            if (af[0] < minScaleR)
            {
                matrix.setScale(minScaleR, minScaleR);
            }
            if (af[0] > 10F)
            {
                matrix.set(savedMatrix);
            }
        }
        center();
    }

    private void center()
    {
        center(true, true);
    }

    private void midPoint(PointF pointf, MotionEvent motionevent)
    {
        float f = motionevent.getX(0);
        float f1 = motionevent.getX(1);
        float f2 = motionevent.getY(0);
        float f3 = motionevent.getY(1);
        pointf.set((f + f1) / 2.0F, (f2 + f3) / 2.0F);
    }

    private void minZoom()
    {
        minScaleR = Math.min((float)dm.widthPixels / (float)pic.getWidth(), (float)dm.heightPixels / (float)pic.getHeight());
        matrix.setScale(minScaleR, minScaleR);
    }

    private float spacing(MotionEvent motionevent)
    {
        float f = motionevent.getX(0) - motionevent.getX(1);
        float f1 = motionevent.getY(0) - motionevent.getY(1);
        return FloatMath.sqrt(f * f + f1 * f1);
    }

    protected void center(boolean flag, boolean flag1)
    {
        Matrix matrix1 = new Matrix();
        matrix1.set(matrix);
        RectF rectf = new RectF(0.0F, 0.0F, pic.getWidth(), pic.getHeight());
        matrix1.mapRect(rectf);
        float f4 = rectf.height();
        float f3 = rectf.width();
        float f2 = 0.0F;
        float f1 = 0.0F;
        float f = f1;
        int i;
        if (flag1)
        {
            i = dm.heightPixels;
            if (f4 < (float)i)
            {
                f = ((float)i - f4) / 2.0F - rectf.top;
            } else
            if (rectf.top > 0.0F)
            {
                f = -rectf.top;
            } else
            {
                f = f1;
                if (rectf.bottom < (float)i)
                {
                    f = (float)ivViewer.getHeight() - rectf.bottom;
                }
            }
        }
        f1 = f2;
        if (flag)
        {
            i = dm.widthPixels;
            if (f3 < (float)i)
            {
                f1 = ((float)i - f3) / 2.0F - rectf.left;
            } else
            if (rectf.left > 0.0F)
            {
                f1 = -rectf.left;
            } else
            {
                f1 = f2;
                if (rectf.right < (float)i)
                {
                    f1 = (float)ivViewer.getWidth() - rectf.right;
                }
            }
        }
        matrix.postTranslate(f1, f);
    }

    public void onCreate()
    {
        ivViewer = new ImageView(activity);
        ivViewer.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
        ivViewer.setBackgroundColor(0xc0000000);
        ivViewer.setOnTouchListener(this);
        if (pic != null && !pic.isRecycled())
        {
            ivViewer.setImageBitmap(pic);
        }
        dm = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
        minZoom();
        CheckView();
        ivViewer.setImageMatrix(matrix);
        activity.setContentView(ivViewer);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 0 6: default 52
    //                   0 69
    //                   1 151
    //                   2 159
    //                   3 52
    //                   4 52
    //                   5 103
    //                   6 151;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L5 _L3
_L1:
        ivViewer.setImageMatrix(matrix);
        CheckView();
        return true;
_L2:
        savedMatrix.set(matrix);
        prev.set(motionevent.getX(), motionevent.getY());
        mode = 1;
        continue; /* Loop/switch isn't completed */
_L5:
        dist = spacing(motionevent);
        if (spacing(motionevent) > 10F)
        {
            savedMatrix.set(matrix);
            midPoint(mid, motionevent);
            mode = 2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        mode = 0;
        continue; /* Loop/switch isn't completed */
_L4:
        if (mode == 1)
        {
            matrix.set(savedMatrix);
            matrix.postTranslate(motionevent.getX() - prev.x, motionevent.getY() - prev.y);
        } else
        if (mode == 2)
        {
            float f = spacing(motionevent);
            if (f > 10F)
            {
                matrix.set(savedMatrix);
                f /= dist;
                matrix.postScale(f, f, mid.x, mid.y);
            }
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        pic = bitmap;
        if (ivViewer != null)
        {
            ivViewer.setImageBitmap(bitmap);
        }
    }
}
