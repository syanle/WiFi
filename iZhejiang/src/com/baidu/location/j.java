// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.Location;

// Referenced classes of package com.baidu.location:
//            ax, b, BDLocation

class j
    implements ax, b
{

    private static j kL = null;
    double kH;
    double kI;
    boolean kJ;
    volatile int kK;
    double kM;
    int kN;
    long kO;
    double kP;

    private j()
    {
        kP = 0.0D;
        kM = 0.0D;
        kJ = false;
        kO = 0L;
        kH = 0.0D;
        kI = 0.0D;
        kK = -1;
        kN = -1;
    }

    public static j cZ()
    {
        if (kL == null)
        {
            kL = new j();
        }
        return kL;
    }

    public void _mthbyte(BDLocation bdlocation)
    {
        while (!kJ || System.currentTimeMillis() - kO > 4000L || bdlocation == null || bdlocation.getLocType() != 161 || !"wf".equals(bdlocation.getNetworkLocationType()) && bdlocation.getRadius() >= 300F) 
        {
            return;
        }
        kH = bdlocation.getLongitude();
        kI = bdlocation.getLatitude();
        bdlocation = new float[1];
        Location.distanceBetween(kM, kP, kI, kH, bdlocation);
        kK = (int)bdlocation[0];
        kJ = false;
    }

    public String cY()
    {
        boolean flag1 = true;
        if (kN < 0 && kK < 0)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer(128);
        boolean flag = false;
        if (kN >= 0)
        {
            stringbuffer.append("&osr=");
            stringbuffer.append(kN);
            kN = -1;
            flag = true;
        }
        if (kK >= 0)
        {
            stringbuffer.append("&oac=");
            stringbuffer.append(kK);
            kK = -2;
            flag = flag1;
        }
        if (flag)
        {
            return stringbuffer.toString();
        } else
        {
            return null;
        }
    }

    public void _mthif(boolean flag, boolean flag1, double d, double d1)
    {
        if (kN < 0)
        {
            kN = 0;
        }
        if (flag)
        {
            kN = kN | 1;
        }
        if (flag1)
        {
            kN = kN | 2;
            kP = d;
            kM = d1;
            kJ = true;
            kO = System.currentTimeMillis();
        }
    }

}
