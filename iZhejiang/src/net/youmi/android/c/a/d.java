// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;

public class d
{

    public static Bitmap a(Bitmap bitmap, int i)
    {
        float f;
        Bitmap bitmap1;
        Canvas canvas;
        Paint paint;
        Rect rect;
        RectF rectf;
        try
        {
            bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            canvas = new Canvas(bitmap1);
            paint = new Paint();
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            rectf = new RectF(rect);
        }
        catch (Exception exception)
        {
            return bitmap;
        }
        f = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        canvas.drawRoundRect(rectf, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmap1;
    }

    public static BitmapDrawable a(Context context, BitmapDrawable bitmapdrawable, int i)
    {
        try
        {
            bitmapdrawable = bitmapdrawable.getBitmap();
            context = new BitmapDrawable(context.getResources(), a(((Bitmap) (bitmapdrawable)), i));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return null;
        }
        return context;
    }
}
