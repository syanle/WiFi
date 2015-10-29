// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.util.Random;

public class ValidateImageView extends View
{

    private String TAG;
    private Bitmap bitmap;
    private String content[];
    private Paint paint;

    public ValidateImageView(Context context)
    {
        super(context);
        TAG = "ValidateImageView";
        paint = new Paint();
        content = null;
        bitmap = null;
    }

    public ValidateImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        TAG = "ValidateImageView";
        paint = new Paint();
        content = null;
        bitmap = null;
    }

    private String[] generageRadom(String as[])
    {
        int l = as.length;
        Random random = new Random();
        int i = random.nextInt(l);
        int j = random.nextInt(l);
        int k = random.nextInt(l);
        l = random.nextInt(l);
        return (new String[] {
            as[i].toString().trim(), as[j].toString().trim(), as[k].toString().trim(), as[l].toString().trim()
        });
    }

    private String generageRadomStr(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int l = as.length;
        Random random = new Random();
        int i = random.nextInt(l);
        int j = random.nextInt(l);
        int k = random.nextInt(l);
        l = random.nextInt(l);
        stringbuilder.append(as[i].toString().trim());
        stringbuilder.append(as[j].toString().trim());
        stringbuilder.append(as[k].toString().trim());
        stringbuilder.append(as[l].toString().trim());
        return stringbuilder.toString();
    }

    private Bitmap generateValidate(String as[], String as1[])
    {
        if (isStrContent(as) == 0)
        {
            return null;
        }
        as = Bitmap.createBitmap(120, 50, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(as);
        Paint paint1 = new Paint();
        paint1.setTextSize(25);
        paint1.setFakeBoldText(true);
        paint1.setColor(getRandColor(200, 230, 170));
        canvas.drawText(as1[0], 10F, 25, paint1);
        Matrix matrix = new Matrix();
        matrix.setRotate(15F);
        canvas.setMatrix(matrix);
        paint1.setColor(getRandColor(200, 230, 170));
        canvas.drawText(as1[1], 40F, 25, paint1);
        matrix.setRotate(10F);
        canvas.setMatrix(matrix);
        paint1.setColor(getRandColor(200, 230, 170));
        canvas.drawText(as1[2], 70F, 15, paint1);
        matrix.setRotate(15F);
        canvas.setMatrix(matrix);
        paint1.setColor(getRandColor(200, 230, 170));
        canvas.drawText(as1[3], 100F, 10, paint1);
        matrix.setRotate(20F);
        canvas.setMatrix(matrix);
        int i = 0;
        do
        {
            if (i >= 55)
            {
                canvas.save();
                return as;
            }
            int j = pointRadom(120);
            int k = pointRadom(50);
            int l = pointRadom(15);
            int i1 = pointRadom(15);
            paint1.setColor(getRandColor(200, 230, 220));
            canvas.drawLine(j, k - 20, j + l, (k + i1) - 20, paint1);
            i++;
        } while (true);
    }

    private int isStrContent(String as[])
    {
        return as != null && as.length > 0 ? 1 : 0;
    }

    private int pointRadom(int i)
    {
        return (new Random()).nextInt(i);
    }

    public void draw(Canvas canvas)
    {
        if (bitmap != null)
        {
            canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        } else
        {
            paint.setColor(0xff888888);
            paint.setTextSize(20F);
            canvas.drawText("\u70B9\u51FB\u6362\u4E00\u6362", 10F, 30F, paint);
        }
        super.draw(canvas);
    }

    public int getRandColor(int i, int j, int k)
    {
        Random random = new Random();
        int l = i;
        if (i > 255)
        {
            l = 255;
        }
        i = j;
        if (j > 255)
        {
            i = 255;
        }
        j = k;
        if (k > 255)
        {
            j = 255;
        }
        return Color.rgb(l + random.nextInt(l), i + random.nextInt(i), j + random.nextInt(j));
    }

    public String[] getRandomInteger()
    {
        String as[] = new String[4];
        int i = 0;
        do
        {
            if (i >= 4)
            {
                return as;
            }
            as[i] = String.valueOf((int)(Math.random() * 9D + 1.0D));
            i++;
        } while (true);
    }

    public String getResponseStr(String as[])
    {
        StringBuffer stringbuffer = new StringBuffer();
        int j = as.length;
        int i = 0;
        do
        {
            if (i >= j)
            {
                return stringbuffer.toString();
            }
            stringbuffer.append(as[i]);
            i++;
        } while (true);
    }

    public String[] getValidataAndSetImage(String as[])
    {
        content = as;
        as = generageRadom(as);
        Log.i(TAG, (new StringBuilder("generate validate code: ")).append(as[0]).append(as[1]).append(as[2]).append(as[3]).toString());
        bitmap = generateValidate(content, as);
        invalidate();
        return as;
    }
}
