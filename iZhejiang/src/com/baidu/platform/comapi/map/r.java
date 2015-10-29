// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.platform.comapi.map:
//            q, v

class r extends Handler
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public void handleMessage(Message message)
    {
        super.handleMessage(message);
        if (q.f() != null)
        {
            q.a(a).a(message);
        }
    }
}
