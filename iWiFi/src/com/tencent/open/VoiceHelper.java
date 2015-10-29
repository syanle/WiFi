// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

public class VoiceHelper extends AsyncTask
{

    private static final String EXT_SDCARD_PATH = "/mnt/sdcard-ext";
    private static final String RESULT_TYPE = "ResultType";
    private static final int RESULT_TYPE_EXCEPTION = 0;
    private static final int RESULT_TYPE_NORMAL = 1;
    private static final String RESULT_VALUE = "ResultValue";
    private static final SimpleDateFormat sdf2;
    private ImageCallback mCallBack;

    public VoiceHelper(ImageCallback imagecallback)
    {
        mCallBack = imagecallback;
    }

    private int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
label0:
        {
            int i1 = options.outHeight;
            int l = options.outWidth;
            int k = 1;
            if (i1 > j || l > i)
            {
                k = Math.round((float)i1 / (float)j);
                i = Math.round((float)l / (float)i);
                if (k >= i)
                {
                    break label0;
                }
            }
            return k;
        }
        return i;
    }

    public static void clearImageCacheFile(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_28;
        }
        s = new File(s);
        if (s.exists())
        {
            s.delete();
        }
        return;
        s;
    }

    private Bitmap comp(Bitmap bitmap)
    {
        int i = 1;
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        if (bytearrayoutputstream.toByteArray().length / 1024 > 1024)
        {
            bytearrayoutputstream.reset();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 50, bytearrayoutputstream);
        }
        bitmap = new ByteArrayInputStream(bytearrayoutputstream.toByteArray());
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(bitmap, null, options);
        options.inJustDecodeBounds = false;
        int j = calculateInSampleSize(options, 320, 320);
        if (j > 0)
        {
            i = j;
        }
        Log.i("comp", (new StringBuilder()).append("comp be=").append(i).toString());
        options.inSampleSize = i;
        return BitmapFactory.decodeStream(new ByteArrayInputStream(bytearrayoutputstream.toByteArray()), null, options);
    }

    private String getDateStringWithoutSpace(long l)
    {
        Date date = new Date(l);
        return sdf2.format(date);
    }

    private String getSDCardPath()
    {
        String s = ".";
        if (Environment.getExternalStorageState().equals("mounted"))
        {
            s = Environment.getExternalStorageDirectory().getAbsolutePath();
        } else
        if ((new File("/mnt/sdcard-ext")).isDirectory())
        {
            return "/mnt/sdcard-ext";
        }
        return s;
    }

    public static boolean hasSDCard()
    {
        while (Environment.getExternalStorageState().equals("mounted") || (new File("/mnt/sdcard-ext")).isDirectory()) 
        {
            return true;
        }
        return false;
    }

    private String saveImageToSDCard(Bitmap bitmap)
    {
        Object obj1;
        Object obj2;
        obj2 = null;
        obj1 = null;
        Object obj;
        String s;
        s = (new StringBuilder()).append(getDateStringWithoutSpace(System.currentTimeMillis())).append(".png").toString();
        obj = (new StringBuilder()).append(getSDCardPath()).append(File.separator).append(".AppCenterWebBuffer").toString();
        s = (new StringBuilder()).append(((String) (obj))).append(File.separator).append(s).toString();
        obj = new File(((String) (obj)));
        if (!((File) (obj)).exists())
        {
            if (((File) (obj)).mkdirs());
        }
        obj = new File(s);
        if (((File) (obj)).exists())
        {
            ((File) (obj)).delete();
        }
        ((File) (obj)).createNewFile();
        obj = new FileOutputStream(((File) (obj)));
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, ((java.io.OutputStream) (obj)));
        ((FileOutputStream) (obj)).flush();
        bitmap = s;
        if (obj != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                return s;
            }
            bitmap = s;
        }
        return bitmap;
        bitmap;
        obj = obj1;
_L4:
        bitmap = "";
        if (obj != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap)
            {
                return "";
            }
            return "";
        } else
        {
            break MISSING_BLOCK_LABEL_176;
        }
        bitmap;
        obj = obj2;
_L2:
        if (obj != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            catch (IOException ioexception) { }
        }
        throw bitmap;
        bitmap;
        if (true) goto _L2; else goto _L1
_L1:
        bitmap;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Bitmap[])aobj);
    }

    protected transient HashMap doInBackground(Bitmap abitmap[])
    {
        HashMap hashmap;
        Bitmap bitmap;
        hashmap = new HashMap();
        bitmap = abitmap[0];
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        if (bitmap.getWidth() <= 320 && bitmap.getHeight() <= 320)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        Bitmap bitmap1 = comp(bitmap);
        abitmap = saveImageToSDCard(bitmap1);
        bitmap1.recycle();
_L1:
        bitmap.recycle();
        hashmap.put("ResultType", Integer.valueOf(1));
        hashmap.put("ResultValue", abitmap);
        return hashmap;
        abitmap = saveImageToSDCard(bitmap);
          goto _L1
        abitmap;
        hashmap.put("ResultType", Integer.valueOf(0));
        hashmap.put("ResultValue", abitmap.getMessage());
        return hashmap;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((HashMap)obj);
    }

    protected void onPostExecute(HashMap hashmap)
    {
        if (((Integer)hashmap.get("ResultType")).intValue() == 1)
        {
            mCallBack.onSuccess((String)hashmap.get("ResultValue"));
        } else
        {
            mCallBack.onFailed((String)hashmap.get("ResultValue"));
        }
        super.onPostExecute(hashmap);
    }

    static 
    {
        sdf2 = new SimpleDateFormat("yyyy-MM-dd-HHmmss", Locale.CHINA);
    }

    private class ImageCallback
    {

        public abstract void onFailed(String s);

        public abstract void onSuccess(String s);
    }

}
