// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.baidu.location:
//            ab, l

class t> extends Handler
{

    final l a;

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
            break;
        }
        try
        {
            a.v();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Message message)
        {
            return;
        }
    }

    (l l1)
    {
        a = l1;
        super();
    }
}
