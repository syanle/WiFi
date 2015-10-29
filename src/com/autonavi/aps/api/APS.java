// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.autonavi.aps.api;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Looper;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.autonavi.aps.api:
//            IAPS, Des, NetManagerApache, ParserResponse, 
//            Location, GsmCellBean, CdmaCellBean, f, 
//            d, TelephoneBean, e, a, 
//            b, c, ApsRequest

public class APS
    implements IAPS
{

    private static boolean A = false;
    private static boolean B = true;
    private static String a = null;
    private static String b = null;
    private static APS c = null;
    private static Context d = null;
    private static TelephoneBean e = null;
    private static int f = 0;
    private static ConnectivityManager g = null;
    private static WifiManager h = null;
    private static TelephonyManager i = null;
    private static LocationManager j = null;
    private static LocationListener k = null;
    private static LocationListener l = null;
    private static Location m = null;
    private static Location n = null;
    private static ArrayList o = new ArrayList();
    private static ArrayList p = new ArrayList();
    private static List q = new ArrayList();
    private static Des r = new Des("autonavi00spas$#@!666666");
    private static PhoneStateListener s = null;
    private static int t = 10;
    private static f u = null;
    private static WifiInfo v = null;
    private static String w = null;
    private static com.autonavi.aps.api.Location x = null;
    private static long y = 0L;
    private static boolean z = false;

    protected APS()
    {
    }

    static WifiManager a()
    {
        return h;
    }

    private com.autonavi.aps.api.Location a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        s1 = NetManagerApache.getInstance(d).doPostXmlAsString("http://aps.amap.com/APS/r", s1);
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (s1.length() <= 0) goto _L2; else goto _L3
_L3:
        s1 = r.decrypt((new ParserResponse()).ParserSapsXml(s1), "GBK");
        if (s1 == null) goto _L2; else goto _L4
_L4:
        if (s1.length() <= 0) goto _L2; else goto _L5
_L5:
        s1 = (new ParserResponse()).ParserApsXml(s1);
        if (s1 == null) goto _L2; else goto _L6
_L6:
        double d1 = s1.getCenx();
        if (d1 <= 0.0D) goto _L2; else goto _L7
_L7:
        this;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        s1 = null;
        if (true) goto _L7; else goto _L8
_L8:
        s1;
        throw s1;
    }

    static void a(int i1)
    {
        t = i1;
    }

    static void a(long l1)
    {
        y = 0L;
    }

    static void a(Location location)
    {
        m = location;
    }

    static void a(WifiInfo wifiinfo)
    {
        v = null;
    }

    static void a(CellLocation celllocation, List list)
    {
        b(celllocation, list);
    }

    static void a(List list)
    {
        q = list;
    }

    static List b()
    {
        return q;
    }

    static void b(Location location)
    {
        n = location;
    }

    private static void b(CellLocation celllocation, List list)
    {
        int i1 = 0;
        com/autonavi/aps/api/APS;
        JVM INSTR monitorenter ;
        if (celllocation == null) goto _L2; else goto _L1
_L1:
        String s1 = i.getNetworkOperator();
        if (!(celllocation instanceof GsmCellLocation)) goto _L4; else goto _L3
_L3:
        f = 1;
        o.clear();
        if (s1 == null) goto _L2; else goto _L5
_L5:
        if (s1.length() <= 4) goto _L2; else goto _L6
_L6:
        GsmCellBean gsmcellbean = new GsmCellBean();
        gsmcellbean.setLac(((GsmCellLocation)celllocation).getLac());
        gsmcellbean.setCellid(((GsmCellLocation)celllocation).getCid());
        gsmcellbean.setSignal(t);
        gsmcellbean.setMcc(s1.substring(0, 3));
        gsmcellbean.setMnc(s1.substring(3, 5));
        o.add(gsmcellbean);
        if (list == null) goto _L2; else goto _L7
_L7:
        if (list.size() <= 0) goto _L2; else goto _L8
_L8:
        int j1 = list.size();
        if (i1 < j1) goto _L9; else goto _L2
_L2:
        com/autonavi/aps/api/APS;
        JVM INSTR monitorexit ;
        return;
_L9:
        celllocation = (NeighboringCellInfo)list.get(i1);
        GsmCellBean gsmcellbean1 = new GsmCellBean();
        gsmcellbean1.setSignal(celllocation.getRssi() * 2 - 133);
        gsmcellbean1.setLac(celllocation.getLac());
        gsmcellbean1.setCellid(celllocation.getCid());
        gsmcellbean1.setMcc(s1.substring(0, 3));
        gsmcellbean1.setMnc(s1.substring(3, 5));
        o.add(gsmcellbean1);
        i1++;
          goto _L8
_L4:
        Class.forName("android.telephony.cdma.CdmaCellLocation");
        f = 2;
        p.clear();
        if (s1 == null) goto _L2; else goto _L10
_L10:
        if (s1.length() <= 4) goto _L2; else goto _L11
_L11:
        list = new CdmaCellBean();
        celllocation = (CdmaCellLocation)celllocation;
        list.setLat(celllocation.getBaseStationLatitude());
        list.setLon(celllocation.getBaseStationLongitude());
        list.setSid(celllocation.getSystemId());
        list.setNid(celllocation.getNetworkId());
        list.setBid(celllocation.getBaseStationId());
        list.setSignal(t);
        list.setMcc(s1.substring(0, 3));
        list.setMnc(s1.substring(3, 5));
        p.add(list);
          goto _L2
        celllocation;
          goto _L2
        celllocation;
        throw celllocation;
          goto _L8
    }

    static TelephonyManager c()
    {
        return i;
    }

    static int d()
    {
        return f;
    }

    static ArrayList e()
    {
        return o;
    }

    static int f()
    {
        return t;
    }

    static ArrayList g()
    {
        return p;
    }

    public static String getCurrenttime()
    {
        return (new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss")).format(new Date());
    }

    public static APS getInstance(Context context)
    {
        if (c == null)
        {
            c = new APS();
            d = context;
            h = (WifiManager)context.getSystemService("wifi");
            context = c;
            context.getClass();
            u = new f(context);
            if (h.getWifiState() == 3)
            {
                v = h.getConnectionInfo();
                (new d()).start();
            }
            d.registerReceiver(u, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
            g = (ConnectivityManager)d.getSystemService("connectivity");
            i = (TelephonyManager)d.getSystemService("phone");
            CellLocation.requestLocationUpdate();
            e = TelephoneBean.getInstance(i, d, null);
            s = new e();
            i.listen(s, 256);
            i.listen(s, 16);
            i();
        }
        return c;
    }

    private static void h()
    {
        com/autonavi/aps/api/APS;
        JVM INSTR monitorenter ;
        if (z) goto _L2; else goto _L1
_L1:
        l = new a();
        j.requestLocationUpdates("gps", 5000L, 0.0F, l, Looper.getMainLooper());
        A = false;
        z = true;
_L4:
        com/autonavi/aps/api/APS;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception;
        try
        {
            if (l != null)
            {
                j.removeUpdates(l);
            }
        }
        catch (Exception exception1) { }
        l = null;
        m = null;
        A = false;
        z = false;
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        throw exception;
    }

    private static void i()
    {
        if (B)
        {
            j = (LocationManager)d.getSystemService("location");
            k = new b();
        }
    }

    private String j()
    {
        Object obj = null;
        this;
        JVM INSTR monitorenter ;
        Object obj1;
        if (a != null)
        {
            getProductName();
        }
        if (h.getWifiState() == 3)
        {
            (new c(this)).start();
        }
        if (i != null)
        {
            obj = i.getCellLocation();
        }
        if (s != null)
        {
            s.onCellLocationChanged(((CellLocation) (obj)));
        }
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append("<?xml version=\"1.0\" encoding=\"GBK\" ?>");
        ((StringBuilder) (obj)).append("<location>");
        ((StringBuilder) (obj)).append("<license>").append(a).append("</license>");
        ((StringBuilder) (obj)).append("<src>").append(getProductName()).append("</src>");
        ((StringBuilder) (obj)).append("<imei>").append(e.getDeviceId()).append("</imei>");
        obj1 = g.getActiveNetworkInfo();
        ((StringBuilder) (obj)).append("<network>");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_391;
        }
        if (((NetworkInfo) (obj1)).isAvailable() && ((NetworkInfo) (obj1)).isConnected())
        {
            ((StringBuilder) (obj)).append(((NetworkInfo) (obj1)).toString());
            if (i != null)
            {
                ((StringBuilder) (obj)).append(", countryiso: ").append(i.getNetworkCountryIso()).append(", operatorname: ").append(i.getNetworkOperatorName()).append(", line1number: ").append(i.getLine1Number());
            }
            if (h.getWifiState() == 3)
            {
                obj1 = h.getDhcpInfo();
                ((StringBuilder) (obj)).append((new StringBuilder(", wifidns1: ")).append(NetManagerApache.intToIpAddr(((DhcpInfo) (obj1)).dns1)).toString()).append((new StringBuilder(", wifidns2: ")).append(NetManagerApache.intToIpAddr(((DhcpInfo) (obj1)).dns2)).toString()).append((new StringBuilder(", wifigateway: ")).append(NetManagerApache.intToIpAddr(((DhcpInfo) (obj1)).gateway)).toString()).append((new StringBuilder(", wifiipaddr: ")).append(NetManagerApache.intToIpAddr(((DhcpInfo) (obj1)).ipAddress)).toString());
            }
        }
        ((StringBuilder) (obj)).append("</network>");
        if (f != 1) goto _L2; else goto _L1
_L1:
        ((StringBuilder) (obj)).append("<cdma>0</cdma>");
        if (o.size() <= 0) goto _L4; else goto _L3
_L3:
        obj1 = (GsmCellBean)o.get(0);
        ((StringBuilder) (obj)).append("<mcc>").append(((GsmCellBean) (obj1)).getMcc()).append("</mcc>");
        ((StringBuilder) (obj)).append("<mnc>").append(((GsmCellBean) (obj1)).getMnc()).append("</mnc>");
        ((StringBuilder) (obj)).append("<lac>").append(((GsmCellBean) (obj1)).getLac()).append("</lac>");
        ((StringBuilder) (obj)).append("<cellid>").append(((GsmCellBean) (obj1)).getCellid()).append("</cellid>");
        ((StringBuilder) (obj)).append("<signal>").append(((GsmCellBean) (obj1)).getSignal()).append("</signal>");
        if (o.size() <= 1) goto _L4; else goto _L5
_L5:
        obj1 = new StringBuffer();
        int i1 = 1;
_L20:
        if (i1 < o.size()) goto _L7; else goto _L6
_L6:
        ((StringBuilder) (obj)).append("<nb>").append(((StringBuffer) (obj1)).toString()).append("</nb>");
_L4:
        if (j == null || !j.isProviderEnabled("gps")) goto _L9; else goto _L8
_L8:
        if (m == null) goto _L11; else goto _L10
_L10:
        double d1;
        double d2;
        d1 = m.getLatitude();
        d2 = m.getLongitude();
        if (d1 <= 3D || d2 <= 73D)
        {
            break MISSING_BLOCK_LABEL_733;
        }
        ((StringBuilder) (obj)).append("<gps>1</gps>");
        ((StringBuilder) (obj)).append("<glong>").append(d2).append("</glong>");
        ((StringBuilder) (obj)).append("<glat>").append(d1).append("</glat>");
        ((StringBuilder) (obj)).append("<gaccuracy>").append(m.getAccuracy()).append("</gaccuracy>");
        m = null;
_L11:
        if (h.getWifiState() != 3) goto _L13; else goto _L12
_L12:
        if (q.size() <= 0) goto _L15; else goto _L14
_L14:
        obj1 = new StringBuilder();
        i1 = 0;
          goto _L16
_L27:
        ((StringBuilder) (obj)).append("<macs>").append(((StringBuilder) (obj1)).toString()).append("</macs>");
_L15:
        obj1 = h.getConnectionInfo();
        v = ((WifiInfo) (obj1));
        if (obj1 == null) goto _L18; else goto _L17
_L17:
        if (v.getBSSID() == null) goto _L18; else goto _L19
_L19:
        if (q.size() <= 0)
        {
            ((StringBuilder) (obj)).append("<macs>").append(v.getBSSID()).append(",").append(v.getRssi()).append("*").append("</macs>");
        }
        ((StringBuilder) (obj)).append("<mainmac>").append(v.getBSSID()).append(",").append(v.getRssi()).append("*").append("</mainmac>");
_L13:
        ((StringBuilder) (obj)).append("<clienttime>").append(getCurrenttime()).append("</clienttime>");
        ((StringBuilder) (obj)).append("</location>");
        obj1 = (new ApsRequest()).convertApsRequestXml(((StringBuilder) (obj)).toString());
        ((StringBuilder) (obj)).delete(0, ((StringBuilder) (obj)).length());
        ((StringBuilder) (obj)).append(((String) (obj1)));
        obj1 = new StringBuilder();
        ((StringBuilder) (obj1)).append("<?xml version=\"1.0\" encoding=\"GBK\" ?>");
        ((StringBuilder) (obj1)).append("<saps>");
        ((StringBuilder) (obj1)).append("<src>").append(getProductName()).append("</src>");
        try
        {
            ((StringBuilder) (obj1)).append("<sreq>").append(r.encrypt(((StringBuilder) (obj)).toString())).append("</sreq>");
        }
        catch (Exception exception) { }
        ((StringBuilder) (obj1)).append("</saps>");
        ((StringBuilder) (obj)).delete(0, ((StringBuilder) (obj)).length());
        obj = ((StringBuilder) (obj1)).toString();
        this;
        JVM INSTR monitorexit ;
        return ((String) (obj));
_L7:
        if (i1 <= 1)
        {
            break MISSING_BLOCK_LABEL_1127;
        }
        ((StringBuffer) (obj1)).append("*");
        GsmCellBean gsmcellbean = (GsmCellBean)o.get(i1);
        ((StringBuffer) (obj1)).append(gsmcellbean.getMnc()).append(",").append(gsmcellbean.getLac()).append(",").append(gsmcellbean.getCellid()).append(",").append(gsmcellbean.getSignal());
        i1++;
          goto _L20
_L2:
        if (f != 2) goto _L4; else goto _L21
_L21:
        ((StringBuilder) (obj)).append("<cdma>1</cdma>");
        if (p.size() <= 0) goto _L4; else goto _L22
_L22:
        obj1 = (CdmaCellBean)p.get(0);
        ((StringBuilder) (obj)).append("<mcc>").append(((CdmaCellBean) (obj1)).getMcc()).append("</mcc>");
        ((StringBuilder) (obj)).append("<sid>").append(((CdmaCellBean) (obj1)).getSid()).append("</sid>");
        ((StringBuilder) (obj)).append("<nid>").append(((CdmaCellBean) (obj1)).getNid()).append("</nid>");
        ((StringBuilder) (obj)).append("<bid>").append(((CdmaCellBean) (obj1)).getBid()).append("</bid>");
        ((StringBuilder) (obj)).append("<lon>").append(((CdmaCellBean) (obj1)).getLon()).append("</lon>");
        ((StringBuilder) (obj)).append("<lat>").append(((CdmaCellBean) (obj1)).getLat()).append("</lat>");
        ((StringBuilder) (obj)).append("<signal>").append(((CdmaCellBean) (obj1)).getSignal()).append("</signal>");
        if (p.size() <= 1) goto _L4; else goto _L23
_L23:
        obj1 = new StringBuffer();
        i1 = 1;
_L24:
        if (i1 < p.size())
        {
            break MISSING_BLOCK_LABEL_1476;
        }
        ((StringBuilder) (obj)).append((new StringBuilder("<nb>")).append(((StringBuffer) (obj1)).toString()).append("</nb>").toString());
          goto _L4
        obj;
        throw obj;
        if (i1 <= 1)
        {
            break MISSING_BLOCK_LABEL_1491;
        }
        ((StringBuffer) (obj1)).append("*");
        CdmaCellBean cdmacellbean = (CdmaCellBean)p.get(i1);
        ((StringBuffer) (obj1)).append(cdmacellbean.getSid()).append(",").append(cdmacellbean.getNid()).append(",").append(cdmacellbean.getBid()).append(",").append(cdmacellbean.getSignal());
        i1++;
          goto _L24
_L9:
        if (j == null || !j.isProviderEnabled("network") || k == null) goto _L11; else goto _L25
_L25:
        j.requestLocationUpdates("network", 20000L, 0.0F, k, Looper.getMainLooper());
        try
        {
            Thread.sleep(3000L);
        }
        catch (InterruptedException interruptedexception) { }
        if (n == null)
        {
            break MISSING_BLOCK_LABEL_1698;
        }
        d1 = n.getLatitude();
        d2 = n.getLongitude();
        if (d1 <= 3D || d2 <= 73D)
        {
            break MISSING_BLOCK_LABEL_1698;
        }
        ((StringBuilder) (obj)).append("<gps>2</gps>");
        ((StringBuilder) (obj)).append("<glong>").append(d2).append("</glong>");
        ((StringBuilder) (obj)).append("<glat>").append(d1).append("</glat>");
        n = null;
        j.removeUpdates(k);
          goto _L11
_L16:
        if (i1 >= q.size() || i1 > 3) goto _L27; else goto _L26
_L26:
        ScanResult scanresult = (ScanResult)q.get(i1);
        ((StringBuilder) (obj1)).append(scanresult.BSSID).append(",").append(scanresult.level).append("*");
        i1++;
          goto _L16
_L18:
        if (v == null) goto _L13; else goto _L28
_L28:
        v.getBSSID();
          goto _L13
    }

    protected void finalize()
    {
        try
        {
            super.finalize();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public com.autonavi.aps.api.Location getCurrentLocation(Location location)
    {
        if (System.currentTimeMillis() - y < 2000L)
        {
            return x;
        }
        if (!z)
        {
            m = location;
        }
        location = j();
        if (location.equalsIgnoreCase(w) && x != null)
        {
            return x;
        } else
        {
            w = location;
            x = a(w);
            y = System.currentTimeMillis();
            return x;
        }
    }

    public String getProductName()
    {
        return b;
    }

    public String getVersion()
    {
        return "1.0.201208161816";
    }

    public void onDestroy()
    {
        try
        {
            d.unregisterReceiver(u);
        }
        catch (Exception exception3) { }
        try
        {
            if (k != null)
            {
                j.removeUpdates(k);
            }
        }
        catch (Exception exception2) { }
        k = null;
        try
        {
            if (l != null)
            {
                j.removeUpdates(l);
            }
        }
        catch (Exception exception1) { }
        l = null;
        try
        {
            if (i != null)
            {
                i.listen(s, 0);
            }
        }
        catch (Exception exception) { }
        s = null;
        o.clear();
        p.clear();
        q.clear();
        v = null;
        i = null;
        if (c != null)
        {
            c.finalize();
        }
        y = 0L;
        w = null;
        x = null;
        A = false;
        m = null;
        n = null;
        c = null;
        System.gc();
    }

    public void setLicence(String s1)
    {
        a = s1;
    }

    public void setOpenGps(boolean flag)
    {
label0:
        {
            if (flag != z)
            {
                if (!A)
                {
                    break label0;
                }
                Log.d("aps", "gps status change command is pending");
            }
            return;
        }
        A = true;
        h();
    }

    public void setOpenSystemNetworkLocation(boolean flag)
    {
label0:
        {
            if (B != flag)
            {
                B = flag;
                if (!flag)
                {
                    break label0;
                }
                i();
            }
            return;
        }
        try
        {
            if (k != null)
            {
                j.removeUpdates(k);
            }
        }
        catch (Exception exception) { }
        k = null;
    }

    public void setProductName(String s1)
    {
        b = s1;
    }

}
