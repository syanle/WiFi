// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            ax, n, ab, f, 
//            c

class t
    implements ax, n
{
    public class a
    {

        final t a;
        public long _fldbyte;
        public int _flddo;
        public int _fldfor;
        public int _fldif;
        public int _fldint;
        public char _fldnew;
        public int _fldtry;

        public String a()
        {
            StringBuffer stringbuffer = new StringBuffer(128);
            stringbuffer.append(_fldtry + 23);
            stringbuffer.append("H");
            stringbuffer.append(_fldfor + 45);
            stringbuffer.append("K");
            stringbuffer.append(_fldif + 54);
            stringbuffer.append("Q");
            stringbuffer.append(_flddo + 203);
            return stringbuffer.toString();
        }

        public boolean a(a a1)
        {
            return _fldfor == a1._fldfor && _fldtry == a1._fldtry && _fldif == a1._fldif;
        }

        public boolean _mthdo()
        {
            return System.currentTimeMillis() - _fldbyte < t.ar();
        }

        public boolean _mthfor()
        {
            return _fldfor > -1 && _fldtry > 0;
        }

        public String _mthif()
        {
            StringBuffer stringbuffer = new StringBuffer(64);
            stringbuffer.append(String.format(Locale.CHINA, "cell=%d|%d|%d|%d:%d", new Object[] {
                Integer.valueOf(_flddo), Integer.valueOf(_fldif), Integer.valueOf(_fldfor), Integer.valueOf(_fldtry), Integer.valueOf(_fldint)
            }));
            return stringbuffer.toString();
        }

        public String _mthint()
        {
            Object obj;
            Object obj1;
            NeighboringCellInfo neighboringcellinfo;
            int i;
            try
            {
                obj1 = t._mthint(a).getNeighboringCellInfo();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return null;
            }
            if (obj1 == null) goto _L2; else goto _L1
_L1:
            if (((List) (obj1)).isEmpty()) goto _L2; else goto _L3
_L3:
            obj = "&nc=";
            obj1 = ((List) (obj1)).iterator();
            i = 0;
_L15:
            if (!((Iterator) (obj1)).hasNext()) goto _L5; else goto _L4
_L4:
            neighboringcellinfo = (NeighboringCellInfo)((Iterator) (obj1)).next();
            if (i != 0) goto _L7; else goto _L6
_L6:
            if (neighboringcellinfo.getLac() == _fldfor) goto _L9; else goto _L8
_L8:
            obj = (new StringBuilder()).append(((String) (obj))).append(neighboringcellinfo.getLac()).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L10
_L9:
            obj = (new StringBuilder()).append(((String) (obj))).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L10
_L7:
            if (i >= 8) goto _L5; else goto _L11
_L11:
            if (neighboringcellinfo.getLac() == _fldfor) goto _L13; else goto _L12
_L12:
            obj = (new StringBuilder()).append(((String) (obj))).append(";").append(neighboringcellinfo.getLac()).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L10
_L13:
            obj = (new StringBuilder()).append(((String) (obj))).append(";").append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L10
_L5:
            return ((String) (obj));
_L2:
            return null;
_L10:
            i++;
            if (true) goto _L15; else goto _L14
_L14:
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer(128);
            stringbuffer.append("&nw=");
            stringbuffer.append(t._mthfor(a)._fldnew);
            stringbuffer.append(String.format(Locale.CHINA, "&cl=%d|%d|%d|%d&cl_s=%d", new Object[] {
                Integer.valueOf(_flddo), Integer.valueOf(_fldif), Integer.valueOf(_fldfor), Integer.valueOf(_fldtry), Integer.valueOf(_fldint)
            }));
            stringbuffer.append("&cl_t=");
            stringbuffer.append(_fldbyte);
            if (t._mthdo(a) != null && t._mthdo(a).size() > 0)
            {
                int k = t._mthdo(a).size();
                stringbuffer.append("&clt=");
                int i = 0;
                while (i < k) 
                {
                    a a1 = (a)t._mthdo(a).get(i);
                    if (a1._flddo != _flddo)
                    {
                        stringbuffer.append(a1._flddo);
                    }
                    stringbuffer.append("|");
                    if (a1._fldif != _fldif)
                    {
                        stringbuffer.append(a1._fldif);
                    }
                    stringbuffer.append("|");
                    if (a1._fldfor != _fldfor)
                    {
                        stringbuffer.append(a1._fldfor);
                    }
                    stringbuffer.append("|");
                    if (a1._fldtry != _fldtry)
                    {
                        stringbuffer.append(a1._fldtry);
                    }
                    stringbuffer.append("|");
                    if (i != k - 1)
                    {
                        stringbuffer.append(a1._fldbyte / 1000L);
                    } else
                    {
                        stringbuffer.append((System.currentTimeMillis() - a1._fldbyte) / 1000L);
                    }
                    stringbuffer.append(";");
                    i++;
                }
            }
            if (t._mthnew(a) > 100)
            {
                t._mthif(a, 0);
            }
            int j = t._mthif(a);
            int l = t._mthnew(a);
            stringbuffer.append((new StringBuilder()).append("&cs=").append((j << 8) + l).toString());
            return stringbuffer.toString();
        }

        public a()
        {
            a = t.this;
            super();
            _fldfor = -1;
            _fldtry = -1;
            _flddo = -1;
            _fldif = -1;
            _fldbyte = 0L;
            _fldint = -1;
            _fldnew = '\0';
            _fldbyte = System.currentTimeMillis();
        }

        public a(int i, int j, int k, int l, char c1)
        {
            a = t.this;
            super();
            _fldfor = -1;
            _fldtry = -1;
            _flddo = -1;
            _fldif = -1;
            _fldbyte = 0L;
            _fldint = -1;
            _fldnew = '\0';
            _fldfor = i;
            _fldtry = j;
            _flddo = k;
            _fldif = l;
            _fldnew = c1;
            _fldbyte = System.currentTimeMillis() / 1000L;
        }
    }

    private class b extends PhoneStateListener
    {

        final t a;

        public void onCellLocationChanged(CellLocation celllocation)
        {
            if (celllocation == null)
            {
                return;
            }
            try
            {
                t._mthif(a, t._mthint(a).getCellLocation());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (CellLocation celllocation)
            {
                return;
            }
        }

        public void onSignalStrengthsChanged(SignalStrength signalstrength)
        {
            if (t._mthfor(a) != null)
            {
                if (t._mthfor(a)._fldnew == 'g')
                {
                    t._mthfor(a)._fldint = signalstrength.getGsmSignalStrength();
                } else
                if (t._mthfor(a)._fldnew == 'c')
                {
                    t._mthfor(a)._fldint = signalstrength.getCdmaDbm();
                    return;
                }
            }
        }

        public b()
        {
            a = t.this;
            super();
        }
    }


    private static t d2 = null;
    private static String d4 = null;
    private static Method d5 = null;
    private static boolean d6 = false;
    private static Method d8 = null;
    private static long d9 = 3000L;
    private static Method dZ = null;
    private static int eb = 3;
    private static Class ec = null;
    private b d0;
    private List d1;
    private TelephonyManager d3;
    private int d7;
    private a dX;
    private int dY;
    private boolean ea;

    private t()
    {
        d3 = null;
        dX = new a();
        d1 = null;
        d0 = null;
        ea = false;
        d7 = 0;
        dY = 0;
    }

    private boolean al()
    {
        if (d4 != null && d4.length() >= 10) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        char ac[];
        int i;
        char c1;
        try
        {
            ac = d4.toCharArray();
        }
        catch (Exception exception)
        {
            return false;
        }
        i = 0;
        if (i >= 10)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        if (ac[i] > '9') goto _L1; else goto _L3
_L3:
        c1 = ac[i];
        if (c1 < '0') goto _L1; else goto _L4
_L4:
        i++;
        break MISSING_BLOCK_LABEL_28;
        return true;
    }

    public static t an()
    {
        if (d2 == null)
        {
            d2 = new t();
        }
        return d2;
    }

    static long ar()
    {
        return d9;
    }

    static List _mthdo(t t1)
    {
        return t1.d1;
    }

    static a _mthfor(t t1)
    {
        return t1.dX;
    }

    static int _mthif(t t1)
    {
        return t1.dY;
    }

    static int _mthif(t t1, int i)
    {
        t1.d7 = i;
        return i;
    }

    private void _mthif(CellLocation celllocation)
    {
        if (celllocation != null && d3 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        a a1;
        if (!d6)
        {
            d4 = d3.getDeviceId();
            d6 = al();
        }
        a1 = new a();
        a1._fldbyte = System.currentTimeMillis();
        String s = d3.getNetworkOperator();
        if (s == null) goto _L4; else goto _L3
_L3:
        if (s.length() <= 0) goto _L4; else goto _L5
_L5:
        int j;
        if (s.length() < 3)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        j = Integer.valueOf(s.substring(0, 3)).intValue();
        int i;
        i = j;
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        i = dX._flddo;
        a1._flddo = i;
        s = s.substring(3);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_672;
        }
        char ac[] = s.toCharArray();
        i = 0;
_L12:
        j = i;
        if (i >= ac.length) goto _L7; else goto _L6
_L6:
        if (Character.isDigit(ac[i])) goto _L9; else goto _L8
_L8:
        j = i;
_L7:
        j = Integer.valueOf(s.substring(0, j)).intValue();
        i = j;
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        i = dX._fldif;
        a1._fldif = i;
_L4:
        d7 = d3.getSimState();
_L13:
        if (!(celllocation instanceof GsmCellLocation)) goto _L11; else goto _L10
_L10:
        a1._fldfor = ((GsmCellLocation)celllocation).getLac();
        a1._fldtry = ((GsmCellLocation)celllocation).getCid();
        a1._fldnew = 'g';
_L15:
        if (a1._mthfor() && (dX == null || !dX.a(a1)))
        {
            dX = a1;
            if (!a1._mthfor())
            {
                continue; /* Loop/switch isn't completed */
            }
            if (d1 == null)
            {
                d1 = new LinkedList();
            }
            i = d1.size();
            Exception exception;
            if (i == 0)
            {
                celllocation = null;
            } else
            {
                celllocation = (a)d1.get(i - 1);
            }
            if (celllocation == null || ((a) (celllocation))._fldtry != dX._fldtry || ((a) (celllocation))._fldfor != dX._fldfor)
            {
                if (celllocation != null)
                {
                    celllocation._fldbyte = dX._fldbyte - ((a) (celllocation))._fldbyte;
                }
                d1.add(dX);
                if (d1.size() > eb)
                {
                    d1.remove(0);
                    return;
                }
            }
        }
          goto _L1
_L9:
        i++;
          goto _L12
        exception;
        dY = 1;
          goto _L13
_L11:
        if (!(celllocation instanceof CdmaCellLocation)) goto _L15; else goto _L14
_L14:
        a1._fldnew = 'c';
        if (Integer.parseInt(android.os.Build.VERSION.SDK) < 5) goto _L1; else goto _L16
_L16:
        if (ec == null)
        {
            try
            {
                ec = Class.forName("android.telephony.cdma.CdmaCellLocation");
                d8 = ec.getMethod("getBaseStationId", new Class[0]);
                d5 = ec.getMethod("getNetworkId", new Class[0]);
                dZ = ec.getMethod("getSystemId", new Class[0]);
            }
            // Misplaced declaration of an exception variable
            catch (CellLocation celllocation)
            {
                ec = null;
                dY = 2;
                return;
            }
        }
        if (ec == null || !ec.isInstance(celllocation)) goto _L15; else goto _L17
_L17:
        try
        {
            j = ((Integer)dZ.invoke(celllocation, new Object[0])).intValue();
        }
        // Misplaced declaration of an exception variable
        catch (CellLocation celllocation)
        {
            dY = 3;
            return;
        }
        i = j;
        if (j >= 0)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        i = dX._fldif;
        a1._fldif = i;
        a1._fldtry = ((Integer)d8.invoke(celllocation, new Object[0])).intValue();
        a1._fldfor = ((Integer)d5.invoke(celllocation, new Object[0])).intValue();
          goto _L15
        if (d1 == null) goto _L1; else goto _L18
_L18:
        d1.clear();
        return;
        j = 0;
          goto _L7
    }

    static void _mthif(t t1, CellLocation celllocation)
    {
        t1._mthif(celllocation);
    }

    static TelephonyManager _mthint(t t1)
    {
        return t1.d3;
    }

    static int _mthnew(t t1)
    {
        return t1.d7;
    }

    public a ak()
    {
        if ((dX == null || !dX._mthdo() || !dX._mthfor()) && d3 != null)
        {
            try
            {
                _mthif(d3.getCellLocation());
            }
            catch (Exception exception) { }
        }
        return dX;
    }

    public void am()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = ea;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        b b1;
        if (!ab.gv)
        {
            continue; /* Loop/switch isn't completed */
        }
        d3 = (TelephonyManager)f.getServiceContext().getSystemService("phone");
        d1 = new LinkedList();
        d0 = new b();
        if (d3 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        b1 = d0;
        if (b1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Exception exception;
        try
        {
            d3.listen(d0, 272);
        }
        catch (Exception exception1) { }
        d6 = al();
        c._mthif("baidu_location_service", (new StringBuilder()).append("i:").append(d4).toString());
        ea = true;
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    public String ao()
    {
        return d4;
    }

    public int ap()
    {
        if (d3 == null)
        {
            return 0;
        } else
        {
            return d3.getNetworkType();
        }
    }

    public int aq()
    {
        String s = ((TelephonyManager)f.getServiceContext().getSystemService("phone")).getSubscriberId();
        if (s != null)
        {
            if (s.startsWith("46000") || s.startsWith("46002") || s.startsWith("46007"))
            {
                return 1;
            }
            if (s.startsWith("46001"))
            {
                return 2;
            }
            if (s.startsWith("46003"))
            {
                return 3;
            }
        }
        return 0;
    }

    public void as()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = ea;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (d0 != null && d3 != null)
        {
            d3.listen(d0, 0);
        }
        d0 = null;
        d3 = null;
        d1.clear();
        d1 = null;
        ea = false;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
