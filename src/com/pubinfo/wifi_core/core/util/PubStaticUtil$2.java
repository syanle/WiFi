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

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        val$activity.finish();
    }

    ()
    {
        val$activity = activity1;
        super();
    }
}
