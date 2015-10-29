// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.j;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;
import android.widget.TextView;

// Referenced classes of package net.youmi.android.a.a.j:
//            e, d

class f extends Shape
{

    final e a;

    f(e e1)
    {
        a = e1;
        super();
    }

    public void draw(Canvas canvas, Paint paint)
    {
        paint.setAntiAlias(true);
        paint.setColor(Color.parseColor("#55E89D04"));
        paint.setStrokeWidth(3F);
        paint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        canvas.drawRoundRect(new RectF(a.a, a.a, (float)(d.a(a.b).getWidth() - a.a) + 0.5F, (float)(d.a(a.b).getHeight() - a.a) + 0.5F), 9F, 9F, paint);
        paint.setStrokeWidth(1.0F);
        paint.setColor(-1);
        canvas.drawRoundRect(new RectF(0.0F, 0.0F, d.a(a.b).getWidth() - a.a, d.a(a.b).getHeight() - a.a), 9F, 9F, paint);
    }
}
