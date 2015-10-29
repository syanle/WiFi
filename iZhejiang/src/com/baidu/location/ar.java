// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.baidu.location:
//            ax, n, f, ab, 
//            ae, c

class ar
    implements ax, n
{
    private class a extends BroadcastReceiver
    {

        final ar a;

        public void onReceive(Context context, Intent intent)
        {
            if (context != null && intent.getAction().equals("android.net.wifi.SCAN_RESULTS"))
            {
                ar._mthif(a, System.currentTimeMillis() / 1000L);
                ar._mthif(a);
                ab.bj().obtainMessage(41).sendToTarget();
                if (ae.bp().bs())
                {
                    ae.bp().g1.obtainMessage(41).sendToTarget();
                    return;
                }
            }
        }

        private a()
        {
            a = ar.this;
            super();
        }

    }

    protected class b
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

        public boolean a(b b6)
        {
            return ar._mthif(b6, this, c.aU);
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

        public boolean _mthdo(b b6)
        {
            if (_fldfor != null && b6 != null && b6._fldfor != null)
            {
                int i;
                int j;
                if (_fldfor.size() < b6._fldfor.size())
                {
                    i = _fldfor.size();
                } else
                {
                    i = b6._fldfor.size();
                }
                for (j = 0; j < i; j++)
                {
                    String s = ((ScanResult)_fldfor.get(j)).BSSID;
                    int k = ((ScanResult)_fldfor.get(j)).level;
                    String s1 = ((ScanResult)b6._fldfor.get(j)).BSSID;
                    int l = ((ScanResult)b6._fldfor.get(j)).level;
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

        public boolean _mthif(b b6)
        {
            if (_fldfor != null && b6 != null && b6._fldfor != null)
            {
                int i;
                int j;
                if (_fldfor.size() < b6._fldfor.size())
                {
                    i = _fldfor.size();
                } else
                {
                    i = b6._fldfor.size();
                }
                for (j = 0; j < i; j++)
                {
                    if (!((ScanResult)_fldfor.get(j)).BSSID.equals(((ScanResult)b6._fldfor.get(j)).BSSID))
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

        public b(b b6)
        {
            a = ar.this;
            super();
            _fldfor = null;
            _fldif = 0L;
            _fldint = 0L;
            _flddo = false;
            if (b6 != null)
            {
                _fldfor = b6._fldfor;
                _fldif = b6._fldif;
                _fldint = b6._fldint;
                _flddo = b6._flddo;
            }
        }

        public b(List list, long l)
        {
            a = ar.this;
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


    private static final int hN = 15;
    private static ar hW = null;
    private a h0;
    private final long hM = 3000L;
    private boolean hO;
    private long hP;
    private b hQ;
    private Object hR;
    private final long hS = 3000L;
    private long hT;
    private final long hU = 5000L;
    private WifiManager hV;
    private Method hX;
    private boolean hY;
    private long hZ;

    private ar()
    {
        hV = null;
        h0 = null;
        hQ = null;
        hT = 0L;
        hZ = 0L;
        hY = false;
        hR = null;
        hX = null;
        hO = true;
        hP = 0L;
    }

    public static boolean bU()
    {
        NetworkInfo networkinfo;
        int i;
        try
        {
            networkinfo = ((ConnectivityManager)f.getServiceContext().getSystemService("connectivity")).getActiveNetworkInfo();
        }
        catch (Exception exception)
        {
            return false;
        }
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        i = networkinfo.getType();
        if (i == 1)
        {
            return true;
        }
        return false;
    }

    private void bV()
    {
        if (hV != null)
        {
            Object obj;
            try
            {
                obj = hV.getScanResults();
            }
            catch (Exception exception)
            {
                return;
            }
            obj = new b(((List) (obj)), hT);
            hT = 0L;
            if (hQ == null || !((b) (obj))._mthif(hQ))
            {
                hQ = ((b) (obj));
                return;
            }
        }
    }

    public static ar bW()
    {
        if (hW == null)
        {
            hW = new ar();
        }
        return hW;
    }

    static long _mthdo(ar ar1)
    {
        return ar1.hP;
    }

    public static double _mthif(b b6, b b7)
    {
        double d1 = 1.0D;
        if (b6 != null && b7 != null) goto _L2; else goto _L1
_L1:
        double d = 0.0D;
_L4:
        return d;
_L2:
        b6 = b6._fldfor;
        b7 = b7._fldfor;
        d = d1;
        if (b6 == b7) goto _L4; else goto _L3
_L3:
        float f1;
        int l;
        int i1;
        if (b6 == null || b7 == null)
        {
            return 0.0D;
        }
        l = b6.size();
        i1 = b7.size();
        f1 = l + i1;
        if (l != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        d = d1;
        if (i1 == 0) goto _L4; else goto _L5
_L5:
        int i;
        int j;
        if (l == 0 || i1 == 0)
        {
            return 0.0D;
        }
        j = 0;
        i = 0;
_L7:
        String s;
        if (j >= l)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        s = ((ScanResult)b6.get(j)).BSSID;
        if (s != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L8:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
        int k = 0;
_L9:
        if (k < i1)
        {
label0:
            {
                if (!s.equals(((ScanResult)b7.get(k)).BSSID))
                {
                    break label0;
                }
                i++;
            }
        }
          goto _L8
        k++;
          goto _L9
        if (f1 <= 0.0F)
        {
            return 0.0D;
        }
        return (double)i / (double)f1;
          goto _L8
    }

    static long _mthif(ar ar1, long l)
    {
        ar1.hP = l;
        return l;
    }

    static void _mthif(ar ar1)
    {
        ar1.bV();
    }

    public static boolean _mthif(b b6, b b7, float f1)
    {
        float f2;
        int i;
        int j;
        int l;
        int i1;
        if (b6 == null || b7 == null)
        {
            return false;
        }
        b6 = b6._fldfor;
        b7 = b7._fldfor;
        if (b6 == b7)
        {
            return true;
        }
        if (b6 == null || b7 == null)
        {
            return false;
        }
        l = b6.size();
        i1 = b7.size();
        f2 = l + i1;
        if (l == 0 && i1 == 0)
        {
            return true;
        }
        if (l == 0 || i1 == 0)
        {
            return false;
        }
        j = 0;
        i = 0;
_L2:
        String s;
        if (j >= l)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        s = ((ScanResult)b6.get(j)).BSSID;
        if (s != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        if (k < i1)
        {
label0:
            {
                if (!s.equals(((ScanResult)b7.get(k)).BSSID))
                {
                    break label0;
                }
                i++;
            }
        }
          goto _L3
        k++;
          goto _L4
        if ((float)(i * 2) >= f2 * f1)
        {
            return true;
        }
        return false;
          goto _L3
    }

    static boolean _mthif(ar ar1, String s)
    {
        return ar1.q(s);
    }

    private boolean q(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return false;
        } else
        {
            return Pattern.compile("wpa|wep", 2).matcher(s).find();
        }
    }

    public String b0()
    {
        String s = null;
        WifiInfo wifiinfo;
        try
        {
            wifiinfo = hV.getConnectionInfo();
        }
        catch (Exception exception)
        {
            return null;
        }
        if (wifiinfo == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        s = wifiinfo.getMacAddress();
        return s;
    }

    public b b1()
    {
        if (hQ == null || !hQ._mthnew())
        {
            return bY();
        } else
        {
            return hQ;
        }
    }

    public void b2()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = hY;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!ab.gv)
        {
            continue; /* Loop/switch isn't completed */
        }
        hV = (WifiManager)f.getServiceContext().getSystemService("wifi");
        h0 = new a();
        Field field;
        Exception exception1;
        try
        {
            f.getServiceContext().registerReceiver(h0, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
        }
        catch (Exception exception2) { }
        hY = true;
        field = Class.forName("android.net.wifi.WifiManager").getDeclaredField("mService");
        if (field != null)
        {
            try
            {
                field.setAccessible(true);
                hR = field.get(hV);
                hX = hR.getClass().getDeclaredMethod("startScan", new Class[] {
                    Boolean.TYPE
                });
                if (hX != null)
                {
                    hX.setAccessible(true);
                }
            }
            catch (Exception exception) { }
            finally
            {
                this;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        throw exception1;
    }

    public boolean b3()
    {
        long l = System.currentTimeMillis();
        if (l - hZ <= 10000L)
        {
            return false;
        } else
        {
            hZ = l;
            return bX();
        }
    }

    public String b4()
    {
        Object obj = hV.getConnectionInfo();
        if (obj != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        boolean flag;
        try
        {
            obj = ((WifiInfo) (obj)).getBSSID();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        if (obj == null) goto _L4; else goto _L3
_L3:
        obj = ((String) (obj)).replace(":", "");
        if ("000000000000".equals(obj)) goto _L1; else goto _L5
_L5:
        flag = "".equals(obj);
        if (flag) goto _L1; else goto _L6
_L6:
        return ((String) (obj));
_L4:
        obj = null;
        if (true) goto _L6; else goto _L7
_L7:
    }

    public boolean b5()
    {
        Object obj;
        if (!hV.isWifiEnabled())
        {
            break MISSING_BLOCK_LABEL_84;
        }
        if (hX == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        obj = hR;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        hX.invoke(hR, new Object[] {
            Boolean.valueOf(hO)
        });
_L1:
        Exception exception;
        try
        {
            hT = System.currentTimeMillis();
        }
        catch (Exception exception1)
        {
            return false;
        }
        return true;
        exception;
        hV.startScan();
          goto _L1
        hV.startScan();
          goto _L1
        hT = 0L;
        return false;
    }

    public b bS()
    {
        if (hQ == null || !hQ._mthfor())
        {
            return bY();
        } else
        {
            return hQ;
        }
    }

    public void bT()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = hY;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception;
        try
        {
            f.getServiceContext().unregisterReceiver(h0);
            hP = 0L;
        }
        catch (Exception exception1) { }
        h0 = null;
        hV = null;
        hY = false;
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    public boolean bX()
    {
        while (hV == null || System.currentTimeMillis() - hT <= 3000L) 
        {
            return false;
        }
        return b5();
    }

    public b bY()
    {
        if (hV == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        b b6 = new b(hV.getScanResults(), 0L);
        return b6;
        Exception exception;
        exception;
        return new b(null, 0L);
    }

    public boolean bZ()
    {
        return hV.isWifiEnabled() && 3 == hV.getWifiState();
    }

}
