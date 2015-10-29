// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.Intent;
import android.content.SharedPreferences;
import com.pubinfo.freewifialliance.service.WifiConnService;

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
            if (SettingsPage.access$0(SettingsPage.this).getStatus() == 1)
            {
                SettingsPage.access$0(SettingsPage.this).setStatus(false);
            }
            SettingsPage.access$1(0);
            slideswitch = getSharedPreferences("service", 0).edit();
            slideswitch.putString("stop", "stop");
            slideswitch.commit();
            slideswitch = new Intent(SettingsPage.this, com/pubinfo/freewifialliance/service/WifiConnService);
            stopService(slideswitch);
        } else
        if (i == 1)
        {
            SettingsPage.access$1(1);
            startWifiService();
            slideswitch = getSharedPreferences("service", 0).edit();
            slideswitch.putString("stop", "");
            slideswitch.commit();
            return;
        }
    }

    ice()
    {
        this$0 = SettingsPage.this;
        super();
    }
}
