// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ab, o

class t> extends Handler
{

    final o a;

    public void handleMessage(Message message)
    {
        if (!ab.gv)
        {
            return;
        }
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            o._mthif(a);
            break;
        }
    }

    (o o1)
    {
        a = o1;
        super();
    }
}
