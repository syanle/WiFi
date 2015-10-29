// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.mapabc.mapapi.core.e;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.location:
//            a, c, LocationProviderProxy

public class LocationManagerProxy
{
    class a
        implements LocationListener
    {

        final LocationManagerProxy a;

        public void onLocationChanged(Location location)
        {
            if (LocationManagerProxy.c(a) && LocationManagerProxy.d(a).size() > 0)
            {
                double d1 = location.getLatitude();
                double d2 = location.getLongitude();
                double d3 = com.mapabc.mapapi.location.LocationManagerProxy.e(a);
                double d4 = com.mapabc.mapapi.location.LocationManagerProxy.e(a);
                double d5 = LocationManagerProxy.f(a);
                d1 = Math.abs((d1 - d4) * (d1 - d3) + (d2 - LocationManagerProxy.f(a)) * (d2 - d5));
                Iterator iterator = LocationManagerProxy.d(a).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    PendingIntent pendingintent = (PendingIntent)iterator.next();
                    if (com.mapabc.mapapi.core.e.c() > LocationManagerProxy.g(a) && LocationManagerProxy.g(a) != 0L)
                    {
                        a.removeProximityAlert(pendingintent);
                    } else
                    if (Math.abs(d1 - LocationManagerProxy.h(a) * LocationManagerProxy.h(a)) < 0.5D)
                    {
                        Intent intent = new Intent();
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("location", location);
                        intent.putExtras(bundle);
                        try
                        {
                            pendingintent.send(LocationManagerProxy.b(a), 0, intent);
                        }
                        catch (android.app.PendingIntent.CanceledException canceledexception)
                        {
                            canceledexception.printStackTrace();
                        }
                    }
                } while (true);
            }
        }

        public void onProviderDisabled(String s)
        {
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i1, Bundle bundle)
        {
        }

        a()
        {
            a = LocationManagerProxy.this;
            super();
        }
    }

    class b
        implements LocationListener
    {

        final LocationManagerProxy a;

        public void onLocationChanged(Location location)
        {
            if (LocationManagerProxy.a(a) != null && LocationManagerProxy.a(a).size() > 0)
            {
                for (Iterator iterator = LocationManagerProxy.a(a).iterator(); iterator.hasNext();)
                {
                    PendingIntent pendingintent = (PendingIntent)iterator.next();
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("location", location);
                    intent.putExtras(bundle);
                    try
                    {
                        pendingintent.send(LocationManagerProxy.b(a), 0, intent);
                    }
                    catch (android.app.PendingIntent.CanceledException canceledexception)
                    {
                        canceledexception.printStackTrace();
                    }
                }

            }
        }

        public void onProviderDisabled(String s)
        {
        }

        public void onProviderEnabled(String s)
        {
        }

        public void onStatusChanged(String s, int i1, Bundle bundle)
        {
        }

        b()
        {
            a = LocationManagerProxy.this;
            super();
        }
    }


    public static final String GPS_PROVIDER = "gps";
    public static final String KEY_LOCATION_CHANGED = "location";
    public static final String KEY_PROVIDER_ENABLED = "providerEnabled";
    public static final String KEY_PROXIMITY_ENTERING = "entering";
    public static final String KEY_STATUS_CHANGED = "status";
    public static final String NETWORK_PROVIDER = "network";
    private static LocationManagerProxy b = null;
    private LocationManager a;
    private com.mapabc.mapapi.location.a c;
    private Context d;
    private c e;
    private b f;
    private ArrayList g;
    private Hashtable h;
    private String i;
    private double j;
    private double k;
    private boolean l;
    private long m;
    private double n;
    private c o;
    private a p;
    private ArrayList q;

    private LocationManagerProxy(Activity activity)
    {
        String s = null;
        super();
        a = null;
        c = null;
        g = new ArrayList();
        h = new Hashtable();
        l = false;
        m = 0L;
        n = 0.0D;
        q = new ArrayList();
        try
        {
            if (Class.forName("com.mapabc.mapapi.map.MapActivity").isInstance(activity))
            {
                s = com.mapabc.mapapi.core.e.b();
            }
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new RuntimeException("\u5FC5\u987B\u4F20\u5165MapActivity\u7684\u5B9E\u4F8B");
        }
        a(activity.getApplicationContext(), s, com.mapabc.mapapi.core.e.a(activity.getApplicationContext()));
    }

    private LocationManagerProxy(Context context, String s)
    {
        a = null;
        c = null;
        g = new ArrayList();
        h = new Hashtable();
        l = false;
        m = 0L;
        n = 0.0D;
        q = new ArrayList();
        a(context, s, com.mapabc.mapapi.core.e.a(context));
    }

    static ArrayList a(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.g;
    }

    private void a(Context context, String s, String s1)
    {
        d = context;
        a = (LocationManager)context.getSystemService("location");
        c = com.mapabc.mapapi.location.a.a(context.getApplicationContext(), a);
        (new Thread(c)).start();
    }

    static Context b(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.d;
    }

    static boolean c(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.l;
    }

    static ArrayList d(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.q;
    }

    static double e(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.j;
    }

    static double f(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.k;
    }

    static long g(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.m;
    }

    public static LocationManagerProxy getInstance(Activity activity)
    {
        com/mapabc/mapapi/location/LocationManagerProxy;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new LocationManagerProxy(activity);
        }
        activity = b;
        com/mapabc/mapapi/location/LocationManagerProxy;
        JVM INSTR monitorexit ;
        return activity;
        activity;
        throw activity;
    }

    public static LocationManagerProxy getInstance(Context context, String s)
    {
        com/mapabc/mapapi/location/LocationManagerProxy;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new LocationManagerProxy(context, s);
        }
        context = b;
        com/mapabc/mapapi/location/LocationManagerProxy;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    static double h(LocationManagerProxy locationmanagerproxy)
    {
        return locationmanagerproxy.n;
    }

    public boolean addGpsStatusListener(android.location.GpsStatus.Listener listener)
    {
        if (a != null)
        {
            return a.addGpsStatusListener(listener);
        } else
        {
            return false;
        }
    }

    public void addProximityAlert(double d1, double d2, float f1, long l1, 
            PendingIntent pendingintent)
    {
        if ("lbs".equals(i))
        {
            if (o == null)
            {
                o = new c(this);
            }
            if (p == null)
            {
                p = new a();
            }
            o.a(p, 10000L, f1, i);
            l = true;
            j = d1;
            k = d2;
            n = f1;
            if (l1 != -1L)
            {
                m = com.mapabc.mapapi.core.e.c() + l1;
            }
            q.add(pendingintent);
        } else
        if (a != null)
        {
            a.addProximityAlert(d1, d2, f1, l1, pendingintent);
            return;
        }
    }

    public void addTestProvider(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4, boolean flag5, 
            boolean flag6, int i1, int j1)
    {
        if (a != null)
        {
            a.addTestProvider(s, flag, flag1, flag2, flag3, flag4, flag5, flag6, i1, j1);
        }
    }

    public void clearTestProviderEnabled(String s)
    {
        if (a != null)
        {
            a.clearTestProviderEnabled(s);
        }
    }

    public void clearTestProviderLocation(String s)
    {
        if (a != null)
        {
            a.clearTestProviderLocation(s);
        }
    }

    public void clearTestProviderStatus(String s)
    {
        if (a != null)
        {
            a.clearTestProviderStatus(s);
        }
    }

    public void destory()
    {
        if (c != null)
        {
            c.a();
        }
        if (h != null)
        {
            h.clear();
        }
        if (g != null)
        {
            g.clear();
        }
        if (q != null)
        {
            q.clear();
        }
        h = null;
        g = null;
        q = null;
        c = null;
        b = null;
    }

    public List getAllProviders()
    {
        List list = a.getAllProviders();
        if (list != null)
        {
            if (!list.contains("lbs"))
            {
                list.add("lbs");
            }
            return list;
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add("lbs");
            arraylist.addAll(a.getAllProviders());
            return arraylist;
        }
    }

    public String getBestProvider(Criteria criteria, boolean flag)
    {
        String s = "lbs";
        String s1;
        if (criteria == null)
        {
            s1 = s;
        } else
        {
            if (!getProvider("lbs").meetsCriteria(criteria))
            {
                s = a.getBestProvider(criteria, flag);
            }
            s1 = s;
            if (flag)
            {
                s1 = s;
                if (!com.mapabc.mapapi.core.e.c(d))
                {
                    return a.getBestProvider(criteria, flag);
                }
            }
        }
        return s1;
    }

    public GpsStatus getGpsStatus(GpsStatus gpsstatus)
    {
        if (a != null)
        {
            return a.getGpsStatus(gpsstatus);
        } else
        {
            return null;
        }
    }

    public Location getLastKnownLocation(String s)
    {
        if ("lbs".equals(s) && c != null)
        {
            i = s;
            return c.b();
        }
        if (a != null)
        {
            return a.getLastKnownLocation(s);
        } else
        {
            return null;
        }
    }

    public LocationProviderProxy getProvider(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("name\u4E0D\u80FD\u4E3A\u7A7A\uFF01");
        }
        if (h.containsKey(s))
        {
            return (LocationProviderProxy)h.get(s);
        } else
        {
            LocationProviderProxy locationproviderproxy = LocationProviderProxy.a(a, s);
            h.put(s, locationproviderproxy);
            return locationproviderproxy;
        }
    }

    public List getProviders(Criteria criteria, boolean flag)
    {
        List list = a.getProviders(criteria, flag);
        if ("lbs".equals(getBestProvider(criteria, flag)))
        {
            list.add("lbs");
        }
        return list;
    }

    public List getProviders(boolean flag)
    {
        List list = a.getProviders(flag);
        Object obj = list;
        if (isProviderEnabled("lbs"))
        {
            obj = list;
            if (list == null)
            {
                obj = new ArrayList();
            }
            ((List) (obj)).add("lbs");
        }
        return ((List) (obj));
    }

    public boolean isProviderEnabled(String s)
    {
        if ("lbs".equals(s))
        {
            return com.mapabc.mapapi.core.e.c(d);
        } else
        {
            return a.isProviderEnabled(s);
        }
    }

    public void removeGpsStatusListener(android.location.GpsStatus.Listener listener)
    {
        if (a != null)
        {
            a.removeGpsStatusListener(listener);
        }
    }

    public void removeProximityAlert(PendingIntent pendingintent)
    {
        if ("lbs".equals(i))
        {
            if (o != null)
            {
                o.a();
            }
            q.remove(pendingintent);
            o = null;
            l = false;
            m = 0L;
            n = 0.0D;
            j = 0.0D;
            k = 0.0D;
        } else
        if (a != null)
        {
            a.removeProximityAlert(pendingintent);
            return;
        }
    }

    public void removeUpdates(PendingIntent pendingintent)
    {
        if (e != null)
        {
            g.remove(pendingintent);
            e.a();
        }
        e = null;
        a.removeUpdates(pendingintent);
    }

    public void removeUpdates(LocationListener locationlistener)
    {
        if (locationlistener != null)
        {
            if (a != null)
            {
                a.removeUpdates(locationlistener);
            }
            if (c != null)
            {
                c.a(locationlistener);
            }
        }
    }

    public void requestLocationUpdates(String s, long l1, float f1, PendingIntent pendingintent)
    {
        if ("lbs".equals(s))
        {
            if (e == null)
            {
                e = new c(this);
            }
            if (f == null)
            {
                f = new b();
            }
            e.a(f, l1, f1);
            g.add(pendingintent);
            return;
        } else
        {
            a.requestLocationUpdates(s, l1, f1, pendingintent);
            return;
        }
    }

    public void requestLocationUpdates(String s, long l1, float f1, LocationListener locationlistener)
    {
        i = s;
        if ("lbs".equals(s) && c != null)
        {
            c.a(s, l1, f1, locationlistener);
            return;
        }
        if ("gps".equals(s) && c != null)
        {
            c.a(s, l1, f1, locationlistener);
            return;
        } else
        {
            a.requestLocationUpdates(s, l1, f1, locationlistener);
            return;
        }
    }

}
