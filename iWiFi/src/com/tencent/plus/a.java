// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;

// Referenced classes of package com.tencent.plus:
//            e

public class a extends ImageView
{

    final String a;
    public boolean b;
    private Matrix c;
    private Matrix d;
    private int e;
    private float f;
    private float g;
    private Bitmap h;
    private boolean i;
    private float j;
    private float k;
    private PointF l;
    private PointF m;
    private float n;
    private float o;
    private Rect p;

    public a(Context context)
    {
        super(context);
        c = new Matrix();
        d = new Matrix();
        e = 0;
        f = 1.0F;
        g = 1.0F;
        i = false;
        a = "TouchView";
        l = new PointF();
        m = new PointF();
        n = 1.0F;
        o = 0.0F;
        b = false;
        p = new Rect();
        getDrawingRect(p);
        a();
    }

    public a(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new Matrix();
        d = new Matrix();
        e = 0;
        f = 1.0F;
        g = 1.0F;
        i = false;
        a = "TouchView";
        l = new PointF();
        m = new PointF();
        n = 1.0F;
        o = 0.0F;
        b = false;
        p = new Rect();
        getDrawingRect(p);
        a();
    }

    private float a(MotionEvent motionevent)
    {
        if (motionevent.getPointerCount() < 2)
        {
            return 0.0F;
        } else
        {
            float f1 = motionevent.getX(0) - motionevent.getX(1);
            float f2 = motionevent.getY(0) - motionevent.getY(1);
            return FloatMath.sqrt(f1 * f1 + f2 * f2);
        }
    }

    private void a()
    {
    }

    private void a(PointF pointf)
    {
        float f3 = 1.0F;
        if (h == null)
        {
            return;
        }
        float af[] = new float[9];
        c.getValues(af);
        float f4 = af[2];
        float f5 = af[5];
        float f6 = af[0];
        float f8 = h.getWidth();
        float f7 = h.getHeight();
        float f2 = (float)p.left - f4;
        float f1 = f2;
        if (f2 <= 1.0F)
        {
            f1 = 1.0F;
        }
        f4 = (f4 + f8 * f6) - (float)p.right;
        f2 = f4;
        if (f4 <= 1.0F)
        {
            f2 = 1.0F;
        }
        f8 = (f1 * (float)p.width()) / (f2 + f1);
        float f9 = p.left;
        f2 = (float)p.top - f5;
        f4 = (f5 + f7 * f6) - (float)p.bottom;
        f1 = f2;
        if (f2 <= 1.0F)
        {
            f1 = 1.0F;
        }
        if (f4 <= 1.0F)
        {
            f2 = f3;
        } else
        {
            f2 = f4;
        }
        pointf.set(f8 + f9, ((float)p.height() * f1) / (f1 + f2) + (float)p.top);
    }

    static void a(a a1)
    {
        a1.b();
    }

    static boolean a(a a1, boolean flag)
    {
        a1.i = flag;
        return flag;
    }

    private void b()
    {
        if (h != null)
        {
            float f8 = p.width();
            float f3 = p.height();
            float af[] = new float[9];
            c.getValues(af);
            float f1 = af[2];
            float f2 = af[5];
            float f5 = af[0];
            Object obj = null;
            if (f5 > f)
            {
                o = f / f5;
                c.postScale(o, o, m.x, m.y);
                setImageMatrix(c);
                obj = new ScaleAnimation(1.0F / o, 1.0F, 1.0F / o, 1.0F, m.x, m.y);
            } else
            if (f5 < g)
            {
                o = g / f5;
                c.postScale(o, o, m.x, m.y);
                obj = new ScaleAnimation(1.0F, o, 1.0F, o, m.x, m.y);
            } else
            {
                boolean flag = false;
                float f9 = (float)h.getWidth() * f5;
                f5 *= h.getHeight();
                float f10 = (float)p.left - f1;
                float f7 = (float)p.top - f2;
                if (f10 < 0.0F)
                {
                    f1 = p.left;
                    flag = true;
                }
                if (f7 < 0.0F)
                {
                    f2 = p.top;
                    flag = true;
                }
                if (f9 - f10 < f8)
                {
                    f1 = (float)p.left - (f9 - f8);
                    flag = true;
                }
                if (f5 - f7 < f3)
                {
                    f2 = (float)p.top - (f5 - f3);
                    flag = true;
                }
                if (flag)
                {
                    float f4 = af[2];
                    float f6 = af[5];
                    af[2] = f1;
                    af[5] = f2;
                    c.setValues(af);
                    setImageMatrix(c);
                    obj = new TranslateAnimation(f4 - f1, 0.0F, f6 - f2, 0.0F);
                } else
                {
                    setImageMatrix(c);
                }
            }
            if (obj != null)
            {
                i = true;
                ((Animation) (obj)).setDuration(300L);
                startAnimation(((Animation) (obj)));
                (new Thread(new e(this))).start();
                return;
            }
        }
    }

    private void c()
    {
        if (h == null)
        {
            return;
        }
        float af[] = new float[9];
        c.getValues(af);
        float f1 = Math.max((float)p.width() / (float)h.getWidth(), (float)p.height() / (float)h.getHeight());
        j = (float)p.left - ((float)h.getWidth() * f1 - (float)p.width()) / 2.0F;
        k = (float)p.top - ((float)h.getHeight() * f1 - (float)p.height()) / 2.0F;
        af[2] = j;
        af[5] = k;
        af[4] = f1;
        af[0] = f1;
        c.setValues(af);
        f = Math.min(2048F / (float)h.getWidth(), 2048F / (float)h.getHeight());
        g = f1;
        if (f < g)
        {
            f = g;
        }
        setImageMatrix(c);
    }

    public void a(Rect rect)
    {
        p = rect;
        if (h != null)
        {
            c();
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (i)
        {
            return true;
        }
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 0 6: default 60
    //                   0 67
    //                   1 158
    //                   2 170
    //                   3 60
    //                   4 60
    //                   5 112
    //                   6 158;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L5 _L3
_L1:
        b = true;
        return true;
_L2:
        c.set(getImageMatrix());
        d.set(c);
        l.set(motionevent.getX(), motionevent.getY());
        e = 1;
        continue; /* Loop/switch isn't completed */
_L5:
        n = a(motionevent);
        if (n > 10F)
        {
            d.set(c);
            a(m);
            e = 2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        b();
        e = 0;
        continue; /* Loop/switch isn't completed */
_L4:
        if (e == 1)
        {
            c.set(d);
            float f1 = motionevent.getX();
            float f3 = l.x;
            float f4 = motionevent.getY();
            float f5 = l.y;
            c.postTranslate(f1 - f3, f4 - f5);
            setImageMatrix(c);
        } else
        if (e == 2)
        {
            c.set(c);
            float f2 = a(motionevent);
            if (f2 > 10F)
            {
                c.set(d);
                f2 /= n;
                c.postScale(f2, f2, m.x, m.y);
            }
            setImageMatrix(c);
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        h = bitmap;
        if (bitmap != null)
        {
            h = bitmap;
        }
    }
}
