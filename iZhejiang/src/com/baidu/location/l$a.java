// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

// Referenced classes of package com.baidu.location:
//            l

public class stReceiver extends BroadcastReceiver
{

    final l a;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.baidu.locTest.LocationServer4.2"))
        {
            l._mthif(a).sendEmptyMessage(1);
        }
    }

    public (l l1)
    {
        a = l1;
        super();
    }
}
