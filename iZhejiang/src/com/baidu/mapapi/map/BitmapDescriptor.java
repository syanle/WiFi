// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class BitmapDescriptor
{

    Bitmap a;
    private Bundle b;

    BitmapDescriptor(Bitmap bitmap)
    {
        if (bitmap != null)
        {
            a = a(bitmap, bitmap.getWidth(), bitmap.getHeight());
        }
    }

    private Bitmap a(Bitmap bitmap, int i, int j)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        return bitmap1;
    }

    byte[] a()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(a.getWidth() * a.getHeight() * 4);
        a.copyPixelsToBuffer(bytebuffer);
        return bytebuffer.array();
    }

    Bundle b()
    {
        MessageDigest messagedigest;
        Bundle bundle;
        byte abyte1[];
        if (a == null)
        {
            throw new IllegalStateException("the bitmap has been recycled! you can not use it again");
        }
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        bundle = new Bundle();
        bundle.putInt("image_width", a.getWidth());
        bundle.putInt("image_height", a.getHeight());
        abyte1 = a();
        bundle.putByteArray("image_data", abyte1);
        messagedigest = null;
        Object obj = MessageDigest.getInstance("MD5");
        messagedigest = ((MessageDigest) (obj));
_L2:
        messagedigest.update(abyte1, 0, abyte1.length);
        byte abyte0[] = messagedigest.digest();
        obj = new StringBuilder("");
        for (int i = 0; i < abyte0.length; i++)
        {
            ((StringBuilder) (obj)).append(Integer.toString((abyte0[i] & 0xff) + 256, 16).substring(1));
        }

        break; /* Loop/switch isn't completed */
        obj;
        ((NoSuchAlgorithmException) (obj)).printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
        bundle.putString("image_hashcode", ((StringBuilder) (obj)).toString());
        b = bundle;
        return b;
    }

    public void recycle()
    {
        if (a != null && !a.isRecycled())
        {
            a.recycle();
            a = null;
        }
    }
}
