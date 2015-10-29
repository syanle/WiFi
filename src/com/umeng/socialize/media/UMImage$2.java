// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import com.umeng.socom.util.g;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.umeng.socialize.media:
//            UMImage

class b extends Thread
{

    final UMImage a;
    private final InputStream b;

    public void run()
    {
        Object obj1;
        java.io.File file;
        file = UMImage.a(a, g.a(b.toString()));
        obj1 = new FileOutputStream(file);
        Object obj = obj1;
        byte abyte0[] = new byte[4096];
_L3:
        obj = obj1;
        if (b.read(abyte0) != -1) goto _L2; else goto _L1
_L1:
        obj = obj1;
        ((FileOutputStream) (obj1)).flush();
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        obj = obj1;
        UMImage.a(a, file);
        IOException ioexception2;
        UMImage.a(a);
        IOException ioexception;
        try
        {
            if (b != null)
            {
                b.close();
            }
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            return;
        }
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        ((FileOutputStream) (obj1)).close();
_L5:
        return;
_L2:
        obj = obj1;
        ((FileOutputStream) (obj1)).write(abyte0);
          goto _L3
        ioexception2;
_L8:
        obj = obj1;
        ioexception2.printStackTrace();
        UMImage.a(a);
        if (b != null)
        {
            b.close();
        }
        if (obj1 == null) goto _L5; else goto _L4
_L4:
        try
        {
            ((FileOutputStream) (obj1)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
        obj1;
        obj = null;
_L7:
        UMImage.a(a);
        if (b != null)
        {
            b.close();
        }
        if (obj != null)
        {
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw obj1;
        obj1;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception2;
        obj1 = null;
          goto _L8
    }

    (UMImage umimage, InputStream inputstream)
    {
        a = umimage;
        b = inputstream;
        super();
    }
}
