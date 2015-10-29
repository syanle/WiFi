// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.update;

import android.app.NotificationManager;
import android.os.Handler;
import android.os.Message;
import com.pubinfo.freewifialliance.view.WelcomePage;

// Referenced classes of package com.pubinfo.freewifialliance.update:
//            DownloadService

class this._cls0 extends Handler
{

    final DownloadService this$0;

    public void handleMessage(Message message)
    {
        if (WelcomePage.loading_process >= 99)
        {
            DownloadService.access$0(DownloadService.this).cancel(0);
            stopSelf();
            return;
        }
        if (WelcomePage.loading_process > DownloadService.access$1(DownloadService.this))
        {
            DownloadService.access$2(DownloadService.this, WelcomePage.loading_process);
        }
        DownloadService.access$3(DownloadService.this, false);
        message = DownloadService.access$4(DownloadService.this).obtainMessage();
        DownloadService.access$4(DownloadService.this).sendMessage(message);
        DownloadService.access$5(DownloadService.this, WelcomePage.loading_process);
    }

    ()
    {
        this$0 = DownloadService.this;
        super();
    }
}
