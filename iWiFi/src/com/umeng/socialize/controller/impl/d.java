// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.impl;

import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.umeng.socialize.controller.impl:
//            c

class d extends Handler
{

    d(Looper looper)
    {
        super(looper);
    }

    public void handleMessage(Message message)
    {
        if (message.what != 0)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        Log.d(c.a(), "### when auth, close the loading dialog...");
        if (c.c == null || !c.c.isShowing())
        {
            break MISSING_BLOCK_LABEL_37;
        }
        c.c.dismiss();
        return;
        message;
    }
}
