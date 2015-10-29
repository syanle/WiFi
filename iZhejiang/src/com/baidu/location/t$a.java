// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.baidu.location:
//            t

public class tTimeMillis
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

    public boolean a(toString tostring)
    {
        return _fldfor == tostring._fldfor && _fldtry == tostring._fldtry && _fldif == tostring._fldif;
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
                .toString tostring = (append)t._mthdo(a).get(i);
                if (tostring._flddo != _flddo)
                {
                    stringbuffer.append(tostring._flddo);
                }
                stringbuffer.append("|");
                if (tostring._fldif != _fldif)
                {
                    stringbuffer.append(tostring._fldif);
                }
                stringbuffer.append("|");
                if (tostring._fldfor != _fldfor)
                {
                    stringbuffer.append(tostring._fldfor);
                }
                stringbuffer.append("|");
                if (tostring._fldtry != _fldtry)
                {
                    stringbuffer.append(tostring._fldtry);
                }
                stringbuffer.append("|");
                if (i != k - 1)
                {
                    stringbuffer.append(tostring._fldbyte / 1000L);
                } else
                {
                    stringbuffer.append((System.currentTimeMillis() - tostring._fldbyte) / 1000L);
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

    public (t t1)
    {
        a = t1;
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

    public tTimeMillis(t t1, int i, int j, int k, int l, char c)
    {
        a = t1;
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
        _fldnew = c;
        _fldbyte = System.currentTimeMillis() / 1000L;
    }
}
