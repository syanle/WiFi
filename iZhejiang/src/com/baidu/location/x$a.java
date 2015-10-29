// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            x, at, c, g, 
//            q, y

private class <init>
    implements android.location.tatus.Listener, android.location.tatus.NmeaListener
{

    private long a;
    private boolean _fldbyte;
    private List _fldcase;
    private final int _fldchar;
    private String _flddo;
    private String _fldfor;
    long _fldif;
    final x _fldint;
    private String _fldnew;
    private boolean _fldtry;

    public void a(String s)
    {
        if (System.currentTimeMillis() - a <= 400L || !_fldbyte || _fldcase.size() <= 0) goto _L2; else goto _L1
_L1:
        at at1 = new at(_fldcase, _fldfor, _fldnew, _flddo);
        if (!at1.cV()) goto _L4; else goto _L3
_L3:
        c.al = x._mthif(_fldint, at1, x._mthtry(_fldint));
        if (c.al > 0)
        {
            x.m(String.format(Locale.CHINA, "&nmea=%.1f|%.1f&g_tp=%d", new Object[] {
                Double.valueOf(at1.cT()), Double.valueOf(at1.cW()), Integer.valueOf(c.al)
            }));
        }
_L6:
        _fldcase.clear();
        _flddo = null;
        _fldnew = null;
        _fldfor = null;
        _fldbyte = false;
_L2:
        Exception exception;
        if (s.startsWith("$GPGGA"))
        {
            _fldbyte = true;
            _fldfor = s.trim();
        } else
        if (s.startsWith("$GPGSV"))
        {
            _fldcase.add(s.trim());
        } else
        if (s.startsWith("$GPGSA"))
        {
            _flddo = s.trim();
        }
        a = System.currentTimeMillis();
        return;
_L4:
        try
        {
            c.al = 0;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            c.al = 0;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onGpsStatusChanged(int i)
    {
        if (x._mthif(_fldint) != null)
        {
            switch (i)
            {
            case 3: // '\003'
            default:
                return;

            case 2: // '\002'
                x._mthif(_fldint, null);
                x._mthif(_fldint, false);
                x._mthint(0);
                return;

            case 4: // '\004'
                break;
            }
            if (x._mthcase(_fldint) || System.currentTimeMillis() - _fldif >= 10000L)
            {
                Iterator iterator;
                int j;
                int l;
                if (x._mthdo(_fldint) == null)
                {
                    x._mthif(_fldint, x._mthif(_fldint).getGpsStatus(null));
                } else
                {
                    x._mthif(_fldint).getGpsStatus(x._mthdo(_fldint));
                }
                iterator = x._mthdo(_fldint).getSatellites().iterator();
                x._mthif(new StringBuilder());
                x._mthdo(_fldint, 0);
                x._mthif(_fldint, 0);
                x._mthdo(_fldint, new HashMap());
                i = 0;
                l = 0;
                int k;
                for (j = 0; iterator.hasNext(); j = k)
                {
                    GpsSatellite gpssatellite = (GpsSatellite)iterator.next();
                    l++;
                    k = j;
                    if (gpssatellite.usedInFix())
                    {
                        k = j + 1;
                    }
                    j = i;
                    if (gpssatellite.getSnr() > 0.0F)
                    {
                        j = i + 1;
                    }
                    if (gpssatellite.getSnr() >= (float)c.aa)
                    {
                        x._mthint(_fldint);
                    }
                    x.aZ().append(x._mthif(_fldint, gpssatellite, x._mthnew(_fldint)));
                    i = j;
                }

                x._mthint(i);
                x._mthif(_fldint, x._mthnew(_fldint));
                if (!x._mthcase(_fldint) && System.currentTimeMillis() - x._mthchar(_fldint) >= 60000L && (j > 3 || l > 15))
                {
                    Object obj = x._mthif(_fldint).getLastKnownLocation("gps");
                    if (obj != null)
                    {
                        _fldif = System.currentTimeMillis();
                        long l1 = (System.currentTimeMillis() + g.e().bp) - ((Location) (obj)).getTime();
                        if (l1 < 3500L && l1 > -200L && q._mthif(((Location) (obj)), false))
                        {
                            obj = x._mthbyte(_fldint).obtainMessage(3, obj);
                            x._mthbyte(_fldint).sendMessage(((android.os.Message) (obj)));
                            return;
                        }
                    }
                }
            }
        }
    }

    public void onNmeaReceived(long l, String s)
    {
        if (x._mthcase(_fldint))
        {
            if (!y.f5)
            {
                c.al = 0;
                return;
            }
            if (s != null && !s.equals("") && s.length() >= 9 && s.length() <= 150 && _fldint.aR())
            {
                x._mthbyte(_fldint).sendMessage(x._mthbyte(_fldint).obtainMessage(2, s));
                return;
            }
        }
    }

    private on(x x1)
    {
        _fldint = x1;
        super();
        _fldif = 0L;
        a = 0L;
        _fldchar = 400;
        _fldtry = true;
        _fldbyte = false;
        _fldcase = new ArrayList();
        _fldfor = null;
        _fldnew = null;
        _flddo = null;
    }

    do(x x1, do do1)
    {
        this(x1);
    }
}
