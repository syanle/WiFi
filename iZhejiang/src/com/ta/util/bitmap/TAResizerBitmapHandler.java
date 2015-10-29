// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileDescriptor;

// Referenced classes of package com.ta.util.bitmap:
//            TAProcessBitmapHandler

public class TAResizerBitmapHandler extends TAProcessBitmapHandler
{

    protected int mImageHeight;
    protected int mImageWidth;
    protected Resources mResources;

    public TAResizerBitmapHandler(Context context, int i)
    {
        mResources = context.getResources();
        setImageSize(i);
    }

    public TAResizerBitmapHandler(Context context, int i, int j)
    {
        mResources = context.getResources();
        setImageSize(i, j);
    }

    public static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k;
        int l;
        int i1;
        l = options.outHeight;
        i1 = options.outWidth;
        k = 1;
        if (l <= j && i1 <= i) goto _L2; else goto _L1
_L1:
        float f;
        float f1;
        if (i1 > l)
        {
            k = Math.round((float)l / (float)j);
        } else
        {
            k = Math.round((float)i1 / (float)i);
        }
        f = i1 * l;
        f1 = i * j * 2;
_L5:
        if (f / (float)(k * k) > f1) goto _L3; else goto _L2
_L2:
        return k;
_L3:
        k++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor filedescriptor, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
    }

    public static Bitmap decodeSampledBitmapFromFile(String s, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(s, options);
    }

    public static Bitmap decodeSampledBitmapFromResource(Resources resources, int i, int j, int k)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = calculateInSampleSize(options, j, k);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    private Bitmap processBitmap(int i)
    {
        return decodeSampledBitmapFromResource(mResources, i, mImageWidth, mImageHeight);
    }

    protected Bitmap processBitmap(Object obj)
    {
        return processBitmap(Integer.parseInt(String.valueOf(obj)));
    }

    public void setImageSize(int i)
    {
        setImageSize(i, i);
    }

    public void setImageSize(int i, int j)
    {
        mImageWidth = i;
        mImageHeight = j;
    }
}
