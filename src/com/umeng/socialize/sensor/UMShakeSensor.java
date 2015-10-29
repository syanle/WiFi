// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;

import android.app.Activity;
import android.hardware.SensorEvent;
import android.util.Log;
import android.widget.Toast;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeEntity;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.sensor.strategy.UMSensorStrategy;
import com.umeng.socialize.sensor.strategy.UMShareStrategy;
import com.umeng.socialize.sensor.utils.UMAudioPlayer;

// Referenced classes of package com.umeng.socialize.sensor:
//            UMSensor

public class UMShakeSensor extends UMSensor
{

    public static final int DEFAULT_SHAKE_SPEED = 1800;
    private static final int UPTATE_INTERVAL_TIME = 100;
    private static UMAudioPlayer mAudioPlayer = null;
    private long mLastShakeTime;
    private long mLastUpdateTime;
    private float mLastX;
    private float mLastY;
    private float mLastZ;
    private UMSensor.OnSensorListener mSensorShakeListener = new UMSensor.OnSensorListener() {

        final UMShakeSensor this$0;

        public void onActionComplete(SensorEvent sensorevent)
        {
            if (mActivity == null || mActivity.isFinishing())
            {
                Log.d(TAG, "####mActivity == null, \u4E0D\u80FD\u622A\u5C4F");
                return;
            }
            synchronized (mActivity)
            {
                if (mSensorStrategy == null || !(mSensorStrategy instanceof UMShareStrategy) || !((UMShareStrategy)mSensorStrategy).isDialogShowing())
                {
                    break MISSING_BLOCK_LABEL_110;
                }
                Toast.makeText(mActivity, "\u8BF7\u5148\u5173\u95ED\u5F53\u524D\u6447\u4E00\u6447\u5206\u4EAB\u7A97\u53E3", 0).show();
            }
            return;
            sensorevent;
            activity1;
            JVM INSTR monitorexit ;
            throw sensorevent;
            if (isNeedSound)
            {
                UMShakeSensor.mAudioPlayer.start();
            }
            if (mSensorBaseListener == null)
            {
                break MISSING_BLOCK_LABEL_174;
            }
            mSensorBaseListener.onActionComplete(sensorevent);
_L2:
            if (mSensorStrategy != null)
            {
                mSensorStrategy.shakeComplete();
            }
            activity1;
            JVM INSTR monitorexit ;
            return;
            Log.d(TAG, "#### UMShakeSensor mSensorBaseListener == null");
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void onButtonClick(UMSensor.WhitchButton whitchbutton)
        {
            if (mSensorBaseListener != null)
            {
                mSensorBaseListener.onButtonClick(whitchbutton);
            }
        }

        public void onComplete(SHARE_MEDIA share_media, int j, SocializeEntity socializeentity)
        {
            if (mSensorBaseListener != null)
            {
                Log.d(TAG, "### \u4F20\u611F\u5668onComplete");
                mSensorBaseListener.onComplete(share_media, j, socializeentity);
            }
        }

        public void onStart()
        {
            if (mSensorBaseListener != null)
            {
                mSensorBaseListener.onStart();
            }
        }

            
            {
                this$0 = UMShakeSensor.this;
                super();
            }
    };
    private int mShakeInterval;
    private int mSpeedShreshold;

    protected UMShakeSensor(Activity activity)
    {
        this(activity, 1800);
    }

    protected UMShakeSensor(Activity activity, int i)
    {
        super(activity, UMSensor.SensorType.ACCELEROMETER);
        mSpeedShreshold = 1800;
        mShakeInterval = 1000;
        mLastX = 0.0F;
        mLastY = 0.0F;
        mLastZ = 0.0F;
        mSpeedShreshold = i;
        mSensorBaseListener = null;
        initAudioPlayer();
    }

    private void initAudioPlayer()
    {
        if (mAudioPlayer == null && mActivity != null)
        {
            mAudioPlayer = new UMAudioPlayer(mActivity, ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.RAW, "shake_sound"));
        }
    }

    public int getShakeinterval()
    {
        return mShakeInterval;
    }

    public int getSpeedShreshold()
    {
        return mSpeedShreshold;
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        long l = System.currentTimeMillis();
        long l1 = l - mLastUpdateTime;
        if (l1 >= 100L)
        {
            mLastUpdateTime = l;
            float f = sensorevent.values[0];
            float f1 = sensorevent.values[1];
            float f2 = sensorevent.values[2];
            float f3 = f - mLastX;
            float f4 = f1 - mLastY;
            float f5 = f2 - mLastZ;
            mLastX = f;
            mLastY = f1;
            mLastZ = f2;
            if ((Math.sqrt(f3 * f3 + f4 * f4 + f5 * f5) / (double)l1) * 10000D >= (double)mSpeedShreshold && l - mLastShakeTime > (long)mShakeInterval)
            {
                mSensorShakeListener.onActionComplete(sensorevent);
                mLastShakeTime = l;
                return;
            }
        }
    }

    public void setSensorStrategy(UMSensorStrategy umsensorstrategy)
    {
        mSensorStrategy = umsensorstrategy;
        if (mSensorStrategy != null)
        {
            mSensorStrategy.setSensorListener(mSensorShakeListener);
        }
    }

    public void setShakeinterval(int i)
    {
        mShakeInterval = i;
    }

    public void setSpeedShreshold(int i)
    {
        int j = i;
        if (i < 0)
        {
            j = 0;
            Log.e(TAG, "speedShreshold\u901F\u5EA6\u9600\u503C\u4E0D\u80FD\u5C0F\u4E8E0\uFF0C\u81EA\u52A8\u91CD\u7F6E\u4E3A0.");
        }
        mSpeedShreshold = j;
    }


}
