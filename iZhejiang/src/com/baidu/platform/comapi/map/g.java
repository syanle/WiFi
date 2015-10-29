// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.baidu.platform.comjni.map.basemap.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.baidu.platform.comapi.map:
//            f, h

class g extends Handler
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        break MISSING_BLOCK_LABEL_5;
_L6:
        do
        {
            do
            {
                return;
            } while (a.d == null || ((Integer)message.obj).intValue() != com.baidu.platform.comapi.map.f.a(a));
            if (message.what != 4000)
            {
                break;
            }
            Iterator iterator = a.c.iterator();
            while (iterator.hasNext()) 
            {
                h h1 = (h)iterator.next();
                Object obj = null;
                if (message.arg2 == 1)
                {
                    int ai[] = new int[f.b(a) * f.c(a)];
                    obj = new int[f.b(a) * f.c(a)];
                    ai = a.d.a(ai);
                    for (int i = 0; i < f.c(a); i++)
                    {
                        for (int j = 0; j < f.b(a); j++)
                        {
                            int k = ai[f.b(a) * i + j];
                            obj[(f.c(a) - i - 1) * f.b(a) + j] = k & 0xff00ff00 | k << 16 & 0xff0000 | k >> 16 & 0xff;
                        }

                    }

                    obj = Bitmap.createBitmap(((int []) (obj)), f.b(a), f.c(a), android.graphics.Bitmap.Config.ARGB_8888);
                }
                h1.a(((Bitmap) (obj)));
            }
        } while (true);
        if (message.what != 39)
        {
            break; /* Loop/switch isn't completed */
        }
        if (message.arg1 != 100) goto _L2; else goto _L1
_L1:
        f.d(a);
_L4:
        if (!f.f(a) && f.c(a) > 0 && f.b(a) > 0 && a.a(0, 0) != null)
        {
            com.baidu.platform.comapi.map.f.a(a, true);
            for (message = a.c.iterator(); message.hasNext(); ((h)message.next()).b()) { }
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (message.arg1 == 200)
        {
            f.e(a);
        } else
        if (message.arg1 == 1)
        {
            a.requestRender();
        } else
        if (message.arg1 == 0 && a.getRenderMode() != 0)
        {
            a.setRenderMode(0);
        }
        if (true) goto _L4; else goto _L3
_L3:
        message = a.c.iterator();
        while (message.hasNext()) 
        {
            ((h)message.next()).a();
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (message.what != 41)
        {
            break; /* Loop/switch isn't completed */
        }
        if (f.g(a) || f.h(a))
        {
            message = a.c.iterator();
            while (message.hasNext()) 
            {
                ((h)message.next()).b(a.o());
            }
        }
        if (true) goto _L6; else goto _L7
_L7:
        if (message.what == 999)
        {
            message = a.c.iterator();
            while (message.hasNext()) 
            {
                ((h)message.next()).d();
            }
        }
        if (true) goto _L6; else goto _L8
_L8:
    }
}
