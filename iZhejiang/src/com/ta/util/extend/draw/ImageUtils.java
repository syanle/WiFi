// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.extend.draw;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;

public class ImageUtils
{

    private static float carray[] = new float[20];

    public ImageUtils()
    {
    }

    public static Bitmap createReflectedImage(Bitmap bitmap)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        Object obj = new Matrix();
        ((Matrix) (obj)).preScale(1.0F, -1F);
        Object obj1 = Bitmap.createBitmap(bitmap, 0, j / 2, i, j / 2, ((Matrix) (obj)), false);
        obj = Bitmap.createBitmap(i, j / 2 + j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(((Bitmap) (obj)));
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, null);
        Paint paint = new Paint();
        canvas.drawRect(0.0F, j, i, j + 4, paint);
        canvas.drawBitmap(((Bitmap) (obj1)), 0.0F, j + 4, null);
        obj1 = new Paint();
        ((Paint) (obj1)).setShader(new LinearGradient(0.0F, bitmap.getHeight(), 0.0F, ((Bitmap) (obj)).getHeight() + 4, 0x70ffffff, 0xffffff, android.graphics.Shader.TileMode.MIRROR));
        ((Paint) (obj1)).setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_IN));
        canvas.drawRect(0.0F, j, i, ((Bitmap) (obj)).getHeight() + 4, ((Paint) (obj1)));
        return ((Bitmap) (obj));
    }

    private static void getValueBlackAndWhite()
    {
        carray[0] = 0.308F;
        carray[1] = 0.609F;
        carray[2] = 0.082F;
        carray[3] = 0.0F;
        carray[4] = 0.0F;
        carray[5] = 0.308F;
        carray[6] = 0.609F;
        carray[7] = 0.082F;
        carray[8] = 0.0F;
        carray[9] = 0.0F;
        carray[10] = 0.308F;
        carray[11] = 0.609F;
        carray[12] = 0.082F;
        carray[13] = 0.0F;
        carray[14] = 0.0F;
        carray[15] = 0.0F;
        carray[16] = 0.0F;
        carray[17] = 0.0F;
        carray[18] = 1.0F;
        carray[19] = 0.0F;
    }

    public static void getValueSaturation()
    {
        carray[0] = 5F;
        carray[1] = 0.0F;
        carray[2] = 0.0F;
        carray[3] = 0.0F;
        carray[4] = -254F;
        carray[5] = 0.0F;
        carray[6] = 5F;
        carray[7] = 0.0F;
        carray[8] = 0.0F;
        carray[9] = -254F;
        carray[10] = 0.0F;
        carray[11] = 0.0F;
        carray[12] = 5F;
        carray[13] = 0.0F;
        carray[14] = -254F;
        carray[15] = 0.0F;
        carray[16] = 0.0F;
        carray[17] = 0.0F;
        carray[18] = 5F;
        carray[19] = -254F;
    }

    public static Bitmap toGrayscale(Bitmap bitmap)
    {
        int i = bitmap.getHeight();
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), i, android.graphics.Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        paint.setColorFilter(null);
        canvas.drawBitmap(bitmap1, 0.0F, 0.0F, paint);
        ColorMatrix colormatrix = new ColorMatrix();
        getValueBlackAndWhite();
        colormatrix.set(carray);
        paint.setColorFilter(new ColorMatrixColorFilter(colormatrix));
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        return bitmap1;
    }

    public static Bitmap toGrayscale(Bitmap bitmap, int i)
    {
        return toRoundCorner(toGrayscale(bitmap), i);
    }

    public static Bitmap toRoundCorner(Bitmap bitmap, int i)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectf = new RectF(rect);
        float f = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        canvas.drawRoundRect(rectf, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap1;
    }

    public static BitmapDrawable toRoundCorner(BitmapDrawable bitmapdrawable, int i)
    {
        return new BitmapDrawable(toRoundCorner(bitmapdrawable.getBitmap(), i));
    }

}
