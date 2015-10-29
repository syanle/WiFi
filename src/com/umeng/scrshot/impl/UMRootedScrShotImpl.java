// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PixelFormat;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.umeng.scrshot.impl:
//            UMBaseScrShotImpl

public class UMRootedScrShotImpl extends UMBaseScrShotImpl
{

    private final String DEVICE_NAME = "/dev/graphics/fb0";
    private Context mContext;

    public UMRootedScrShotImpl(Context context)
    {
        mContext = null;
        mContext = context;
    }

    private boolean canExecuteCommand(String s)
    {
        try
        {
            Runtime.getRuntime().exec(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return true;
    }

    public Bitmap getBitmap()
    {
        if (mContext == null)
        {
            Log.e(TAG, "#### UMRootedScrShotImpl's mContext is null.");
            return null;
        }
        if (!isRooted())
        {
            Log.d(TAG, "#### your device is not root.");
            return null;
        }
        Object obj1 = (WindowManager)mContext.getSystemService("window");
        Object obj = new DisplayMetrics();
        obj1 = ((WindowManager) (obj1)).getDefaultDisplay();
        ((Display) (obj1)).getMetrics(((DisplayMetrics) (obj)));
        int j = ((DisplayMetrics) (obj)).heightPixels;
        int k = ((DisplayMetrics) (obj)).widthPixels;
        int i = ((Display) (obj1)).getPixelFormat();
        obj = new PixelFormat();
        PixelFormat.getPixelFormatInfo(i, ((PixelFormat) (obj)));
        int l = ((PixelFormat) (obj)).bytesPerPixel;
        byte abyte0[] = new byte[j * k * l];
        int ai[];
        byte byte0;
        byte byte1;
        byte byte2;
        try
        {
            InputStream inputstream = readAsRoot();
            (new DataInputStream(inputstream)).readFully(abyte0);
            inputstream.close();
            ai = new int[k * j];
        }
        catch (IOException ioexception)
        {
            Log.d(TAG, "#### root \u8BFB\u53D6\u5C4F\u5E55\u622A\u56FE\u5931\u8D25.");
            ioexception.printStackTrace();
            return null;
        }
        i = 0;
        if (i < k * j * l)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        return Bitmap.createBitmap(ai, k, j, android.graphics.Bitmap.Config.ARGB_8888);
        byte0 = abyte0[i];
        byte1 = abyte0[i + 1];
        byte2 = abyte0[i + 2];
        ai[i / l] = (byte2 & 0xff) << 16 | (byte1 & 0xff) << 8 | byte0 & 0xff | 0xff000000;
        i += l;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_149;
        }
    }

    public boolean isRooted()
    {
        for (String s = Build.TAGS; s != null && s.contains("test-keys") || (new File("/system/app/Superuser.apk")).exists() || canExecuteCommand("/system/xbin/which su") || canExecuteCommand("/system/bin/which su") || canExecuteCommand("which su");)
        {
            return true;
        }

        return false;
    }

    public InputStream readAsRoot()
        throws IOException
    {
        Object obj = new File("/dev/graphics/fb0");
        Process process = Runtime.getRuntime().exec("su");
        obj = (new StringBuilder("cat ")).append(((File) (obj)).getAbsolutePath()).append("\n").toString();
        process.getOutputStream().write(((String) (obj)).getBytes());
        return process.getInputStream();
    }
}
