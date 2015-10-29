// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextView;

public class MyTextView extends TextView
{

    private float paddingLeft;
    private float paddingRight;
    private Paint paint1;
    private String text;
    private int textColor;
    private float textShowWidth;
    private float textSize;

    public MyTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        paint1 = new Paint();
        text = getText().toString();
        textSize = getTextSize();
        textColor = getTextColors().getDefaultColor();
        paddingLeft = getPaddingLeft();
        paddingRight = getPaddingRight();
        paint1.setTextSize(textSize);
        paint1.setColor(textColor);
        paint1.setAntiAlias(true);
    }

    protected void onDraw(Canvas canvas)
    {
        float f;
        char ac[];
        int i;
        int k;
        textShowWidth = (float)getMeasuredWidth() - paddingLeft - paddingRight;
        i = 0;
        text = getText().toString();
        if (text == null)
        {
            return;
        }
        ac = text.toCharArray();
        f = 0.0F;
        k = 0;
_L2:
        float f2;
        if (k >= ac.length)
        {
            setHeight((i + 1) * (int)textSize);
            return;
        }
        f2 = paint1.measureText(ac, k, 1);
        if (ac[k] != '\n')
        {
            break; /* Loop/switch isn't completed */
        }
        i++;
        f = 0.0F;
_L3:
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        float f1 = f;
        int j = i;
        if (textShowWidth - f < f2)
        {
            j = i + 1;
            f1 = 0.0F;
        }
        f = paddingLeft;
        float f3 = j + 1;
        canvas.drawText(ac, k, 1, f + f1, textSize * f3, paint1);
        f = f1 + f2;
        i = j;
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
