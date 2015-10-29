// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            r, ab

public class t> extends Handler
{

    final r a;

    public void handleMessage(Message message)
    {
        if (!ab.gv)
        {
            return;
        }
        message.what;
        JVM INSTR tableswitch 92 92: default 28
    //                   92 34;
           goto _L1 _L2
_L1:
        super.handleMessage(message);
        return;
_L2:
        r._mthif(a);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public (r r1)
    {
        a = r1;
        super();
    }
}
