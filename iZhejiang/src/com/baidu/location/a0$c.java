// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            a0

public class tReceiver extends BroadcastReceiver
{

    final a0 a;

    public void onReceive(Context context, Intent intent)
    {
        a0._mthif(a, context);
        a0._mthbyte(a).post(a0._mthif(a));
    }

    public tReceiver(a0 a0_1)
    {
        a = a0_1;
        super();
    }
}
