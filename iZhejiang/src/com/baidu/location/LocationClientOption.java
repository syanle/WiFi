// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;


public final class LocationClientOption
{
    public static final class LocationMode extends Enum
    {

        public static final LocationMode Battery_Saving;
        public static final LocationMode Device_Sensors;
        public static final LocationMode Hight_Accuracy;
        private static final LocationMode a[];

        public static LocationMode valueOf(String s)
        {
            return (LocationMode)Enum.valueOf(com/baidu/location/LocationClientOption$LocationMode, s);
        }

        public static LocationMode[] values()
        {
            return (LocationMode[])a.clone();
        }

        static 
        {
            Hight_Accuracy = new LocationMode("Hight_Accuracy", 0);
            Battery_Saving = new LocationMode("Battery_Saving", 1);
            Device_Sensors = new LocationMode("Device_Sensors", 2);
            a = (new LocationMode[] {
                Hight_Accuracy, Battery_Saving, Device_Sensors
            });
        }

        private LocationMode(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int MIN_SCAN_SPAN = 1000;
    public static final int MIN_SCAN_SPAN_NETWORK = 3000;
    protected static final int _fldbyte = 1;
    protected static final int _fldtry = 3;
    protected static final int _fldvoid = 2;
    protected boolean a;
    protected boolean b;
    protected float c;
    protected String _fldcase;
    protected boolean _fldchar;
    protected int d;
    protected String _flddo;
    protected boolean e;
    protected String _fldelse;
    protected LocationMode f;
    protected boolean _fldfor;
    protected boolean g;
    protected boolean _fldgoto;
    protected int h;
    protected String _fldif;
    protected int _fldint;
    protected int _fldlong;
    protected boolean _fldnew;

    public LocationClientOption()
    {
        _flddo = "gcj02";
        _fldelse = "detail";
        _fldfor = false;
        _fldint = 0;
        d = 12000;
        _fldif = "SDK2.0";
        h = 1;
        _fldgoto = false;
        a = true;
        _fldnew = false;
        e = false;
        c = 500F;
        _fldlong = 3;
        _fldcase = "com.baidu.location.service_v2.9";
        b = false;
        _fldchar = false;
        g = false;
    }

    public LocationClientOption(LocationClientOption locationclientoption)
    {
        _flddo = "gcj02";
        _fldelse = "detail";
        _fldfor = false;
        _fldint = 0;
        d = 12000;
        _fldif = "SDK2.0";
        h = 1;
        _fldgoto = false;
        a = true;
        _fldnew = false;
        e = false;
        c = 500F;
        _fldlong = 3;
        _fldcase = "com.baidu.location.service_v2.9";
        b = false;
        _fldchar = false;
        g = false;
        _flddo = locationclientoption._flddo;
        _fldelse = locationclientoption._fldelse;
        _fldfor = locationclientoption._fldfor;
        _fldint = locationclientoption._fldint;
        d = locationclientoption.d;
        _fldif = locationclientoption._fldif;
        h = locationclientoption.h;
        _fldgoto = locationclientoption._fldgoto;
        e = locationclientoption.e;
        c = locationclientoption.c;
        _fldlong = locationclientoption._fldlong;
        _fldcase = locationclientoption._fldcase;
        a = locationclientoption.a;
        b = locationclientoption.b;
        _fldchar = locationclientoption._fldchar;
        g = locationclientoption.g;
        f = locationclientoption.f;
    }

    public void SetIgnoreCacheException(boolean flag)
    {
        b = flag;
    }

    protected boolean a()
    {
        return a;
    }

    public boolean equals(LocationClientOption locationclientoption)
    {
        return _flddo.equals(locationclientoption._flddo) && _fldelse.equals(locationclientoption._fldelse) && _fldfor == locationclientoption._fldfor && _fldint == locationclientoption._fldint && d == locationclientoption.d && _fldif.equals(locationclientoption._fldif) && _fldgoto == locationclientoption._fldgoto && h == locationclientoption.h && _fldlong == locationclientoption._fldlong && e == locationclientoption.e && c == locationclientoption.c && a == locationclientoption.a && b == locationclientoption.b && _fldchar == locationclientoption._fldchar && g == locationclientoption.g && f == locationclientoption.f;
    }

    public String getAddrType()
    {
        return _fldelse;
    }

    public String getCoorType()
    {
        return _flddo;
    }

    public LocationMode getLocationMode()
    {
        return f;
    }

    public String getProdName()
    {
        return _fldif;
    }

    public int getScanSpan()
    {
        return _fldint;
    }

    public int getTimeOut()
    {
        return d;
    }

    public boolean isLocationNotify()
    {
        return _fldgoto;
    }

    public boolean isOpenGps()
    {
        return _fldfor;
    }

    public void setCoorType(String s)
    {
        s = s.toLowerCase();
        if (s.equals("gcj02") || s.equals("bd09") || s.equals("bd09ll"))
        {
            _flddo = s;
        }
    }

    public void setIgnoreKillProcess(boolean flag)
    {
        _fldchar = flag;
    }

    public void setIsNeedAddress(boolean flag)
    {
        if (flag)
        {
            _fldelse = "all";
            h = 1;
        }
    }

    public void setLocationMode(LocationMode locationmode)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[LocationMode.values().length];
                try
                {
                    a[LocationMode.Hight_Accuracy.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[LocationMode.Battery_Saving.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[LocationMode.Device_Sensors.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[locationmode.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 63
    //                   2 74
    //                   3 82;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Illegal this mode : ").append(locationmode).toString());
_L2:
        _fldfor = true;
_L6:
        f = locationmode;
        return;
_L3:
        _fldfor = false;
        continue; /* Loop/switch isn't completed */
_L4:
        h = 3;
        _fldfor = true;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setLocationNotify(boolean flag)
    {
        _fldgoto = flag;
    }

    public void setNeedDeviceDirect(boolean flag)
    {
        g = flag;
    }

    public void setOpenGps(boolean flag)
    {
        _fldfor = flag;
    }

    public void setProdName(String s)
    {
        String s1 = s;
        if (s.length() > 64)
        {
            s1 = s.substring(0, 64);
        }
        _fldif = s1;
    }

    public void setScanSpan(int i)
    {
        _fldint = i;
    }

    public void setTimeOut(int i)
    {
        d = i;
    }
}
