// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import java.util.Random;

public class BPUtil
{

    private static final int BASE_PADDING_LEFT = 5;
    private static final int BASE_PADDING_TOP = 15;
    private static final char CHARS[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
        'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
        'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 
        'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 
        'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
        'Y', 'Z'
    };
    private static final int DEFAULT_CODE_LENGTH = 4;
    private static final int DEFAULT_FONT_SIZE = 20;
    private static final int DEFAULT_HEIGHT = 30;
    private static final int DEFAULT_LINE_NUMBER = 3;
    private static final int DEFAULT_WIDTH = 60;
    private static final int RANGE_PADDING_LEFT = 10;
    private static final int RANGE_PADDING_TOP = 10;
    private static BPUtil bpUtil;
    private int base_padding_left;
    private int base_padding_top;
    private String code;
    private int codeLength;
    private int font_size;
    private int height;
    private int line_number;
    private int padding_left;
    private int padding_top;
    private Random random;
    private int range_padding_left;
    private int range_padding_top;
    private int width;

    public BPUtil()
    {
        width = 60;
        height = 30;
        base_padding_left = 5;
        range_padding_left = 10;
        base_padding_top = 15;
        range_padding_top = 10;
        codeLength = 4;
        line_number = 3;
        font_size = 20;
        random = new Random();
    }

    private String createCode()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
            if (i >= codeLength)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append(CHARS[random.nextInt(CHARS.length)]);
            i++;
        } while (true);
    }

    private void drawLine(Canvas canvas, Paint paint)
    {
        int i = randomColor();
        int j = random.nextInt(width);
        int k = random.nextInt(height);
        int l = random.nextInt(width);
        int i1 = random.nextInt(height);
        paint.setStrokeWidth(1.0F);
        paint.setColor(i);
        canvas.drawLine(j, k, l, i1, paint);
    }

    public static BPUtil getInstance()
    {
        if (bpUtil == null)
        {
            bpUtil = new BPUtil();
        }
        return bpUtil;
    }

    private int randomColor()
    {
        return randomColor(1);
    }

    private int randomColor(int i)
    {
        return Color.rgb(random.nextInt(256) / i, random.nextInt(256) / i, random.nextInt(256) / i);
    }

    private void randomPadding()
    {
        padding_left = padding_left + (base_padding_left + random.nextInt(range_padding_left));
        padding_top = base_padding_top + random.nextInt(range_padding_top);
    }

    private void randomTextStyle(Paint paint)
    {
        paint.setColor(randomColor());
        paint.setFakeBoldText(random.nextBoolean());
        float f = random.nextInt(11) / 10;
        if (!random.nextBoolean())
        {
            f = -f;
        }
        paint.setTextSkewX(f);
    }

    public Bitmap createBitmap()
    {
        Bitmap bitmap;
        Canvas canvas;
        Paint paint;
        int i;
        padding_left = 0;
        bitmap = Bitmap.createBitmap(width, height, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap);
        code = createCode();
        canvas.drawColor(-1);
        paint = new Paint();
        paint.setTextSize(font_size);
        i = 0;
_L3:
        if (i < code.length()) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= line_number)
        {
            canvas.save(31);
            canvas.restore();
            return bitmap;
        }
        break MISSING_BLOCK_LABEL_154;
_L2:
        randomTextStyle(paint);
        randomPadding();
        canvas.drawText((new StringBuilder(String.valueOf(code.charAt(i)))).toString(), padding_left, padding_top, paint);
        i++;
          goto _L3
        drawLine(canvas, paint);
        i++;
          goto _L4
    }

    public String getCode()
    {
        return code;
    }

}
