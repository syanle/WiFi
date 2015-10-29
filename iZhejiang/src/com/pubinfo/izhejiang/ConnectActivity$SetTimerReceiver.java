// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

private class time extends BroadcastReceiver
{

    final ConnectActivity this$0;
    int time;

    public void onReceive(Context context, Intent intent)
    {
        if (intent != null)
        {
            context = intent.getAction();
            if (context != null && "com.settings.timer".equals(context))
            {
                time = intent.getIntExtra("times", 0);
                setConectTime(getStandardTime(time));
            }
        }
    }

    private ()
    {
        this$0 = ConnectActivity.this;
        super();
        time = 0;
    }
}
