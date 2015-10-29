// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.app.Application;
import android.content.IntentFilter;
import com.pubinfo.freewifialliance.broadcast.BootBroadcastReceiver;

public class FloatApplication extends Application
{

    private android.view.WindowManager.LayoutParams windowParams;

    public FloatApplication()
    {
        windowParams = new android.view.WindowManager.LayoutParams();
    }

    public android.view.WindowManager.LayoutParams getWindowParams()
    {
        return windowParams;
    }

    public void onCreate()
    {
        super.onCreate();
        IntentFilter intentfilter = new IntentFilter("android.intent.action.TIME_TICK");
        registerReceiver(new BootBroadcastReceiver(), intentfilter);
    }
}
