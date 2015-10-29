// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.resoperate;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.ta.util.TALogger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class TAAssetsOperateUtils
{

    private static final String TAG = "TAAssetsOperateUtils";

    public TAAssetsOperateUtils()
    {
    }

    public static Bitmap getBitmapForName(Context context, String s)
    {
        Object obj = null;
        Context context1 = obj;
        try
        {
            s = getInputStreamForName(context, s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            TALogger.d("TAAssetsOperateUtils", context.getMessage());
            return context1;
        }
        context1 = obj;
        context = BitmapFactory.decodeStream(s);
        context1 = context;
        s.close();
        return context;
    }

    public static InputStream getInputStreamForName(Context context, String s)
    {
        context = context.getAssets();
        try
        {
            context = context.open(s);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            TALogger.d("TAAssetsOperateUtils", context.getMessage());
            return null;
        }
        return context;
    }

    public static String getStringForName(Context context, String s)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
        context = getInputStreamForName(context, s);
_L1:
        int i = context.read(abyte0);
        if (i == -1)
        {
            try
            {
                bytearrayoutputstream.close();
                context.close();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                TALogger.d("TAAssetsOperateUtils", context.getMessage());
            }
            return bytearrayoutputstream.toString();
        }
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L1
    }
}
