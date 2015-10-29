// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.Context;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

// Referenced classes of package net.youmi.android.c.a:
//            r, q

public class p extends ImageView
{

    private float a;
    private float b;
    private android.view.ViewTreeObserver.OnPreDrawListener c;

    public p(Context context)
    {
        super(context);
        a = 0.0F;
        b = 0.0F;
        c = null;
    }

    static android.view.ViewTreeObserver.OnPreDrawListener a(p p1)
    {
        return p1.c;
    }

    static float b(p p1)
    {
        return p1.a;
    }

    static float c(p p1)
    {
        return p1.b;
    }

    public void setAccordionPivotWidth(float f)
    {
        setScaleX(f);
        setPivotX(getWidth());
    }

    public void setAccordionPivotZero(float f)
    {
        setScaleX(f);
        setPivotX(0.0F);
    }

    public void setCube(float f)
    {
        setTranslationX((float)getWidth() * f);
        setRotationY(90F * f);
        setPivotX(0.0F);
        setPivotY(getHeight() / 2);
    }

    public void setCubeBack(float f)
    {
        setTranslationX((float)getWidth() * f);
        setRotationY(90F * f);
        setPivotY(getHeight() / 2);
        setPivotX(getWidth());
    }

    public void setGlide(float f)
    {
        setTranslationX((float)getWidth() * f);
        setRotationY(90F * f);
        setPivotX(0.0F);
    }

    public void setGlideBack(float f)
    {
        setTranslationX((float)getWidth() * f * 1.5F);
        setRotationY(45F * f);
        setScaleY(1.0F - f / 2.0F);
        setPivotX(0.0F);
        setPivotY(getHeight() / 2);
    }

    public void setLeftGlideBack(float f)
    {
        setTranslationX((float)getWidth() * f * -1.5F);
        setRotationY(-45F * f);
        setScaleY(1.0F - f / 2.0F);
        setPivotX(getWidth());
        setPivotY(getHeight() / 2);
    }

    public void setRotateDown(float f)
    {
        setTranslationX((float)getWidth() * f);
        setRotation(20F * f);
        setPivotY(getHeight());
        setPivotX(getWidth() / 2);
    }

    public void setRotateUp(float f)
    {
        setTranslationX((float)getWidth() * f);
        setRotation(-20F * f);
        setPivotY(0.0F);
        setPivotX(getWidth() / 2);
    }

    public void setTableHorizontalPivotWidth(float f)
    {
        setRotationY(-90F * f);
        setPivotX(getWidth());
        setPivotY(getHeight() / 2);
    }

    public void setTableHorizontalPivotZero(float f)
    {
        setRotationY(90F * f);
        setPivotX(0.0F);
        setPivotY(getHeight() / 2);
    }

    public void setTableVerticalPivotHeight(float f)
    {
        setRotationX(90F * f);
        setPivotX(getWidth() / 2);
        setPivotY(getHeight());
    }

    public void setTableVerticalPivotZero(float f)
    {
        setRotationX(-90F * f);
        setPivotX(getWidth() / 2);
        setPivotY(0.0F);
    }

    public void setXFraction(float f)
    {
        b = f;
        if (getWidth() == 0)
        {
            if (c == null)
            {
                c = new r(this);
                getViewTreeObserver().addOnPreDrawListener(c);
            }
            return;
        } else
        {
            setTranslationX((float)getWidth() * f);
            return;
        }
    }

    public void setYFraction(float f)
    {
        a = f;
        if (getHeight() == 0)
        {
            if (c == null)
            {
                c = new q(this);
                getViewTreeObserver().addOnPreDrawListener(c);
            }
            return;
        } else
        {
            setTranslationY((float)getHeight() * f);
            return;
        }
    }

    public void setZoomFromCornerPivotHG(float f)
    {
        setScaleX(f);
        setScaleY(f);
        setPivotX(getWidth());
        setPivotY(getHeight());
    }

    public void setZoomFromCornerPivotHeight(float f)
    {
        setScaleX(f);
        setScaleY(f);
        setPivotX(0.0F);
        setPivotY(getHeight());
    }

    public void setZoomFromCornerPivotWidth(float f)
    {
        setScaleX(f);
        setScaleY(f);
        setPivotX(getWidth());
        setPivotY(0.0F);
    }

    public void setZoomFromCornerPivotZero(float f)
    {
        setScaleX(f);
        setScaleY(f);
        setPivotX(0.0F);
        setPivotY(0.0F);
    }

    public void setZoomSlideHorizontal(float f)
    {
        setTranslationX((float)getWidth() * f);
        setPivotX(getWidth() / 2);
        setPivotY(getHeight() / 2);
    }

    public void setZoomSlideVertical(float f)
    {
        setTranslationY((float)getHeight() * f);
        setPivotX(getWidth() / 2);
        setPivotY(getHeight() / 2);
    }
}
