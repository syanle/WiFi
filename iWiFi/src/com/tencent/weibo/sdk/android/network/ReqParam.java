// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.network;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ReqParam
{

    public Bitmap mBitmap;
    private Map mParams;

    public ReqParam()
    {
        mParams = new HashMap();
        mBitmap = null;
    }

    public void addParam(String s, Object obj)
    {
        mParams.put(s, obj.toString());
    }

    public void addParam(String s, String s1)
    {
        mParams.put(s, s1);
    }

    public void addParam(String s, byte abyte0[])
    {
        double d = abyte0.length / 1024;
        if (d > 400D)
        {
            abyte0 = new ByteArrayOutputStream();
            d /= 400D;
            zoomImage(mBitmap, (double)mBitmap.getWidth() / Math.sqrt(d), (double)mBitmap.getHeight() / Math.sqrt(d)).compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, abyte0);
            abyte0 = abyte0.toByteArray();
        }
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                Log.d("buffer=======", stringbuffer.toString());
                mParams.put(s, stringbuffer.toString());
                return;
            }
            stringbuffer.append((char)abyte0[i]);
            i++;
        } while (true);
    }

    public Map getmParams()
    {
        return mParams;
    }

    public void setBitmap(Bitmap bitmap)
    {
        mBitmap = bitmap;
    }

    public void setmParams(Map map)
    {
        mParams = map;
    }

    public String toString()
    {
        Object obj;
        Object obj1;
        obj1 = new ArrayList();
        obj = mParams.keySet().iterator();
_L3:
        if (((Iterator) (obj)).hasNext()) goto _L2; else goto _L1
_L1:
        Collections.sort(((List) (obj1)), new Comparator() {

            final ReqParam this$0;

            public volatile int compare(Object obj2, Object obj3)
            {
                return compare((String)obj2, (String)obj3);
            }

            public int compare(String s1, String s2)
            {
                if (s1.compareTo(s2) > 0)
                {
                    return 1;
                }
                return s1.compareTo(s2) >= 0 ? 0 : -1;
            }

            
            {
                this$0 = ReqParam.this;
                super();
            }
        });
        obj = new StringBuffer();
        obj1 = ((List) (obj1)).iterator();
_L4:
        if (!((Iterator) (obj1)).hasNext())
        {
            Log.d("p-----", ((StringBuffer) (obj)).toString());
            return ((StringBuffer) (obj)).toString().replaceAll("\n", "").replaceAll("\r", "");
        }
        break MISSING_BLOCK_LABEL_116;
_L2:
        ((List) (obj1)).add((String)((Iterator) (obj)).next());
          goto _L3
        String s = (String)((Iterator) (obj1)).next();
        if (!s.equals("pic"))
        {
            ((StringBuffer) (obj)).append(s);
            ((StringBuffer) (obj)).append("=");
            ((StringBuffer) (obj)).append((String)mParams.get(s));
            ((StringBuffer) (obj)).append("&");
        }
          goto _L4
    }

    public Bitmap zoomImage(Bitmap bitmap, double d, double d1)
    {
        float f = bitmap.getWidth();
        float f1 = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale((float)d / f, (float)d1 / f1);
        return Bitmap.createBitmap(bitmap, 0, 0, (int)f, (int)f1, matrix, true);
    }
}
