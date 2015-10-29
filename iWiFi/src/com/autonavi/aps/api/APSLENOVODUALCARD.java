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
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.autonavi.aps.api:
//            IAPS, Des, NetManagerApache, ParserResponse, 
//            Location, g, TelephoneBean, ApsRequest, 
//            j, h, i

public class APSLENOVODUALCARD
    implements IAPS
{

    private static String a = null;
    private static String b = null;
    private static APSLENOVODUALCARD c = null;
    private static Context d = null;
    private static TelephoneBean e = null;
    private static int f = 0;
    private static ConnectivityManager g = null;
    private static WifiManager h = null;
    private static TelephonyManager i = null;
    private static LocationManager j = null;
    private static LocationListener k = null;
    private static ArrayList l = new ArrayList();
    private static ArrayList m = new ArrayList();
    private static List n = new ArrayList();
    private static Des o = new Des("autonavi00spas$#@!666666");
    private static PhoneStateListener p = null;
    private static int q = 10;
    private static j r = null;
    private static WifiInfo s = null;
    private static String t = null;
    private static com.autonavi.aps.api.Location u = null;
    private static long v = 0L;

    protected APSLENOVODUALCARD()
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
        s1 = o.decrypt((new ParserResponse()).ParserSapsXml(s1), "GBK");
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
    }

    static int b()
    {
        return 0;
    }

    static void b(int i1)
    {
        q = i1;
    }

    static ArrayList c()
    {
        return l;
    }

    static int d()
    {
        return q;
    }

    static ArrayList e()
    {
        return m;
    }

    private String f()
    {
        this;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            getProductName();
        }
        if (h.getWifiState() == 3)
        {
            (new g(this)).start();
        }
        Object obj = null;
        Object obj1;
        if (i != null)
        {
            obj = i.getCellLocation();
        }
        if (p != null)
        {
            p.onCellLocationChanged(((android.telephony.CellLocation) (obj)));
        }
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append("<?xml version=\"1.0\" encoding=\"GBK\" ?>");
        ((StringBuilder) (obj)).append("<location>");
        ((StringBuilder) (obj)).append("<license>").append(a).append("</license>");
        ((StringBuilder) (obj)).append("<src>").append(getProductName()).append("</src>");
        ((StringBuilder) (obj)).append("<imei>").append(e.getDeviceId()).append("#").append(i.getNetworkOperatorName()).append("#").append(i.getLine1Number()).append("</imei>");
        obj1 = g.getActiveNetworkInfo();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        if (((NetworkInfo) (obj1)).isAvailable() && ((NetworkInfo) (obj1)).isConnected())
        {
            ((StringBuilder) (obj)).append("<network>").append(((NetworkInfo) (obj1)).toString()).append("</network>");
        }
        if (n.size() <= 0) goto _L2; else goto _L1
_L1:
        obj1 = new StringBuilder();
        int i1 = 0;
          goto _L3
_L5:
        ((StringBuilder) (obj)).append("<macs>").append(((StringBuilder) (obj1)).toString()).append("</macs>");
_L7:
        ((StringBuilder) (obj)).append("<clienttime>").append(getCurrenttime()).append("</clienttime>");
        ((StringBuilder) (obj)).append("</location>");
        obj1 = (new ApsRequest()).convertApsRequestXml(((StringBuilder) (obj)).toString());
        ((StringBuilder) (obj)).delete(0, ((StringBuilder) (obj)).length());
        ((StringBuilder) (obj)).append(((String) (obj1)));
        obj1 = new StringBuilder();
        ((StringBuilder) (obj1)).append("<?xml version=\"1.0\" encoding=\"GBK\" ?>");
        ((StringBuilder) (obj1)).append("<saps>");
        ((StringBuilder) (obj1)).append("<src>").append(getProductName()).append("</src>");
        Exception exception;
        try
        {
            ((StringBuilder) (obj1)).append("<sreq>").append(o.encrypt(((StringBuilder) (obj)).toString())).append("</sreq>");
        }
        catch (Exception exception1) { }
        ((StringBuilder) (obj1)).append("</saps>");
        obj = ((StringBuilder) (obj1)).toString();
        this;
        JVM INSTR monitorexit ;
        return ((String) (obj));
_L3:
        if (i1 >= n.size() || i1 > 3) goto _L5; else goto _L4
_L4:
        ScanResult scanresult = (ScanResult)n.get(i1);
        ((StringBuilder) (obj1)).append(scanresult.BSSID).append(",").append(scanresult.level).append("*");
        i1++;
          goto _L3
_L2:
        if (h.getWifiState() != 3) goto _L7; else goto _L6
_L6:
        obj1 = h.getConnectionInfo();
        s = ((WifiInfo) (obj1));
        if (obj1 == null) goto _L9; else goto _L8
_L8:
        if (s.getBSSID() == null) goto _L9; else goto _L10
_L10:
        ((StringBuilder) (obj)).append("<macs>").append(s.getBSSID()).append(",").append(s.getRssi()).append("*").append("</macs>");
          goto _L7
        exception;
        throw exception;
_L9:
        if (s == null) goto _L7; else goto _L11
_L11:
        s.getBSSID();
          goto _L7
    }

    public static String getCurrenttime()
    {
        return (new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss")).format(new Date());
    }

    public static APSLENOVODUALCARD getInstance(Context context)
    {
        if (c == null)
        {
            c = new APSLENOVODUALCARD();
            d = context;
            h = (WifiManager)context.getSystemService("wifi");
            context = c;
            context.getClass();
            r = new j(context);
            if (h.getWifiState() == 3)
            {
                s = h.getConnectionInfo();
                (new h()).start();
            }
            d.registerReceiver(r, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
            g = (ConnectivityManager)d.getSystemService("connectivity");
            context = (TelephonyManager)d.getSystemService("phone");
            i = context;
            e = TelephoneBean.getInstance(context, d, "lenovodualcard");
            p = new i();
            context = new IntentFilter();
            context.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            d.registerReceiver(r, context);
        }
        return c;
    }

    public com.autonavi.aps.api.Location getCurrentLocation(Location location)
    {
        if (System.currentTimeMillis() - v < 2000L)
        {
            return u;
        }
        location = f();
        if (location.equalsIgnoreCase(t) && u != null)
        {
            return u;
        } else
        {
            t = location;
            u = a(t);
            v = System.currentTimeMillis();
            return u;
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
            d.unregisterReceiver(r);
        }
        catch (Exception exception2) { }
        try
        {
            throw new NullPointerException();
        }
        catch (Exception exception) { }
        try
        {
            i.listen(p, 0);
        }
        catch (Exception exception1) { }
        l.clear();
        m.clear();
        n.clear();
        i = null;
        k = null;
        p = null;
        s = null;
        c = null;
    }

    public void setLicence(String s1)
    {
        a = s1;
    }

    public void setOpenGps(boolean flag)
    {
    }

    public void setOpenSystemNetworkLocation(boolean flag)
    {
    }

    public void setProductName(String s1)
    {
        b = s1;
    }

}
