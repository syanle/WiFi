// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.bitmap;

import android.graphics.Bitmap;
import com.ta.util.TALogger;
import com.ta.util.cache.TAProcessDataHandler;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

public abstract class TAProcessBitmapHandler extends TAProcessDataHandler
{

    private static final android.graphics.Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT;
    private static final int DEFAULT_COMPRESS_QUALITY = 70;

    public TAProcessBitmapHandler()
    {
    }

    public static byte[] readStream(InputStream inputstream)
        throws Exception
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                bytearrayoutputstream.close();
                return bytearrayoutputstream.toByteArray();
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    protected abstract Bitmap processBitmap(Object obj);

    public byte[] processData(Object obj)
    {
        Object obj1 = null;
        Bitmap bitmap = processBitmap(obj);
        obj = obj1;
        if (bitmap != null)
        {
            obj = new ByteArrayOutputStream();
            bitmap.compress(DEFAULT_COMPRESS_FORMAT, 70, ((java.io.OutputStream) (obj)));
            obj = new ByteArrayInputStream(((ByteArrayOutputStream) (obj)).toByteArray());
            try
            {
                obj = readStream(((InputStream) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Exception) (obj)).printStackTrace();
                TALogger.d(this, "processData\u5931\u8D25");
                return null;
            }
        }
        return ((byte []) (obj));
    }

    static 
    {
        DEFAULT_COMPRESS_FORMAT = android.graphics.Bitmap.CompressFormat.JPEG;
    }
}
