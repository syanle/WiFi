// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.util;

import android.app.Activity;
import android.content.DialogInterface;

// Referenced classes of package com.pubinfo.wifi_core.core.util:
//            PubStaticUtil

class val.activity
    implements android.content.OnClickListener
{

    private final Activity val$activity;
    private final boolean val$isFinish;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (val$isFinish)
        {
            val$activity.finish();
        }
    }

    ()
    {
        val$isFinish = flag;
        val$activity = activity1;
        super();
    }
}
