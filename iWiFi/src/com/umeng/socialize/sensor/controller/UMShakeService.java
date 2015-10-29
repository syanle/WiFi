// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.controller;

import android.app.Activity;
import com.umeng.scrshot.adapter.UMBaseAdapter;
import java.util.List;

public interface UMShakeService
{

    public abstract int getShakeSpeedShreshold();

    public abstract String getShareContent();

    public abstract boolean isAsyncTakeScrShot();

    public abstract void openShare(Activity activity, boolean flag, UMBaseAdapter umbaseadapter);

    public abstract void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, int i, boolean flag, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener);

    public abstract void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener);

    public abstract void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, boolean flag, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener);

    public abstract void registerShakeToOpenShare(Activity activity, int i, boolean flag);

    public abstract void registerShakeToOpenShare(Activity activity, boolean flag);

    public abstract void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, int i, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener);

    public abstract void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, int i, boolean flag, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener);

    public abstract void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener);

    public abstract void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, boolean flag, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener);

    public abstract void setAsyncTakeScrShot(boolean flag);

    public abstract void setShakeSpeedShreshold(int i);

    public abstract void setShareContent(String s);

    public abstract void takeScrShot(Activity activity, UMBaseAdapter umbaseadapter, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener);

    public abstract void unregisterShakeListener(Activity activity);
}
