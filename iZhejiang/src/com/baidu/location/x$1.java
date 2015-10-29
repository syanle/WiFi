// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ab, x

class t> extends Handler
{

    final x a;

    public void handleMessage(Message message)
    {
        if (ab.gv) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            x._mthdo(a, (Location)message.obj);
            return;

        case 2: // '\002'
            if (x._mthfor(a) != null)
            {
                x._mthfor(a).a((String)message.obj);
                return;
            }
            break;

        case 3: // '\003'
            x._mthif(a, "&og=1", (Location)message.obj);
            return;

        case 4: // '\004'
            x._mthif(a, "&og=2", (Location)message.obj);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    on(x x1)
    {
        a = x1;
        super();
    }
}
