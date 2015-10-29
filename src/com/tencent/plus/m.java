// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.plus;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

public class m extends View
{

    private Rect a;
    private Paint b;

    public m(Context context)
    {
        super(context);
        b();
    }

    public m(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b();
    }

    private void b()
    {
        b = new Paint();
    }

    public Rect a()
    {
        if (a == null)
        {
            a = new Rect();
            int k = getMeasuredWidth();
            int j = getMeasuredHeight();
            int i = Math.min(Math.min(j - 60 - 80, k), 640);
            k = (k - i) / 2;
            j = (j - i) / 2;
            a.set(k, j, k + i, i + j);
        }
        return a;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        Rect rect = a();
        int i = getMeasuredWidth();
        int j = getMeasuredHeight();
        b.setStyle(android.graphics.Paint.Style.FILL);
        b.setColor(Color.argb(100, 0, 0, 0));
        canvas.drawRect(0.0F, 0.0F, i, rect.top, b);
        canvas.drawRect(0.0F, rect.bottom, i, j, b);
        canvas.drawRect(0.0F, rect.top, rect.left, rect.bottom, b);
        canvas.drawRect(rect.right, rect.top, i, rect.bottom, b);
        canvas.drawColor(Color.argb(100, 0, 0, 0));
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setColor(-1);
        canvas.drawRect(rect.left, rect.top, rect.right - 1, rect.bottom, b);
    }
}
