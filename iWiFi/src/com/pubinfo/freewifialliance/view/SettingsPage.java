// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.pubinfo.freewifialliance.service.WifiConnService;
import com.pubinfo.wifi_core.AppBaseActivity;
import java.io.File;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            SlideSwitch

public class SettingsPage extends AppBaseActivity
    implements android.view.View.OnClickListener
{

    private static final String SETTINGS = "settings";
    public static final String STOP_SERVICE = "stop";
    public static final String STOP_SP = "service";
    public static final int SWITCH_OFF = 0;
    public static final int SWITCH_ON = 1;
    private static int auto;
    private static int desk;
    private static int night;
    String WIFICONN;
    RelativeLayout about_rlLayout;
    private SlideSwitch autoSearchSlideSwitch;
    RelativeLayout auto_rlLayout;
    ImageButton backButton;
    RelativeLayout desk_rlLayout;
    private File file;
    private SlideSwitch isShowDeskViewSlideSwitch;
    boolean ishaveNew;
    ImageView ishaveNewImageView;
    android.widget.RelativeLayout.LayoutParams lpLayoutParams;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    RelativeLayout new_rlLayout;
    private SlideSwitch nightStopSlideSwitch;
    RelativeLayout night_rlLayout;
    ImageButton refreshButton;
    private WifiManager wifiManager;

    public SettingsPage()
    {
        WIFICONN = "com.pubinfo.freewifialliance.service.WifiConnService";
        mPackMg = null;
        mLocalVersionName = "";
    }

    public void onClick(View view)
    {
        if (!view.equals(about_rlLayout) && !view.equals(new_rlLayout) && view.equals(backButton))
        {
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030012);
        night_rlLayout = (RelativeLayout)findViewById(0x7f0c0047);
        auto_rlLayout = (RelativeLayout)findViewById(0x7f0c0046);
        desk_rlLayout = (RelativeLayout)findViewById(0x7f0c0045);
        refreshButton = (ImageButton)findViewById(0x7f0c005b);
        refreshButton.setVisibility(8);
        backButton = (ImageButton)findViewById(0x7f0c0014);
        backButton.setOnClickListener(this);
        lpLayoutParams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        lpLayoutParams.addRule(11);
        lpLayoutParams.addRule(15);
        lpLayoutParams.setMargins(0, 0, 10, 0);
        bundle = getSharedPreferences("settings", 0);
        if (bundle.getInt("night", -1) == -1)
        {
            night = 1;
            desk = 1;
            auto = 1;
        } else
        {
            night = bundle.getInt("night", -1);
            desk = bundle.getInt("desk", -1);
            auto = bundle.getInt("auto", -1);
        }
        nightStopSlideSwitch = new SlideSwitch(this, night);
        night_rlLayout.addView(nightStopSlideSwitch, lpLayoutParams);
        autoSearchSlideSwitch = new SlideSwitch(this, auto);
        auto_rlLayout.addView(autoSearchSlideSwitch, lpLayoutParams);
        isShowDeskViewSlideSwitch = new SlideSwitch(this, desk);
        desk_rlLayout.addView(isShowDeskViewSlideSwitch, lpLayoutParams);
        isShowDeskViewSlideSwitch.setOnSwitchChangedListener(new SlideSwitch.OnSwitchChangedListener() {

            final SettingsPage this$0;

            public void onSwitchChanged(SlideSwitch slideswitch, int i)
            {
                if (i == 0)
                {
                    if (autoSearchSlideSwitch.getStatus() == 1)
                    {
                        autoSearchSlideSwitch.setStatus(false);
                    }
                    SettingsPage.desk = 0;
                    slideswitch = getSharedPreferences("service", 0).edit();
                    slideswitch.putString("stop", "stop");
                    slideswitch.commit();
                    slideswitch = new Intent(SettingsPage.this, com/pubinfo/freewifialliance/service/WifiConnService);
                    stopService(slideswitch);
                } else
                if (i == 1)
                {
                    SettingsPage.desk = 1;
                    startWifiService();
                    slideswitch = getSharedPreferences("service", 0).edit();
                    slideswitch.putString("stop", "");
                    slideswitch.commit();
                    return;
                }
            }

            
            {
                this$0 = SettingsPage.this;
                super();
            }
        });
        autoSearchSlideSwitch.setOnSwitchChangedListener(new SlideSwitch.OnSwitchChangedListener() {

            final SettingsPage this$0;

            public void onSwitchChanged(SlideSwitch slideswitch, int i)
            {
                if (i == 0)
                {
                    if (nightStopSlideSwitch.getStatus() == 1)
                    {
                        nightStopSlideSwitch.setStatus(false);
                    }
                    SettingsPage.auto = 0;
                    slideswitch = new Intent();
                    slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StopTaskBroadcastReceiver");
                    sendBroadcast(slideswitch);
                } else
                if (i == 1)
                {
                    if (isShowDeskViewSlideSwitch.getStatus() == 0)
                    {
                        isShowDeskViewSlideSwitch.setStatus(true);
                    }
                    SettingsPage.auto = 1;
                    slideswitch = new Intent();
                    slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StartTaskBroadcastReceiver");
                    sendBroadcast(slideswitch);
                    return;
                }
            }

            
            {
                this$0 = SettingsPage.this;
                super();
            }
        });
        nightStopSlideSwitch.setOnSwitchChangedListener(new SlideSwitch.OnSwitchChangedListener() {

            final SettingsPage this$0;

            public void onSwitchChanged(SlideSwitch slideswitch, int i)
            {
                if (i == 0)
                {
                    SettingsPage.night = 0;
                    slideswitch = new Intent();
                    slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StopNightSearchBroadcastReceiver");
                    sendBroadcast(slideswitch);
                } else
                if (i == 1)
                {
                    if (autoSearchSlideSwitch.getStatus() == 0)
                    {
                        autoSearchSlideSwitch.setStatus(true);
                    }
                    SettingsPage.night = 1;
                    slideswitch = new Intent();
                    slideswitch.setAction("com.pubinfo.freewifialliance.service.WifiConnService.StartNightSearchBroadcastReceiver");
                    sendBroadcast(slideswitch);
                    return;
                }
            }

            
            {
                this$0 = SettingsPage.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
        android.content.SharedPreferences.Editor editor = getSharedPreferences("settings", 0).edit();
        editor.putInt("night", night);
        editor.putInt("desk", desk);
        editor.putInt("auto", auto);
        editor.commit();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    public void startWifiService()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        boolean flag = false;
        Object obj = (ActivityManager)getSystemService("activity");
        ((ActivityManager) (obj)).getRunningServices(0x7fffffff);
        obj = ((ActivityManager) (obj)).getRunningServices(0x7fffffff).iterator();
        do
        {
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo;
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    if (!flag)
                    {
                        obj = new Intent();
                        ((Intent) (obj)).setAction(WIFICONN);
                        context.startService(((Intent) (obj)));
                    }
                    return;
                }
                runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)((Iterator) (obj)).next();
            } while (!WIFICONN.equals(runningserviceinfo.service.getClassName()));
            flag = true;
        } while (true);
    }






}
