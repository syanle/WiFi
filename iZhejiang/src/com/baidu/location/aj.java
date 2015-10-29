// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.Timer;

// Referenced classes of package com.baidu.location:
//            n, ax

public class aj
    implements n, ax
{

    public static final float hA = 4F;
    public static final float hj = 0.01F;
    private static final int hs = 6;
    private static final int hu = 20;
    private static final float hz = 0.8F;
    private int hB;
    private SensorManager hC;
    private boolean hD;
    private int he;
    private int hf;
    private int hg;
    private final long hh;
    private float hi[];
    private int hk;
    private double hl;
    private double hm[];
    public SensorEventListener hn;
    private int ho;
    private long hp;
    Timer hq;
    private int hr;
    private Sensor ht;
    private float hv[] = {
        0.0F, 0.0F, 0.0F
    };
    private volatile int hw;
    private int hx;
    private double hy[];

    public aj(Context context)
    {
        this(context, 0);
    }

    private aj(Context context, int i)
    {
        hh = 30L;
        hw = 0;
        hg = 1;
        hi = new float[3];
        hx = 31;
        hy = new double[hx];
        hB = 0;
        hm = new double[6];
        ho = 0;
        hp = 0L;
        hk = 0;
        hn = new _cls1();
        hl = 1.6000000000000001D;
        hf = 440;
        try
        {
            hC = (SensorManager)context.getSystemService("sensor");
            hr = i;
            ht = hC.getDefaultSensor(1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private void bG()
    {
        if (he >= 20)
        {
            long l = System.currentTimeMillis();
            float af[] = new float[3];
            System.arraycopy(hv, 0, af, 0, 3);
            float f = af[0];
            float f1 = af[0];
            float f2 = af[1];
            float f3 = af[1];
            float f4 = af[2];
            double d = Math.sqrt(af[2] * f4 + (f * f1 + f2 * f3));
            hy[hB] = d;
            _mthdo(d);
            hB = hB + 1;
            if (hB == hx)
            {
                hB = 0;
                double d1 = _mthif(hy);
                if (hw == 0 && d1 < 0.29999999999999999D)
                {
                    _mthcase(0);
                    hw = 0;
                } else
                {
                    _mthcase(1);
                    hw = 1;
                }
            }
            if (l - hp > (long)hf && _mthif(hl))
            {
                hk = hk + 1;
                hp = l;
                return;
            }
        }
    }

    private void _mthcase(int i)
    {
        this;
        JVM INSTR monitorenter ;
        hg = hg | i;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static int _mthdo(aj aj1)
    {
        int i = aj1.he + 1;
        aj1.he = i;
        return i;
    }

    private void _mthdo(double d)
    {
        hm[ho % 6] = d;
        ho = ho + 1;
        ho = ho % 6;
    }

    static int _mthfor(aj aj1)
    {
        return aj1.hw;
    }

    private double _mthif(double ad[])
    {
        boolean flag = false;
        double d1 = 0.0D;
        int k = ad.length;
        int i = 0;
        double d = 0.0D;
        for (; i < k; i++)
        {
            d += ad[i];
        }

        double d2 = d / (double)k;
        d = d1;
        for (int j = ((flag) ? 1 : 0); j < k; j++)
        {
            d += (ad[j] - d2) * (ad[j] - d2);
        }

        return d / (double)(k - 1);
    }

    static int _mthif(aj aj1, int i)
    {
        aj1.hw = i;
        return i;
    }

    static void _mthif(aj aj1)
    {
        aj1.bG();
    }

    private boolean _mthif(double d)
    {
        for (int i = 1; i <= 5; i++)
        {
            if (hm[((ho - 1 - i) + 6 + 6) % 6] - hm[((ho - 1) + 6) % 6] > d)
            {
                return true;
            }
        }

        return false;
    }

    private float[] _mthif(float f, float f1, float f2)
    {
        hi[0] = hi[0] * 0.8F + 0.2F * f;
        hi[1] = hi[1] * 0.8F + 0.2F * f1;
        hi[2] = hi[2] * 0.8F + 0.2F * f2;
        return (new float[] {
            f - hi[0], f1 - hi[1], f2 - hi[2]
        });
    }

    static float[] _mthif(aj aj1, float f, float f1, float f2)
    {
        return aj1._mthif(f, f1, f2);
    }

    static float[] _mthif(aj aj1, float af[])
    {
        aj1.hv = af;
        return af;
    }

    public int bD()
    {
        this;
        JVM INSTR monitorenter ;
        int i = he;
        if (i >= 20) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return i;
_L2:
        i = hk;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void bE()
    {
        this;
        JVM INSTR monitorenter ;
        hg = 0;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int bF()
    {
        this;
        JVM INSTR monitorenter ;
        int i = he;
        if (i >= 20) goto _L2; else goto _L1
_L1:
        i = 1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return i;
_L2:
        i = hg;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void bH()
    {
        if (!hD && ht != null)
        {
            _cls2 _lcls2;
            try
            {
                hC.registerListener(hn, ht, hr);
            }
            catch (Exception exception) { }
            hq = new Timer("UpdateData", false);
            _lcls2 = new _cls2();
            hq.schedule(_lcls2, 500L, 30L);
            hD = true;
        }
    }

    public void bI()
    {
        if (hD)
        {
            try
            {
                hC.unregisterListener(hn);
            }
            catch (Exception exception) { }
            hq.cancel();
            hq.purge();
            hq = null;
            hD = false;
        }
    }

    private class _cls1
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
        //                       1 25;
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

        _cls1()
        {
            a = aj.this;
            super();
        }
    }


    private class _cls2 extends TimerTask
    {

        final aj a;

        public void run()
        {
            aj._mthif(a);
        }

        _cls2()
        {
            a = aj.this;
            super();
        }
    }

}
