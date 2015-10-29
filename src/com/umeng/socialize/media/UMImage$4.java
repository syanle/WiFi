// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import android.graphics.Bitmap;
import com.umeng.socom.Log;
import com.umeng.socom.util.g;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.umeng.socialize.media:
//            UMImage

class b
    implements Runnable
{

    final UMImage a;
    private final Bitmap b;

    public void run()
    {
        FileOutputStream fileoutputstream;
        File file;
        long l;
        l = System.currentTimeMillis();
        file = UMImage.a(a, g.a(b.toString()));
        fileoutputstream = new FileOutputStream(file);
        Object obj = fileoutputstream;
        int j = (b.getRowBytes() * b.getHeight()) / 1024;
        obj = fileoutputstream;
        Log.c(UMImage.a(), (new StringBuilder("### bitmap size = ")).append(j).append(" KB").toString());
        int i;
        i = 100;
        obj = fileoutputstream;
        if ((float)j <= UMImage.b(a))
        {
            break MISSING_BLOCK_LABEL_129;
        }
        obj = fileoutputstream;
        float f = UMImage.b(a) / (float)j;
        i = (int)((float)100 * f);
        obj = fileoutputstream;
        Log.c(UMImage.a(), (new StringBuilder("### \u538B\u7F29\u8D28\u91CF : ")).append(i).toString());
        obj = fileoutputstream;
        if (b.isRecycled())
        {
            break MISSING_BLOCK_LABEL_182;
        }
        obj = fileoutputstream;
        b.compress(android.graphics.pressFormat.JPEG, i, fileoutputstream);
        obj = fileoutputstream;
        UMImage.a(a, file);
        obj = fileoutputstream;
        Log.c(UMImage.a(), (new StringBuilder("##save bitmap ")).append(file.getAbsolutePath()).toString());
        obj = fileoutputstream;
        long l1 = System.currentTimeMillis();
        obj = fileoutputstream;
        Log.c(UMImage.a(), (new StringBuilder("#### \u56FE\u7247\u5E8F\u5217\u5316\u8017\u65F6 : ")).append(l1 - l).append(" ms.").toString());
        UMImage.a(a);
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_276;
        }
        fileoutputstream.close();
_L2:
        return;
        Exception exception1;
        exception1;
        fileoutputstream = null;
_L5:
        obj = fileoutputstream;
        Log.b(UMImage.a(), (new StringBuilder("Sorry cannot setImage..[")).append(exception1.toString()).append("]").toString());
        UMImage.a(a);
        if (fileoutputstream == null) goto _L2; else goto _L1
_L1:
        try
        {
            fileoutputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        Exception exception;
        exception;
        obj = null;
_L4:
        UMImage.a(a);
        if (obj != null)
        {
            try
            {
                ((OutputStream) (obj)).close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        IOException ioexception1;
        ioexception1;
        return;
        exception;
        if (true) goto _L4; else goto _L3
_L3:
        exception1;
          goto _L5
    }

    at(UMImage umimage, Bitmap bitmap)
    {
        a = umimage;
        b = bitmap;
        super();
    }
}
