// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ag, ab

public class > extends Handler
{

    final ag a;

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

        case 21: // '\025'
            a._mthbyte(message);
            return;

        case 62: // '>'
        case 63: // '?'
            a.at();
            break;
        }
    }

    public (ag ag1)
    {
        a = ag1;
        super();
    }
}
