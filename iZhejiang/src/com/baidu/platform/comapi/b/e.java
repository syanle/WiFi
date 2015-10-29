// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.b;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.platform.comapi.b:
//            d, c

class e extends Handler
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public void handleMessage(Message message)
    {
        while (d.a(a) == 0 || d.a(a) != ((Integer)message.obj).intValue() || d.b(a) == null) 
        {
            return;
        }
        d.b(a).a(message);
    }
}
