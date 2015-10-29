// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.umeng.common.Log;

// Referenced classes of package com.umeng.common.net:
//            a, k

class  extends Handler
{

    final a a;

    public void handleMessage(Message message)
    {
        Log.c(com.umeng.common.net.a.b(), (new StringBuilder()).append("DownloadAgent.handleMessage(").append(message.what).append("): ").toString());
        message.what;
        JVM INSTR tableswitch 1 5: default 296
    //                   1 78
    //                   2 279
    //                   3 147
    //                   4 72
    //                   5 174;
           goto _L1 _L2 _L3 _L4 _L1 _L5
_L1:
        super.handleMessage(message);
        return;
_L2:
        try
        {
            if (com.umeng.common.net.a.a(a) != null)
            {
                com.umeng.common.net.a.a(a).a();
                return;
            }
            break; /* Loop/switch isn't completed */
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.c(com.umeng.common.net.a.b(), (new StringBuilder()).append("DownloadAgent.handleMessage(").append(message.what).append("): ").append(exception.getMessage()).toString());
            return;
        }
_L4:
        if (com.umeng.common.net.a.a(a) != null)
        {
            com.umeng.common.net.a.a(a).a(message.arg1);
            return;
        }
        break; /* Loop/switch isn't completed */
_L5:
        com.umeng.common.net.a.c(a).unbindService(com.umeng.common.net.a.b(a));
        if (com.umeng.common.net.a.a(a) == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (message.arg1 == 1 || message.arg1 == 3 || message.arg1 == 5)
        {
            com.umeng.common.net.a.a(a).a(message.arg1, message.arg2, message.getData().getString("filename"));
            return;
        }
        com.umeng.common.net.a.a(a).a(0, 0, null);
        Log.c(com.umeng.common.net.a.b(), "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): ");
        return;
_L3:
        com.umeng.common.net.a.a(a).b(message.arg1);
        return;
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
