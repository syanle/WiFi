// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Intent;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            SettingsPage, SlideSwitch

class this._cls0
    implements witchChangedListener
{

    final SettingsPage this$0;

    public void onSwitchChanged(SlideSwitch slideswitch, int i)
    {
        if (i == 0)
        {
            SettingsPage.access$5(0);
            slideswitch = new Intent();
            slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StopNightSearchBroadcastReceiver");
            sendBroadcast(slideswitch);
        } else
        if (i == 1)
        {
            if (SettingsPage.access$0(SettingsPage.this).getStatus() == 0)
            {
                SettingsPage.access$0(SettingsPage.this).setStatus(true);
            }
            SettingsPage.access$5(1);
            slideswitch = new Intent();
            slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StartNightSearchBroadcastReceiver");
            sendBroadcast(slideswitch);
            return;
        }
    }

    witchChangedListener()
    {
        this$0 = SettingsPage.this;
        super();
    }
}
