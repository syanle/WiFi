// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MTimerHandler, PhoneUtil, Log, Util

public class LBSManager extends BroadcastReceiver
{
    static class LocationCache
    {

        float Q;
        float R;
        int S;
        int T;
        long time;

        LocationCache()
        {
            Q = -1000F;
            R = -1000F;
            S = -1000;
            T = 1;
        }
    }

    public static interface OnLocationGotListener
    {

        public abstract void onLocationGot(float f, float f1, int i, int j, String s, String s1, boolean flag);
    }


    private static LocationCache F;
    public static final String FILTER_GPS = "filter_gps";
    public static final int INVALID_ACC = -1000;
    public static final float INVALID_LAT = -1000F;
    public static final float INVALID_LNG = -1000F;
    public static final int MM_SOURCE_HARDWARE = 0;
    public static final int MM_SOURCE_NET = 1;
    public static final int MM_SOURCE_REPORT_HARWARE = 3;
    public static final int MM_SOURCE_REPORT_NETWORK = 4;
    private OnLocationGotListener G;
    private LocationManager H;
    private PendingIntent I;
    private boolean J;
    boolean K;
    boolean L;
    boolean M;
    int N;
    private MTimerHandler O;
    private Context q;

    public LBSManager(Context context, OnLocationGotListener onlocationgotlistener)
    {
        J = false;
        L = false;
        M = false;
        O = new MTimerHandler(new _cls1(), false);
        G = onlocationgotlistener;
        K = false;
        N = 0;
        q = context;
        PhoneUtil.getSignalStrength(context);
        H = (LocationManager)context.getSystemService("location");
        a();
        I = PendingIntent.getBroadcast(context, 0, new Intent("filter_gps"), 0x8000000);
    }

    private boolean a()
    {
        boolean flag = false;
        if (H != null)
        {
            try
            {
                H.sendExtraCommand("gps", "force_xtra_injection", null);
                H.sendExtraCommand("gps", "force_time_injection", null);
            }
            catch (Exception exception)
            {
                return false;
            }
            flag = true;
        }
        return flag;
    }

    static boolean a(LBSManager lbsmanager)
    {
        lbsmanager.J = false;
        return false;
    }

    private void b()
    {
        O.stopTimer();
        K = true;
    }

    public static void setLocationCache(float f, float f1, int i, int j)
    {
        if (i == 0)
        {
            return;
        }
        Log.v("MicroMsg.LBSManager", (new StringBuilder("setLocationCache [")).append(f).append(",").append(f1).append("] acc:").append(i).append(" source:").append(j).toString());
        if (F == null)
        {
            F = new LocationCache();
        }
        F.Q = f;
        F.R = f1;
        F.S = i;
        F.time = System.currentTimeMillis();
        F.T = j;
    }

    public String getTelLocation()
    {
        return PhoneUtil.getCellXml(PhoneUtil.getCellInfoList(q));
    }

    public String getWIFILocation()
    {
        Object obj = (WifiManager)q.getSystemService("wifi");
        if (obj == null)
        {
            Log.e("MicroMsg.LBSManager", "no wifi service");
            return "";
        }
        if (((WifiManager) (obj)).getConnectionInfo() == null)
        {
            Log.e("MicroMsg.LBSManager", "WIFILocation wifi info null");
            return "";
        }
        LinkedList linkedlist = new LinkedList();
        obj = ((WifiManager) (obj)).getScanResults();
        if (obj != null)
        {
            for (int i = 0; i < ((List) (obj)).size(); i++)
            {
                linkedlist.add(new PhoneUtil.MacInfo(((ScanResult)((List) (obj)).get(i)).BSSID, (new StringBuilder()).append(((ScanResult)((List) (obj)).get(i)).level).toString()));
            }

        }
        return PhoneUtil.getMacXml(linkedlist);
    }

    public boolean isGpsEnable()
    {
        boolean flag;
        try
        {
            flag = H.isProviderEnabled("gps");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return flag;
    }

    public boolean isNetworkPrividerEnable()
    {
        boolean flag;
        try
        {
            flag = H.isProviderEnabled("network");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return flag;
    }

    public void onReceive(Context context, Intent intent)
    {
        context = (Location)intent.getExtras().get("location");
        N = N + 1;
        if (context != null)
        {
            boolean flag = "gps".equals(context.getProvider());
            if ((flag && context.getAccuracy() <= 200F || !flag && context.getAccuracy() <= 1000F) && context.getAccuracy() > 0.0F)
            {
                int i;
                if (flag)
                {
                    i = 0;
                } else
                {
                    i = 1;
                }
                setLocationCache((float)context.getLatitude(), (float)context.getLongitude(), (int)context.getAccuracy(), i);
                if (G != null && (!K || !L || !M))
                {
                    intent = Util.nullAsNil(getWIFILocation());
                    String s = Util.nullAsNil(getTelLocation());
                    if (!K)
                    {
                        b();
                        K = true;
                        Log.v("MicroMsg.LBSManager", (new StringBuilder("location by provider ok:[")).append(context.getLatitude()).append(" , ").append(context.getLongitude()).append("]  accuracy:").append(context.getAccuracy()).append("  retry count:").append(N).append(" isGpsProvider:").append(flag).toString());
                        G.onLocationGot((float)context.getLatitude(), (float)context.getLongitude(), (int)context.getAccuracy(), i, intent, s, true);
                    } else
                    {
                        if (!L && i == 0)
                        {
                            L = true;
                            Log.v("MicroMsg.LBSManager", (new StringBuilder("report location by GPS ok:[")).append(context.getLatitude()).append(" , ").append(context.getLongitude()).append("]  accuracy:").append(context.getAccuracy()).append("  retry count:").append(N).append(" isGpsProvider:").append(flag).toString());
                            G.onLocationGot((float)context.getLatitude(), (float)context.getLongitude(), (int)context.getAccuracy(), 3, intent, s, true);
                            return;
                        }
                        if (!M && i == 1)
                        {
                            M = true;
                            Log.v("MicroMsg.LBSManager", (new StringBuilder("report location by Network ok:[")).append(context.getLatitude()).append(" , ").append(context.getLongitude()).append("]  accuracy:").append(context.getAccuracy()).append("  retry count:").append(N).append(" isGpsProvider:").append(flag).toString());
                            G.onLocationGot((float)context.getLatitude(), (float)context.getLongitude(), (int)context.getAccuracy(), 4, intent, s, true);
                            return;
                        }
                    }
                }
            }
        }
    }

    public void removeGpsUpdate()
    {
        Log.v("MicroMsg.LBSManager", "removed gps update");
        if (H != null)
        {
            H.removeUpdates(I);
        }
        try
        {
            q.unregisterReceiver(this);
            return;
        }
        catch (Exception exception)
        {
            Log.v("MicroMsg.LBSManager", "location receiver has already unregistered");
        }
    }

    public void removeListener()
    {
        Log.v("MicroMsg.LBSManager", "removed gps update on destroy");
        removeGpsUpdate();
        if (O != null)
        {
            b();
        }
        G = null;
        q = null;
        O = null;
        H = null;
    }

    public void requestGpsUpdate()
    {
        requestGpsUpdate(500);
    }

    public void requestGpsUpdate(int i)
    {
        if (isGpsEnable() || isNetworkPrividerEnable())
        {
            IntentFilter intentfilter;
            if (i <= 0)
            {
                i = 500;
            }
            Log.v("MicroMsg.LBSManager", "requested gps update");
            intentfilter = new IntentFilter();
            intentfilter.addAction("filter_gps");
            q.registerReceiver(this, intentfilter);
            if (isGpsEnable())
            {
                H.requestLocationUpdates("gps", i, 0.0F, I);
            }
            if (isNetworkPrividerEnable())
            {
                H.requestLocationUpdates("network", i, 0.0F, I);
                return;
            }
        }
    }

    public void resetForContinueGetLocation()
    {
        L = false;
        M = false;
    }

    public void start()
    {
        String s;
        String s1;
        s = Util.nullAsNil(getWIFILocation());
        s1 = Util.nullAsNil(getTelLocation());
        boolean flag;
        if (isGpsEnable() || isNetworkPrividerEnable())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag || J) goto _L2; else goto _L1
_L1:
        J = true;
        N = 0;
        requestGpsUpdate();
        O.startTimer(3000L);
_L4:
        return;
_L2:
        boolean flag1;
        if (F == null)
        {
            flag1 = false;
        } else
        if (System.currentTimeMillis() - F.time > 0x2bf20L || F.S <= 0)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (G != null)
        {
            K = true;
            Log.v("MicroMsg.LBSManager", (new StringBuilder("location by GPS cache ok:[")).append(F.Q).append(" , ").append(F.R).append("]  accuracy:").append(F.S).append(" source:").append(F.T).toString());
            G.onLocationGot(F.Q, F.R, F.S, F.T, s, s1, true);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        K = true;
        if (!s.equals("") || !s1.equals(""))
        {
            break; /* Loop/switch isn't completed */
        }
        Log.v("MicroMsg.LBSManager", "get location by network failed");
        if (G != null)
        {
            G.onLocationGot(-1000F, -1000F, -1000, 0, "", "", false);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
        Log.v("MicroMsg.LBSManager", (new StringBuilder("get location by network ok, macs : ")).append(s).append(" cell ids :").append(s1).toString());
        if (G != null)
        {
            G.onLocationGot(-1000F, -1000F, -1000, 0, s, s1, true);
            return;
        }
        if (true) goto _L4; else goto _L6
_L6:
    }

    private class _cls1
        implements MTimerHandler.CallBack
    {

        final LBSManager P;

        public boolean onTimerExpired()
        {
            Log.v("MicroMsg.LBSManager", "get location by GPS failed.");
            P.K = true;
            P.start();
            LBSManager.a(P);
            return false;
        }

        _cls1()
        {
            P = LBSManager.this;
            super();
        }
    }

}
