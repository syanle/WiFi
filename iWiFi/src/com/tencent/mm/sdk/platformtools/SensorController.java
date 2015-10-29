// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class SensorController extends BroadcastReceiver
    implements SensorEventListener
{
    public static interface SensorEventCallBack
    {

        public abstract void onSensorEvent(boolean flag);
    }


    private static float aX = 4.294967E+09F;
    private static float ba = 0.5F;
    private SensorManager aY;
    private float aZ;
    private SensorEventCallBack bb;
    private Sensor bc;
    private final boolean bd;
    private boolean be;
    private boolean bf;

    public SensorController(Context context)
    {
        be = false;
        bf = false;
        aY = (SensorManager)context.getSystemService("sensor");
        bc = aY.getDefaultSensor(8);
        boolean flag;
        if (bc != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bd = flag;
        aZ = ba + 1.0F;
    }

    public boolean isSensorEnable()
    {
        return bd;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG"))
        {
            int i = intent.getIntExtra("state", 0);
            if (i == 1)
            {
                be = true;
            }
            if (i == 0)
            {
                be = false;
            }
        }
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        float f;
        if (be)
        {
            return;
        }
        f = sensorevent.values[0];
        switch (sensorevent.sensor.getType())
        {
        default:
            return;

        case 8: // '\b'
            break;
        }
        if (f < aX)
        {
            aX = f;
            ba = 0.5F + f;
        }
        if (aZ < ba || f >= ba) goto _L2; else goto _L1
_L1:
        if (bb != null)
        {
            Log.v("MicroMsg.SensorController", "sensor event false");
            bb.onSensorEvent(false);
        }
_L4:
        aZ = f;
        return;
_L2:
        if (aZ <= ba && f > ba && bb != null)
        {
            Log.v("MicroMsg.SensorController", "sensor event true");
            bb.onSensorEvent(true);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void removeSensorCallBack()
    {
        Log.v("MicroMsg.SensorController", "sensor callback removed");
        aY.unregisterListener(this, bc);
        aY.unregisterListener(this);
        bf = false;
        bb = null;
    }

    public void setSensorCallBack(SensorEventCallBack sensoreventcallback)
    {
        Log.v("MicroMsg.SensorController", "sensor callback set");
        if (!bf)
        {
            aY.registerListener(this, bc, 2);
            bf = true;
        }
        bb = sensoreventcallback;
    }

}
