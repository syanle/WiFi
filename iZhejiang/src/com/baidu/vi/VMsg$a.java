// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.baidu.vi:
//            VMsg

static class init> extends Handler
{

    public void handleMessage(Message message)
    {
        int i;
        if (message.obj == null)
        {
            i = 0;
        } else
        {
            i = ((Integer)message.obj).intValue();
        }
        VMsg.a(message.what, message.arg1, message.arg2, i);
    }

    public (Looper looper)
    {
        super(looper);
    }
}
