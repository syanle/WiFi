// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor.controller.impl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.umeng.scrshot.UMScrShotController;
import com.umeng.scrshot.adapter.UMBaseAdapter;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.media.UMImage;
import com.umeng.socialize.sensor.UMSensorManager;
import com.umeng.socialize.sensor.UMShakeSensor;
import com.umeng.socialize.sensor.controller.UMShakeService;
import com.umeng.socialize.sensor.strategy.UMOpenShareStrategy;
import com.umeng.socialize.sensor.strategy.UMScrShotStrategy;
import com.umeng.socialize.sensor.strategy.UMShareStrategy;
import java.util.List;

public class UMShakeServiceImpl
    implements UMShakeService
{

    static final boolean $assertionsDisabled;
    private final String TAG = getClass().getSimpleName();
    private boolean isAsyncToTakeScrShot;
    private String mShakeContent;
    private int mShakeSpeedShreshold;
    private UMSocialService mSocialController;

    protected UMShakeServiceImpl(String s)
    {
        mSocialController = null;
        mShakeContent = "";
        mShakeSpeedShreshold = 1800;
        isAsyncToTakeScrShot = false;
        mSocialController = UMServiceFactory.getUMSocialService(s, RequestType.SOCIAL);
        if (!$assertionsDisabled && mSocialController == null)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    private void addShakeOP(Context context)
    {
        SocializeEntity socializeentity = mSocialController.getEntity();
        if (socializeentity != null)
        {
            socializeentity.addShakeStatisticsData(context);
        }
    }

    public int getShakeSpeedShreshold()
    {
        return mShakeSpeedShreshold;
    }

    public String getShareContent()
    {
        return mShakeContent;
    }

    public boolean isAsyncTakeScrShot()
    {
        return isAsyncToTakeScrShot;
    }

    public void openShare(Activity activity, boolean flag, UMBaseAdapter umbaseadapter)
    {
        if (umbaseadapter != null)
        {
            UMScrShotController umscrshotcontroller = UMScrShotController.getInstance();
            umscrshotcontroller.setScrShotAdapter(umbaseadapter);
            umbaseadapter = umscrshotcontroller.takeScreenShot();
            if (umbaseadapter != null && !umbaseadapter.isRecycled())
            {
                mSocialController.setShareMedia(new UMImage(activity, umbaseadapter));
            }
        }
        if (mSocialController != null)
        {
            mSocialController.openShare(activity, flag);
        }
    }

    public void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, int i, boolean flag, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener)
    {
        addShakeOP(activity);
        mShakeSpeedShreshold = i;
        UMShakeSensor umshakesensor = (UMShakeSensor)UMSensorManager.getShakeSensor(activity, i);
        if (umshakesensor == null)
        {
            Log.e(TAG, "#### \u4F20\u611F\u5668\u5B9E\u4F8B\u5316\u5931\u8D25");
            return;
        }
        umshakesensor.setSoundEnable(flag);
        activity = new UMShareStrategy(activity);
        activity.setSharePlatforms(list);
        activity.setUMSocialService(mSocialController);
        activity.setShakeController(this);
        activity.setScrShotAdapter(umbaseadapter);
        activity.setSensorListener(onsensorlistener);
        umshakesensor.setSensorStrategy(activity);
        if (mSocialController != null)
        {
            UMSensorManager.registerSensor(umshakesensor, onsensorlistener);
            return;
        } else
        {
            Log.e(TAG, "### mSocialController == null, \u8BF7\u8BBE\u7F6Eshare controller");
            return;
        }
    }

    public void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener)
    {
        registerShakeListender(activity, umbaseadapter, true, list, onsensorlistener);
    }

    public void registerShakeListender(Activity activity, UMBaseAdapter umbaseadapter, boolean flag, List list, com.umeng.socialize.sensor.UMSensor.OnSensorListener onsensorlistener)
    {
        registerShakeListender(activity, umbaseadapter, mShakeSpeedShreshold, flag, list, onsensorlistener);
    }

    public void registerShakeToOpenShare(Activity activity, int i, boolean flag)
    {
        addShakeOP(activity);
        mShakeSpeedShreshold = i;
        UMShakeSensor umshakesensor = (UMShakeSensor)UMSensorManager.getShakeSensor(activity, i);
        if (umshakesensor == null)
        {
            Log.d(TAG, "####\u4F20\u611F\u5668\u5B9E\u4F8B\u5316\u5931\u8D25");
            return;
        } else
        {
            umshakesensor.setSoundEnable(flag);
            activity = new UMOpenShareStrategy(activity);
            activity.setUMSocialService(mSocialController);
            umshakesensor.setSensorStrategy(activity);
            UMSensorManager.registerSensor(umshakesensor, null);
            return;
        }
    }

    public void registerShakeToOpenShare(Activity activity, boolean flag)
    {
        registerShakeToOpenShare(activity, mShakeSpeedShreshold, flag);
    }

    public void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, int i, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        registerShakeToScrShot(activity, umbaseadapter, i, true, onscreenshotlistener);
    }

    public void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, int i, boolean flag, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        addShakeOP(activity);
        mShakeSpeedShreshold = i;
        UMShakeSensor umshakesensor = (UMShakeSensor)UMSensorManager.getShakeSensor(activity, i);
        if (umshakesensor == null)
        {
            Log.d(TAG, "####\u4F20\u611F\u5668\u5B9E\u4F8B\u5316\u5931\u8D25");
            return;
        } else
        {
            activity = new UMScrShotStrategy(activity);
            activity.setScreenshotListener(onscreenshotlistener);
            activity.setScrShotAdapter(umbaseadapter);
            umshakesensor.setSensorStrategy(activity);
            umshakesensor.setSoundEnable(flag);
            UMSensorManager.registerSensor(umshakesensor, null);
            return;
        }
    }

    public void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        registerShakeToScrShot(activity, umbaseadapter, true, onscreenshotlistener);
    }

    public void registerShakeToScrShot(Activity activity, UMBaseAdapter umbaseadapter, boolean flag, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        registerShakeToScrShot(activity, umbaseadapter, mShakeSpeedShreshold, flag, onscreenshotlistener);
    }

    public void setAsyncTakeScrShot(boolean flag)
    {
        isAsyncToTakeScrShot = flag;
    }

    public void setShakeSpeedShreshold(int i)
    {
        mShakeSpeedShreshold = i;
    }

    public void setShareContent(String s)
    {
        mShakeContent = s;
    }

    public void setSocialController(UMSocialService umsocialservice)
    {
        mSocialController = umsocialservice;
    }

    public void takeScrShot(Activity activity, UMBaseAdapter umbaseadapter, com.umeng.scrshot.UMScrShotController.OnScreenshotListener onscreenshotlistener)
    {
        activity = UMScrShotController.getInstance();
        activity.setScrShotAdapter(umbaseadapter);
        activity.setScrShotListener(onscreenshotlistener);
        activity.takeScreenShot();
    }

    public void unregisterShakeListener(Activity activity)
    {
        UMSensorManager.unregisterSensor(activity);
    }

    static 
    {
        boolean flag;
        if (!com/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
