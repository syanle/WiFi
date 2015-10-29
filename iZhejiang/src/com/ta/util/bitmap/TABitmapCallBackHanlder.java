// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.ta.util.cache.TACallBackHandler;

public class TABitmapCallBackHanlder extends TACallBackHandler
{

    private Bitmap mLoadingBitmap;

    public TABitmapCallBackHanlder()
    {
    }

    private void setImageBitmap(ImageView imageview, Bitmap bitmap)
    {
        imageview.setImageBitmap(bitmap);
    }

    public void onFailure(ImageView imageview, Object obj)
    {
        super.onFailure(imageview, obj);
    }

    public volatile void onFailure(Object obj, Object obj1)
    {
        onFailure((ImageView)obj, obj1);
    }

    public void onStart(ImageView imageview, Object obj)
    {
        super.onStart(imageview, obj);
        onSuccess(imageview, obj, null);
    }

    public volatile void onStart(Object obj, Object obj1)
    {
        onStart((ImageView)obj, obj1);
    }

    public void onSuccess(ImageView imageview, Object obj, byte abyte0[])
    {
        super.onSuccess(imageview, obj, abyte0);
        if (abyte0 == null || imageview == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj = null;
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        obj = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        setImageBitmap(imageview, ((Bitmap) (obj)));
_L1:
        return;
        imageview;
        imageview.printStackTrace();
        return;
        if (mLoadingBitmap != null)
        {
            setImageBitmap(imageview, mLoadingBitmap);
            return;
        }
          goto _L1
    }

    public volatile void onSuccess(Object obj, Object obj1, byte abyte0[])
    {
        onSuccess((ImageView)obj, obj1, abyte0);
    }

    public void setLoadingImage(Context context, int i)
    {
        mLoadingBitmap = BitmapFactory.decodeResource(context.getResources(), i);
    }

    public void setLoadingImage(Bitmap bitmap)
    {
        mLoadingBitmap = bitmap;
    }
}
