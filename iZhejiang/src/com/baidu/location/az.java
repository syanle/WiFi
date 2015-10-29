// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.baidu.location.b.a.a;

// Referenced classes of package com.baidu.location:
//            ax, n, f, ab, 
//            c

class az
    implements ax, n, SensorEventListener
{

    public static String iH = null;
    public static String iM = null;
    private static az iQ = null;
    int iI;
    SensorManager iJ;
    int iK;
    String iL;
    String iN;
    private Sensor iO;
    String iP;

    private az()
    {
        iL = null;
        iP = null;
        iN = null;
        iJ = null;
        iK = -1;
        iI = -1;
        try
        {
            iL = ((TelephonyManager)f.getServiceContext().getSystemService("phone")).getDeviceId();
        }
        catch (Exception exception)
        {
            iL = "NULL";
        }
        try
        {
            iP = a._mthif(f.getServiceContext());
        }
        catch (Exception exception1)
        {
            iP = null;
        }
        try
        {
            iH = f.getServiceContext().getPackageName();
            return;
        }
        catch (Exception exception2)
        {
            iH = null;
        }
    }

    public static az cn()
    {
        if (iQ == null)
        {
            iQ = new az();
        }
        return iQ;
    }

    public String _mthchar(boolean flag)
    {
        return _mthif(flag, null);
    }

    public String cj()
    {
        if (iH != null)
        {
            return (new StringBuilder()).append(ck()).append("|").append(iH).toString();
        } else
        {
            return ck();
        }
    }

    public String ck()
    {
        if (iP != null)
        {
            return (new StringBuilder()).append("v4.2|").append(iP).append("|").append(Build.MODEL).toString();
        } else
        {
            return (new StringBuilder()).append("v4.2").append(iL).append("|").append(Build.MODEL).toString();
        }
    }

    public String cl()
    {
        return (new StringBuilder()).append("&sdk=4.2").append(co()).toString();
    }

    public void cm()
    {
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            if (ab.gv)
            {
                iJ = (SensorManager)f.getServiceContext().getSystemService("sensor");
                iJ.registerListener(this, iJ.getDefaultSensor(5), 3);
            }
        }
        catch (Exception exception1) { }
        finally
        {
            this;
        }
        return;
        throw exception;
    }

    public String co()
    {
        StringBuffer stringbuffer = new StringBuffer(200);
        if (iP != null)
        {
            stringbuffer.append("&cu=");
            stringbuffer.append(iP);
        } else
        {
            stringbuffer.append("&im=");
            stringbuffer.append(iL);
        }
        try
        {
            stringbuffer.append("&mb=");
            stringbuffer.append(Build.MODEL);
        }
        catch (Exception exception1) { }
        stringbuffer.append("&pack=");
        try
        {
            stringbuffer.append(iH);
        }
        catch (Exception exception) { }
        stringbuffer.append("&sdk=");
        stringbuffer.append(4.2F);
        return stringbuffer.toString();
    }

    public void cp()
    {
        this;
        JVM INSTR monitorenter ;
        if (iJ != null)
        {
            iJ.unregisterListener(this);
        }
        iJ = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String _mthif(boolean flag, String s1)
    {
        StringBuffer stringbuffer = new StringBuffer(256);
        stringbuffer.append("&sdk=");
        stringbuffer.append(4.2F);
        if (flag && c.aw.equals("all"))
        {
            stringbuffer.append("&addr=all");
        }
        if (flag)
        {
            if (s1 == null)
            {
                stringbuffer.append("&coor=gcj02");
            } else
            {
                stringbuffer.append("&coor=");
                stringbuffer.append(s1);
            }
        }
        if (iP == null)
        {
            stringbuffer.append("&im=");
            stringbuffer.append(iL);
        } else
        {
            stringbuffer.append("&cu=");
            stringbuffer.append(iP);
        }
        stringbuffer.append("&fw=");
        stringbuffer.append(f.getFrameVersion());
        stringbuffer.append("&lt=1");
        stringbuffer.append("&mb=");
        stringbuffer.append(Build.MODEL);
        if (iK != -1)
        {
            stringbuffer.append("&al=");
            stringbuffer.append(iK);
        }
        stringbuffer.append("&resid=");
        stringbuffer.append("12");
        stringbuffer.append("&os=A");
        stringbuffer.append(android.os.Build.VERSION.SDK);
        if (flag)
        {
            stringbuffer.append("&sv=");
            String s2 = android.os.Build.VERSION.RELEASE;
            s1 = s2;
            if (s2 != null)
            {
                s1 = s2;
                if (s2.length() > 6)
                {
                    s1 = s2.substring(0, 6);
                }
            }
            stringbuffer.append(s1);
        }
        return stringbuffer.toString();
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        int i = sensorevent.sensor.getType();
        if (i == 5)
        {
            iK = (int)sensorevent.values[0];
        } else
        if (i == 8)
        {
            iI = (int)sensorevent.values[0];
            return;
        }
    }

    public String s(String s1)
    {
        return _mthif(true, s1);
    }

    public void _mthtry(String s1, String s2)
    {
        iM = s1;
        iH = s2;
    }

}
