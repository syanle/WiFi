// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            ConnectActivity

class val.time
    implements Runnable
{

    final ConnectActivity this$0;
    private final String val$time;

    public void run()
    {
        tv2.setText(val$time);
    }

    ()
    {
        this$0 = final_connectactivity;
        val$time = String.this;
        super();
    }
}
