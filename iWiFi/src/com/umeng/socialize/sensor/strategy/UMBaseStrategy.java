// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.strategy;

import android.app.Activity;
import com.umeng.scrshot.UMScrShotController;
import com.umeng.scrshot.adapter.UMBaseAdapter;

// Referenced classes of package com.umeng.socialize.sensor.strategy:
//            UMSensorStrategy

public abstract class UMBaseStrategy
    implements UMSensorStrategy
{

    protected static com.umeng.socialize.sensor.UMSensor.OnSensorListener mSensorListener = null;
    protected Activity mActivity;
    protected UMScrShotController mScrShotController;
    protected com.umeng.scrshot.UMScrShotController.OnScreenshotListener mScreenshotListener;

    protected UMBaseStrategy(Activity activity)
    {
        mActivity = null;
        mScreenshotListener = null;
        mScrShotController = UMScrShotController.getInstance();
        mActivity = activity;
    }

    public UMBaseAdapter getScrShotAdapter()
    {
        return mScrShotController.getScrShotAdapter();
    }

    public com.umeng.scrshot.UMScrShotController.OnScreenshotListener getScreenshotListener()
    {
        return mScreenshotListener;
    }

    public com.umeng.socialize.sensor.UMSensor.OnSensorListener getSensorListener()
    {
        return mSensorListener;
    }

    public void setScrShotAdapter(UMBaseAdapter umbaseadapter)
    {
        mScrShotController.setScrShotAdapter(umbaseadapter);
    }

    public void setScreenshotListener(com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        mScreenshotListener = onscreenshotlistener;
    }

    public void setSensorListener(com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener)
    {
        mSensorListener = onsensorlistener;
    }

    public abstract void shakeComplete();

}
