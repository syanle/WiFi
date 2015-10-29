// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.lbsapi.auth;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Hashtable;

// Referenced classes of package com.baidu.lbsapi.auth:
//            a, e, i

class f extends Handler
{

    final e a;

    f(e e1, Looper looper)
    {
        a = e1;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a("handleMessage !!");
        }
        Object obj = message.getData().getString("listenerKey");
        obj = (i)e.a().get(obj);
        if (a.a)
        {
            com.baidu.lbsapi.auth.a.a((new StringBuilder()).append("handleMessage listener = ").append(obj).toString());
        }
        if (obj != null)
        {
            ((i) (obj)).a(message.what, message.obj.toString());
        }
    }
}
