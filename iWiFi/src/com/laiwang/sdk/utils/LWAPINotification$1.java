// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.utils;

import android.content.Context;
import android.widget.Toast;

// Referenced classes of package com.laiwang.sdk.utils:
//            LWAPINotification

class val.tempDuration
    implements Runnable
{

    private final Context val$context;
    private final String val$msg;
    private final int val$tempDuration;

    public void run()
    {
        Toast.makeText(val$context, val$msg, val$tempDuration).show();
    }

    ()
    {
        val$context = context1;
        val$msg = s;
        val$tempDuration = i;
        super();
    }
}
