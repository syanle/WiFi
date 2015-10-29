// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;

public class LetterListView extends View
{
    public static interface OnTouchingLetterChangedListener
    {

        public abstract void onTouchingLetterChanged(int i);
    }


    List b;
    int choose;
    OnTouchingLetterChangedListener onTouchingLetterChangedListener;
    Paint paint;
    boolean showBkg;

    public LetterListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        choose = -1;
        paint = new Paint();
        showBkg = false;
    }

    public LetterListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        choose = -1;
        paint = new Paint();
        showBkg = false;
    }

    public LetterListView(Context context, List list)
    {
        super(context);
        choose = -1;
        paint = new Paint();
        showBkg = false;
        b = list;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        int i;
        int j;
        int k;
        i = motionevent.getAction();
        float f = motionevent.getY();
        j = choose;
        motionevent = onTouchingLetterChangedListener;
        k = (int)((f / (float)getHeight()) * (float)b.size());
        i;
        JVM INSTR tableswitch 0 2: default 68
    //                   0 70
    //                   1 175
    //                   2 125;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        showBkg = true;
        if (j != k && motionevent != null && k >= 0 && k < b.size())
        {
            motionevent.onTouchingLetterChanged(k);
            choose = k;
            invalidate();
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (j != k && motionevent != null && k >= 0 && k < b.size())
        {
            motionevent.onTouchingLetterChanged(k);
            choose = k;
            invalidate();
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        showBkg = false;
        choose = -1;
        invalidate();
        return true;
    }

    protected void onDraw(Canvas canvas)
    {
        int i;
        int j;
        super.onDraw(canvas);
        if (showBkg)
        {
            canvas.drawColor(Color.parseColor("#00000000"));
        }
        i = getHeight();
        j = getWidth();
        if (b.size() <= 0) goto _L2; else goto _L1
_L1:
        int k;
        k = i / b.size();
        i = 0;
_L5:
        if (i < b.size()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        paint.setColor(Color.parseColor("#2796c4"));
        paint.setTextSize(17F);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        paint.setAntiAlias(true);
        if (i == choose)
        {
            paint.setColor(0xff888888);
            paint.setFakeBoldText(true);
        }
        float f = (j - 30) / 2;
        float f1 = paint.measureText((String)b.get(i)) / 2.0F;
        float f2 = k * i + k;
        canvas.drawText(((String)b.get(i)).toUpperCase(), f - f1, f2, paint);
        paint.reset();
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return super.onTouchEvent(motionevent);
    }

    public void setB(List list)
    {
        b = list;
        invalidate();
    }

    public void setOnTouchingLetterChangedListener(OnTouchingLetterChangedListener ontouchingletterchangedlistener)
    {
        onTouchingLetterChangedListener = ontouchingletterchangedlistener;
    }
}
