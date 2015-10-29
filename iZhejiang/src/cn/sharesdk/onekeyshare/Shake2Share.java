// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.FloatMath;
import android.view.Window;
import android.widget.ImageView;
import android.widget.Toast;
import com.mob.tools.FakeActivity;
import com.mob.tools.utils.R;

public class Shake2Share extends FakeActivity
    implements SensorEventListener
{
    public static interface OnShakeListener
    {

        public abstract void onShake();
    }


    private static final int SHAKE_THRESHOLD = 1500;
    private static final int UPDATE_INTERVAL = 100;
    private OnShakeListener listener;
    private long mLastUpdateTime;
    private float mLastX;
    private float mLastY;
    private float mLastZ;
    private SensorManager mSensorManager;
    private boolean shaken;

    public Shake2Share()
    {
    }

    private void startSensor()
    {
        mSensorManager = (SensorManager)activity.getSystemService("sensor");
        if (mSensorManager == null)
        {
            throw new UnsupportedOperationException();
        }
        Sensor sensor = mSensorManager.getDefaultSensor(1);
        if (sensor == null)
        {
            throw new UnsupportedOperationException();
        }
        if (!mSensorManager.registerListener(this, sensor, 1))
        {
            throw new UnsupportedOperationException();
        } else
        {
            return;
        }
    }

    private void stopSensor()
    {
        if (mSensorManager != null)
        {
            mSensorManager.unregisterListener(this);
            mSensorManager = null;
        }
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onCreate()
    {
        startSensor();
        int i = R.getBitmapRes(activity, "ssdk_oks_yaoyiyao");
        if (i > 0)
        {
            ImageView imageview = new ImageView(activity);
            imageview.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
            imageview.setImageResource(i);
            activity.setContentView(imageview);
        }
        i = R.getStringRes(activity, "shake2share");
        if (i > 0)
        {
            Toast.makeText(activity, i, 0).show();
        }
    }

    public void onDestroy()
    {
        stopSensor();
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        long l = System.currentTimeMillis();
        long l1 = l - mLastUpdateTime;
        if (l1 > 100L)
        {
            if (mLastUpdateTime != 0L)
            {
                float f = sensorevent.values[0];
                float f1 = sensorevent.values[1];
                float f2 = sensorevent.values[2];
                float f3 = f - mLastX;
                float f4 = f1 - mLastY;
                float f5 = f2 - mLastZ;
                if ((FloatMath.sqrt(f3 * f3 + f4 * f4 + f5 * f5) / (float)l1) * 10000F > 1500F)
                {
                    if (!shaken)
                    {
                        shaken = true;
                        finish();
                    }
                    if (listener != null)
                    {
                        listener.onShake();
                    }
                }
                mLastX = f;
                mLastY = f1;
                mLastZ = f2;
            }
            mLastUpdateTime = l;
        }
    }

    public void setActivity(Activity activity)
    {
        super.setActivity(activity);
        int i = R.getBitmapRes(activity, "ssdk_oks_shake_to_share_back");
        if (i > 0)
        {
            activity.setTheme(0x103000b);
            activity.requestWindowFeature(1);
            activity.getWindow().setBackgroundDrawableResource(i);
        }
    }

    public void setOnShakeListener(OnShakeListener onshakelistener)
    {
        listener = onshakelistener;
    }
}
