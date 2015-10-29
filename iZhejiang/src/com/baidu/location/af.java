// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

// Referenced classes of package com.baidu.location:
//            ax, n, f

class af
    implements ax, n, SensorEventListener
{

    private static float g5;
    private static af g9;
    private boolean g3;
    float g4[];
    SensorManager g6;
    float g7[];
    float g8[];

    af()
    {
        g7 = new float[9];
    }

    public static af bw()
    {
        if (g9 == null)
        {
            g9 = new af();
        }
        return g9;
    }

    public float bu()
    {
        return g5;
    }

    public void bv()
    {
        this;
        JVM INSTR monitorenter ;
        if (g6 != null)
        {
            g6.unregisterListener(this);
            g6 = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void bx()
    {
        this;
        JVM INSTR monitorenter ;
        if (g6 == null)
        {
            g6 = (SensorManager)f.getServiceContext().getSystemService("sensor");
        }
        g6.registerListener(this, g6.getDefaultSensor(1), 3);
        g6.registerListener(this, g6.getDefaultSensor(2), 3);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean by()
    {
        return g3;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 2: default 28
    //                   1 109
    //                   2 120;
           goto _L1 _L2 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_120;
_L4:
        if (g4 != null && g8 != null)
        {
            sensorevent = new float[9];
            if (SensorManager.getRotationMatrix(sensorevent, null, g4, g8))
            {
                float af1[] = new float[3];
                SensorManager.getOrientation(sensorevent, af1);
                g5 = (float)Math.toDegrees(af1[0]);
                double d;
                if (g5 >= 0.0F)
                {
                    d = g5;
                } else
                {
                    d = g5 + 360F;
                }
                g5 = (float)Math.floor(d);
            }
        }
        return;
_L2:
        g4 = sensorevent.values;
          goto _L4
        g8 = sensorevent.values;
          goto _L4
    }

    public void _mthtry(boolean flag)
    {
        g3 = flag;
    }
}
