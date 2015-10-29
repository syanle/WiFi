// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.vi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.baidu.vi:
//            VDeviceAPI

final class a extends BroadcastReceiver
{

    a()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        VDeviceAPI.onNetworkStateChanged();
    }
}
