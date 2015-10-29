// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.umeng.socialize.view.controller:
//            ShareAtController

class a extends Handler
{

    final ShareAtController a;

    a(ShareAtController shareatcontroller)
    {
        a = shareatcontroller;
        super();
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 33
    //                   2 66
    //                   3 178;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (ShareAtController.a(a) != null && ShareAtController.b(a) != null)
        {
            ShareAtController.b(a).a();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (ShareAtController.a(a) != null)
        {
            break; /* Loop/switch isn't completed */
        }
        ShareAtController.a(a, ShareAtController.a(a, ShareAtController.c(a)));
        if (ShareAtController.b(a) != null)
        {
            ShareAtController.b(a).c(ShareAtController.a(a));
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
        ShareAtController.a(a, ShareAtController.a(a, ShareAtController.c(a)));
        if (ShareAtController.b(a) != null)
        {
            ShareAtController.b(a).a(ShareAtController.a(a));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (ShareAtController.a(a) != null && ShareAtController.b(a) != null)
        {
            ShareAtController.b(a).b();
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }
}
