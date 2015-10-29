// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;

// Referenced classes of package com.baidu.location:
//            z, LocationClient

public class stReceiver extends BroadcastReceiver
{

    final z a;

    public void onReceive(Context context, Intent intent)
    {
        if (z._mthdo(a) == null || z._mthdo(a).isEmpty())
        {
            return;
        } else
        {
            z._mthif(a).requestNotifyLocation();
            return;
        }
    }

    public (z z1)
    {
        a = z1;
        super();
    }
}
