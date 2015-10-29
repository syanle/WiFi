// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.bread.breadservice;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.bread.breadservice.core.SLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class BRDUtils
{

    public BRDUtils()
    {
    }

    public static Bitmap PNGToBitmap(String s)
    {
        Object obj = null;
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return ((Bitmap) (obj));
_L2:
        FileInputStream fileinputstream;
        Object obj1;
        android.graphics.BitmapFactory.Options options;
        obj1 = new File(s);
        if (!((File) (obj1)).exists())
        {
            SLog.w("FileUtils", "icon cache file is not exits");
            return null;
        }
        s = null;
        obj = null;
        options = new android.graphics.BitmapFactory.Options();
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inTempStorage = new byte[32768];
        fileinputstream = null;
        obj1 = new FileInputStream(((File) (obj1)));
        fileinputstream = ((FileInputStream) (obj1));
_L3:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        s = BitmapFactory.decodeFileDescriptor(fileinputstream.getFD(), null, options);
        obj = s;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                return s;
            }
            return s;
        }
          goto _L1
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception.printStackTrace();
        SLog.d("FileUtils", "icon cache file is not exits");
          goto _L3
        s;
        s.printStackTrace();
        if (fileinputstream == null) goto _L1; else goto _L4
_L4:
        try
        {
            fileinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return null;
        s;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
        throw s;
    }

    public static String copyAssertFile(Context context, String s)
    {
        String s1 = (new StringBuilder(String.valueOf(context.getExternalCacheDir().getAbsolutePath()))).append(File.separator).append(s).toString();
        Log.e("test", (new StringBuilder("cachePath = ")).append(s1).toString());
        retrieveApkFromAsserts(context, s, s1);
        return s1;
    }

    public static Bitmap getImageFromAssetsFile(Context context, String s)
    {
        Object obj = null;
        Object obj1 = context.getResources().getAssets();
        context = obj;
        try
        {
            obj1 = ((AssetManager) (obj1)).open(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return context;
        }
        context = obj;
        s = BitmapFactory.decodeStream(((InputStream) (obj1)));
        context = s;
        ((InputStream) (obj1)).close();
        return s;
    }

    private static boolean retrieveApkFromAsserts(Context context, String s, String s1)
    {
        boolean flag = false;
        context = context.getAssets().open(s);
        s = new File(s1);
        if (s.exists())
        {
            return true;
        }
        s.createNewFile();
        s = new FileOutputStream(s);
        s1 = new byte[1024];
_L1:
        int i = context.read(s1);
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        s.close();
        context.close();
        flag = true;
        break MISSING_BLOCK_LABEL_92;
        s.write(s1, 0, i);
          goto _L1
        context;
        context.printStackTrace();
        return flag;
    }
}
