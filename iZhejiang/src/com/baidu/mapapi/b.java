// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.mapapi:
//            a

class b extends Handler
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void handleMessage(Message message)
    {
        a.a(message);
    }
}
