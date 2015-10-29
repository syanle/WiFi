// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

// Referenced classes of package com.baidu.location:
//            aj

class a
    implements SensorEventListener
{

    final aj a;

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 1: default 24
    //                   1 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        sensorevent = (float[])sensorevent.values.clone();
        aj._mthif(a, (float[])sensorevent.clone());
        sensorevent = aj._mthif(a, sensorevent[0], sensorevent[1], sensorevent[2]);
        if (aj._mthdo(a) < 20) goto _L1; else goto _L3
_L3:
        double d;
        float f = sensorevent[0];
        float f1 = sensorevent[0];
        float f2 = sensorevent[1];
        float f3 = sensorevent[1];
        float f4 = sensorevent[2];
        d = sensorevent[2] * f4 + (f * f1 + f2 * f3);
        if (aj._mthfor(a) != 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (d <= 4D) goto _L1; else goto _L4
_L4:
        aj._mthif(a, 1);
        return;
        if (d >= 0.0099999997764825821D) goto _L1; else goto _L5
_L5:
        aj._mthif(a, 0);
        return;
    }

    vent(aj aj1)
    {
        a = aj1;
        super();
    }
}
