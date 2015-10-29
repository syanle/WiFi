// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core;

import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.pubinfo.wifi_core:
//            AppBaseActivity

class this._cls0
    implements android.content.ClickListener
{

    final AppBaseActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface = new Intent("com.pubinfo.trafficvideo.APPLICTION_EXIT");
        sendBroadcast(dialoginterface);
        finish();
    }

    istener()
    {
        this$0 = AppBaseActivity.this;
        super();
    }
}
