// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.map;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.view.View;
import com.baidu.mapapi.a;
import com.baidu.platform.comapi.c.c;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.baidu.mapapi.map:
//            BitmapDescriptor

public class BitmapDescriptorFactory
{

    public BitmapDescriptorFactory()
    {
    }

    public static BitmapDescriptor fromAsset(String s)
    {
        Object obj = a.a().d();
        if (obj == null)
        {
            return null;
        }
        try
        {
            obj = ((Context) (obj)).getAssets().open(s);
            s = BitmapFactory.decodeStream(((InputStream) (obj)));
            ((InputStream) (obj)).close();
            obj = fromBitmap(s);
            s.recycle();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return ((BitmapDescriptor) (obj));
    }

    public static BitmapDescriptor fromAssetWithDpi(String s)
    {
        Object obj = a.a().d();
        if (obj == null)
        {
            return null;
        }
        Bitmap bitmap;
        int i;
        try
        {
            s = ((Context) (obj)).getAssets().open(s);
            bitmap = BitmapFactory.decodeStream(s);
            i = c.n();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        if (i <= 480) goto _L2; else goto _L1
_L1:
        obj = new Matrix();
        ((Matrix) (obj)).postScale(2.0F, 2.0F);
        obj = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), ((Matrix) (obj)), true);
        s.close();
        s = fromBitmap(((Bitmap) (obj)));
_L3:
        bitmap.recycle();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        ((Bitmap) (obj)).recycle();
        break MISSING_BLOCK_LABEL_175;
_L2:
        if (i <= 320 || i > 480)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        obj = new Matrix();
        ((Matrix) (obj)).postScale(1.5F, 1.5F);
        obj = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), ((Matrix) (obj)), true);
        s.close();
        s = fromBitmap(((Bitmap) (obj)));
          goto _L3
        s.close();
        s = fromBitmap(bitmap);
        obj = null;
          goto _L3
        return s;
    }

    public static BitmapDescriptor fromBitmap(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return null;
        } else
        {
            return new BitmapDescriptor(bitmap);
        }
    }

    public static BitmapDescriptor fromFile(String s)
    {
        if (s == null || s.equals(""))
        {
            return null;
        }
        Object obj = a.a().d();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        obj = ((Context) (obj)).openFileInput(s);
        s = BitmapFactory.decodeStream(((InputStream) (obj)));
        ((FileInputStream) (obj)).close();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        obj = fromBitmap(s);
        s.recycle();
        return ((BitmapDescriptor) (obj));
        s;
        s.printStackTrace();
_L2:
        return null;
        s;
        s.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static BitmapDescriptor fromPath(String s)
    {
        s = BitmapFactory.decodeFile(s);
        if (s != null && s != null)
        {
            BitmapDescriptor bitmapdescriptor = fromBitmap(s);
            s.recycle();
            return bitmapdescriptor;
        } else
        {
            return null;
        }
    }

    public static BitmapDescriptor fromResource(int i)
    {
        Object obj;
label0:
        {
            obj = a.a().d();
            if (obj != null)
            {
                obj = BitmapFactory.decodeResource(((Context) (obj)).getResources(), i);
                if (obj != null)
                {
                    break label0;
                }
            }
            return null;
        }
        BitmapDescriptor bitmapdescriptor = fromBitmap(((Bitmap) (obj)));
        ((Bitmap) (obj)).recycle();
        return bitmapdescriptor;
    }

    public static BitmapDescriptor fromView(View view)
    {
        if (a.a().d() != null)
        {
            view.destroyDrawingCache();
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.setDrawingCacheEnabled(true);
            view = view.getDrawingCache(true);
            BitmapDescriptor bitmapdescriptor = fromBitmap(view);
            if (view != null)
            {
                view.recycle();
            }
            return bitmapdescriptor;
        } else
        {
            return null;
        }
    }
}
