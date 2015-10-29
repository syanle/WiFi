// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.net.wifi.ScanResult;
import java.util.List;
import java.util.Locale;
import java.util.Random;

// Referenced classes of package com.baidu.location:
//            ar, c

protected class int
{

    final ar a;
    private boolean _flddo;
    public List _fldfor;
    private long _fldif;
    private long _fldint;
    private boolean _fldnew;

    private void a()
    {
        if (_mthtry() >= 1)
        {
            int i = _fldfor.size() - 1;
            boolean flag = true;
            while (i >= 1 && flag) 
            {
                int j = 0;
                flag = false;
                for (; j < i; j++)
                {
                    if (((ScanResult)_fldfor.get(j)).level < ((ScanResult)_fldfor.get(j + 1)).level)
                    {
                        ScanResult scanresult = (ScanResult)_fldfor.get(j + 1);
                        _fldfor.set(j + 1, _fldfor.get(j));
                        _fldfor.set(j, scanresult);
                        flag = true;
                    }
                }

                i--;
            }
        }
    }

    public String a(int i)
    {
        Random random;
        StringBuffer stringbuffer;
        String s;
        int j;
        int k;
        int l;
        int l1;
        int i2;
        if (_mthtry() < 1)
        {
            return null;
        }
        boolean flag = false;
        random = new Random();
        stringbuffer = new StringBuffer(512);
        s = a.b4();
        l = 0;
        j = 0;
        l1 = _fldfor.size();
        k = 1;
        if (l1 > i)
        {
            l1 = i;
        }
        i2 = 0;
        i = ((flag) ? 1 : 0);
_L2:
        if (i2 >= l1)
        {
            break MISSING_BLOCK_LABEL_527;
        }
        if (((ScanResult)_fldfor.get(i2)).level != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        int i1 = k;
        k = i;
        i = j;
        j = i1;
_L5:
        i2++;
        int j1 = i;
        i = k;
        k = j;
        j = j1;
        if (true) goto _L2; else goto _L1
_L1:
        int k1;
        String s1;
        int j2;
        if (k != 0)
        {
            k = 0;
            stringbuffer.append("&wf=");
        } else
        {
            stringbuffer.append("|");
        }
        s1 = ((ScanResult)_fldfor.get(i2)).BSSID.replace(":", "");
        stringbuffer.append(s1);
        j2 = ((ScanResult)_fldfor.get(i2)).level;
        k1 = j2;
        if (j2 < 0)
        {
            k1 = -j2;
        }
        stringbuffer.append(String.format(Locale.CHINA, ";%d;", new Object[] {
            Integer.valueOf(k1)
        }));
        k1 = l + 1;
        l = j;
        if (s != null)
        {
            l = j;
            if (s.equals(s1))
            {
                _fldnew = ar._mthif(a, ((ScanResult)_fldfor.get(i2)).capabilities);
                l = k1;
            }
        }
        if (i != 0) goto _L4; else goto _L3
_L3:
        if (random.nextInt(10) != 2 || ((ScanResult)_fldfor.get(i2)).SSID == null || ((ScanResult)_fldfor.get(i2)).SSID.length() >= 30)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        stringbuffer.append(((ScanResult)_fldfor.get(i2)).SSID);
        i = 1;
_L7:
        j2 = i;
        j = k;
        i = l;
        l = k1;
        k = j2;
          goto _L5
_L4:
        if (i != 1) goto _L7; else goto _L6
_L6:
        if (random.nextInt(20) != 1 || ((ScanResult)_fldfor.get(i2)).SSID == null || ((ScanResult)_fldfor.get(i2)).SSID.length() >= 30) goto _L7; else goto _L8
_L8:
        stringbuffer.append(((ScanResult)_fldfor.get(i2)).SSID);
        i = 2;
          goto _L7
        Exception exception;
        exception;
        j = k;
        k = i;
        i = l;
        l = k1;
          goto _L5
        if (k == 0)
        {
            stringbuffer.append((new StringBuilder()).append("&wf_n=").append(j).toString());
            stringbuffer.append("&wf_st=");
            stringbuffer.append(_fldif);
            stringbuffer.append("&wf_et=");
            stringbuffer.append(_fldint);
            stringbuffer.append("&wf_vt=");
            stringbuffer.append(ar._mthdo(a));
            if (j > 0)
            {
                _flddo = true;
                stringbuffer.append("&wf_en=");
                if (_fldnew)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                stringbuffer.append(i);
            }
            return stringbuffer.toString();
        } else
        {
            return null;
        }
    }

    public boolean a(oString ostring)
    {
        return ar._mthif(ostring, this, c.aU);
    }

    public String _mthbyte()
    {
        String s;
        try
        {
            s = a(15);
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public boolean _mthcase()
    {
        return _flddo;
    }

    public String _mthchar()
    {
        String s;
        try
        {
            s = a(c.aX);
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public int _mthdo()
    {
        boolean flag = false;
        int i = 0;
        do
        {
label0:
            {
                int j = ((flag) ? 1 : 0);
                if (i < _mthtry())
                {
                    j = -((ScanResult)_fldfor.get(i)).level;
                    if (j <= 0)
                    {
                        break label0;
                    }
                }
                return j;
            }
            i++;
        } while (true);
    }

    public boolean _mthdo(ult.level level)
    {
        if (_fldfor != null && level != null && level._fldfor != null)
        {
            int i;
            int j;
            if (_fldfor.size() < level._fldfor.size())
            {
                i = _fldfor.size();
            } else
            {
                i = level._fldfor.size();
            }
            for (j = 0; j < i; j++)
            {
                String s = ((ScanResult)_fldfor.get(j)).BSSID;
                int k = ((ScanResult)_fldfor.get(j)).level;
                String s1 = ((ScanResult)level._fldfor.get(j)).BSSID;
                int l = ((ScanResult)level._fldfor.get(j)).level;
                if (!s.equals(s1) || k != l)
                {
                    return false;
                }
            }

            return true;
        } else
        {
            return false;
        }
    }

    public String _mthelse()
    {
        StringBuffer stringbuffer = new StringBuffer(512);
        stringbuffer.append("wifi info:");
        if (_mthtry() < 1)
        {
            return stringbuffer.toString();
        }
        int i = _fldfor.size();
        int j = i;
        if (i > 10)
        {
            j = 10;
        }
        int k = 0;
        i = 1;
        while (k < j) 
        {
            if (((ScanResult)_fldfor.get(k)).level != 0)
            {
                if (i != 0)
                {
                    stringbuffer.append("wifi=");
                    stringbuffer.append(((ScanResult)_fldfor.get(k)).BSSID.replace(":", ""));
                    i = ((ScanResult)_fldfor.get(k)).level;
                    stringbuffer.append(String.format(Locale.CHINA, ";%d;", new Object[] {
                        Integer.valueOf(i)
                    }));
                    i = 0;
                } else
                {
                    stringbuffer.append(";");
                    stringbuffer.append(((ScanResult)_fldfor.get(k)).BSSID.replace(":", ""));
                    int l = ((ScanResult)_fldfor.get(k)).level;
                    stringbuffer.append(String.format(Locale.CHINA, ",%d;", new Object[] {
                        Integer.valueOf(l)
                    }));
                }
            }
            k++;
        }
        return stringbuffer.toString();
    }

    public boolean _mthfor()
    {
        return System.currentTimeMillis() - _fldint < 3000L;
    }

    public String _mthif(int i)
    {
        if (i == 0 || _mthtry() < 1)
        {
            return null;
        }
        StringBuffer stringbuffer = new StringBuffer(256);
        int j;
        if (_fldfor.size() > c.aX)
        {
            j = c.aX;
        }
        int l = 0;
        j = 1;
        int k = 0;
        while (k < c.aX) 
        {
            int i1 = l;
            if ((j & i) != 0)
            {
                if (l == 0)
                {
                    stringbuffer.append("&ssid=");
                } else
                {
                    stringbuffer.append("|");
                }
                stringbuffer.append(((ScanResult)_fldfor.get(k)).BSSID);
                stringbuffer.append(";");
                stringbuffer.append(((ScanResult)_fldfor.get(k)).SSID);
                i1 = l + 1;
            }
            j <<= 1;
            k++;
            l = i1;
        }
        return stringbuffer.toString();
    }

    public boolean _mthif()
    {
        return System.currentTimeMillis() - _fldif < 3000L;
    }

    public boolean _mthif(if if1)
    {
        if (_fldfor != null && if1 != null && if1._fldfor != null)
        {
            int i;
            int j;
            if (_fldfor.size() < if1._fldfor.size())
            {
                i = _fldfor.size();
            } else
            {
                i = if1._fldfor.size();
            }
            for (j = 0; j < i; j++)
            {
                if (!((ScanResult)_fldfor.get(j)).BSSID.equals(((ScanResult)if1._fldfor.get(j)).BSSID))
                {
                    return false;
                }
            }

            return true;
        } else
        {
            return false;
        }
    }

    public String _mthint()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("wifi=");
        if (_fldfor == null)
        {
            return stringbuilder.toString();
        }
        for (int i = 0; i < _fldfor.size(); i++)
        {
            int j = ((ScanResult)_fldfor.get(i)).level;
            stringbuilder.append(((ScanResult)_fldfor.get(i)).BSSID.replace(":", ""));
            stringbuilder.append(String.format(Locale.CHINA, ",%d;", new Object[] {
                Integer.valueOf(j)
            }));
        }

        return stringbuilder.toString();
    }

    public boolean _mthnew()
    {
        return System.currentTimeMillis() - _fldint < 5000L;
    }

    public int _mthtry()
    {
        if (_fldfor == null)
        {
            return 0;
        } else
        {
            return _fldfor.size();
        }
    }

    public ult(ar ar1, ult ult)
    {
        a = ar1;
        super();
        _fldfor = null;
        _fldif = 0L;
        _fldint = 0L;
        _flddo = false;
        if (ult != null)
        {
            _fldfor = ult._fldfor;
            _fldif = ult._fldif;
            _fldint = ult._fldint;
            _flddo = ult._flddo;
        }
    }

    public do(ar ar1, List list, long l)
    {
        a = ar1;
        super();
        _fldfor = null;
        _fldif = 0L;
        _fldint = 0L;
        _flddo = false;
        _fldif = l;
        _fldfor = list;
        _fldint = System.currentTimeMillis();
        a();
        c._mthif("baidu_location_service", _mthint());
    }
}
