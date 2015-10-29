// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sensor;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import com.umeng.socialize.sensor.strategy.UMSensorStrategy;

// Referenced classes of package com.umeng.socialize.sensor:
//            UMShakeSensor

public abstract class UMSensor
    implements SensorEventListener
{
    public static interface OnSensorListener
        extends com.umeng.socialize.controller.listener.SocializeListeners.SnsPostListener
    {

        public abstract void onActionComplete(SensorEvent sensorevent);

        public abstract void onButtonClick(WhitchButton whitchbutton);
    }

    public static class SensorType extends Enum
    {

        public static final SensorType ACCELEROMETER;
        private static final SensorType ENUM$VALUES[];

        public static SensorType valueOf(String s)
        {
            return (SensorType)Enum.valueOf(com/umeng/socialize/sensor/UMSensor$SensorType, s);
        }

        public static SensorType[] values()
        {
            SensorType asensortype[] = ENUM$VALUES;
            int i = asensortype.length;
            SensorType asensortype1[] = new SensorType[i];
            System.arraycopy(asensortype, 0, asensortype1, 0, i);
            return asensortype1;
        }

        static 
        {
            ACCELEROMETER = new SensorType("ACCELEROMETER", 0) {

                public String toString()
                {
                    return com/umeng/socialize/sensor/UMShakeSensor.getName();
                }

            };
            ENUM$VALUES = (new SensorType[] {
                ACCELEROMETER
            });
        }

        private SensorType(String s, int i)
        {
            super(s, i);
        }

        SensorType(String s, int i, SensorType sensortype)
        {
            this(s, i);
        }
    }

    public static class WhitchButton extends Enum
    {

        public static final WhitchButton BUTTON_CANCEL;
        public static final WhitchButton BUTTON_SHARE;
        private static final WhitchButton ENUM$VALUES[];

        public static WhitchButton valueOf(String s)
        {
            return (WhitchButton)Enum.valueOf(com/umeng/socialize/sensor/UMSensor$WhitchButton, s);
        }

        public static WhitchButton[] values()
        {
            WhitchButton awhitchbutton[] = ENUM$VALUES;
            int i = awhitchbutton.length;
            WhitchButton awhitchbutton1[] = new WhitchButton[i];
            System.arraycopy(awhitchbutton, 0, awhitchbutton1, 0, i);
            return awhitchbutton1;
        }

        static 
        {
            BUTTON_CANCEL = new WhitchButton("BUTTON_CANCEL", 0) {

                public String toString()
                {
                    return "cancel";
                }

            };
            BUTTON_SHARE = new WhitchButton("BUTTON_SHARE", 1) {

                public String toString()
                {
                    return "share";
                }

            };
            ENUM$VALUES = (new WhitchButton[] {
                BUTTON_CANCEL, BUTTON_SHARE
            });
        }

        private WhitchButton(String s, int i)
        {
            super(s, i);
        }

        WhitchButton(String s, int i, WhitchButton whitchbutton)
        {
            this(s, i);
        }
    }


    protected final String TAG = com/umeng/socialize/sensor/UMSensor.getName();
    protected boolean isNeedSound;
    private volatile boolean isSensorLocked;
    private boolean isStart;
    protected Activity mActivity;
    protected Sensor mSensor;
    protected OnSensorListener mSensorBaseListener;
    protected SensorManager mSensorManager;
    protected UMSensorStrategy mSensorStrategy;
    private SensorType mSensorType;

    protected UMSensor(Activity activity, SensorType sensortype)
    {
        mActivity = null;
        mSensorManager = null;
        mSensor = null;
        mSensorBaseListener = null;
        mSensorStrategy = null;
        mSensorType = SensorType.ACCELEROMETER;
        isStart = false;
        isNeedSound = true;
        isSensorLocked = false;
        mActivity = activity;
        mSensorType = sensortype;
    }

    public Activity getParentActivity()
    {
        return mActivity;
    }

    public Sensor getSensor()
    {
        return mSensor;
    }

    public OnSensorListener getSensorBaseListener()
    {
        return mSensorBaseListener;
    }

    public UMSensorStrategy getSensorStrategy()
    {
        return mSensorStrategy;
    }

    public SensorType getSensorType()
    {
        return mSensorType;
    }

    public boolean isLocked()
    {
        return isSensorLocked;
    }

    public boolean isSoundEnable()
    {
        return isNeedSound;
    }

    public boolean isStart()
    {
        return isStart;
    }

    public void lock()
    {
        isSensorLocked = true;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
        Log.d(TAG, (new StringBuilder("onAccuracyChanged -->  accuracy: ")).append(i).toString());
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
    }

    public boolean register()
    {
        mSensorManager = (SensorManager)mActivity.getSystemService("sensor");
        if (mSensorManager != null && mSensorType == SensorType.ACCELEROMETER)
        {
            mSensor = mSensorManager.getDefaultSensor(1);
        }
        if (mSensor != null)
        {
            isStart = mSensorManager.registerListener(this, mSensor, 1);
        } else
        {
            Log.d(TAG, "### \u4F20\u611F\u5668\u521D\u59CB\u5316\u5931\u8D25!");
        }
        return isStart;
    }

    public void setParentActivity(Activity activity)
    {
        mActivity = activity;
    }

    public void setSensor(Sensor sensor)
    {
        mSensor = sensor;
    }

    public void setSensorListener(OnSensorListener onsensorlistener)
    {
        mSensorBaseListener = onsensorlistener;
    }

    public void setSensorStrategy(UMSensorStrategy umsensorstrategy)
    {
        mSensorStrategy = umsensorstrategy;
    }

    public void setSensorType(SensorType sensortype)
    {
        mSensorType = sensortype;
    }

    public void setSoundEnable(boolean flag)
    {
        isNeedSound = flag;
    }

    public void unlock()
    {
        isSensorLocked = false;
    }

    public void unregister()
    {
        if (mSensorManager != null && !isSensorLocked)
        {
            mSensorManager.unregisterListener(this);
            isStart = false;
            mSensorStrategy = null;
        }
    }
}
