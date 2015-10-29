// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.media;

import com.umeng.socom.Log;
import java.io.IOException;

// Referenced classes of package com.umeng.socialize.media:
//            UMImage

class b
    implements Runnable
{

    final UMImage a;
    private final byte b[];

    public void run()
    {
        java.io.File file = UMImage.a(a, a.getFileName());
        file = UMImage.a(b, file);
        UMImage.a(a, file);
        UMImage.a(a);
        return;
        Object obj;
        obj;
        Log.b(UMImage.a(), (new StringBuilder("Sorry cannot setImage..[")).append(((IOException) (obj)).toString()).append("]").toString());
        UMImage.a(a);
        return;
        obj;
        UMImage.a(a);
        throw obj;
    }

    (UMImage umimage, byte abyte0[])
    {
        a = umimage;
        b = abyte0;
        super();
    }
}
