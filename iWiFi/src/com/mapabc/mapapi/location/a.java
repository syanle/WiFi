// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.autonavi.aps.api.APSFactory;
import com.autonavi.aps.api.IAPS;
import com.mapabc.mapapi.core.e;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.mapabc.mapapi.location:
//            b

public class com.mapabc.mapapi.location.a
    implements Runnable
{
    class a extends Handler
    {

        final com.mapabc.mapapi.location.a a;

        public void handleMessage(Message message)
        {
            if (message.what != com.mapabc.mapapi.location.a.c()) goto _L2; else goto _L1
_L1:
            int j1 = com.mapabc.mapapi.location.a.a(a).size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                b b1 = (b)com.mapabc.mapapi.location.a.a(a).get(i1);
                if (((b)message.obj).equals(b1))
                {
                    b1.c.onLocationChanged(((b)message.obj).f);
                }
            }

              goto _L3
_L2:
            if (message.what != com.mapabc.mapapi.location.a.d()) goto _L5; else goto _L4
_L4:
            if (com.mapabc.mapapi.location.a.b(a) != null)
            {
                com.mapabc.mapapi.location.a.b(a).requestLocationUpdates("gps", com.mapabc.mapapi.location.a.c(a), com.mapabc.mapapi.location.a.d(a), com.mapabc.mapapi.location.a.e(a));
                com.mapabc.mapapi.location.a.a(a, true);
            }
_L3:
            return;
_L5:
            if (message.what != com.mapabc.mapapi.location.a.e())
            {
                continue; /* Loop/switch isn't completed */
            }
            message = (b)message.obj;
            if (!com.mapabc.mapapi.location.a.a(a).contains(message))
            {
                com.mapabc.mapapi.location.a.a(a).add(message);
                return;
            }
            continue; /* Loop/switch isn't completed */
            if (message.what != com.mapabc.mapapi.location.a.f()) goto _L3; else goto _L6
_L6:
            message = (LocationListener)message.obj;
            Iterator iterator = com.mapabc.mapapi.location.a.a(a).iterator();
            while (iterator.hasNext()) 
            {
                if (message.equals(((b)iterator.next()).c))
                {
                    iterator.remove();
                }
            }
            if (true) goto _L3; else goto _L7
_L7:
        }

        a()
        {
            a = com.mapabc.mapapi.location.a.this;
            super();
        }
    }

    public static class b
    {

        public long a;
        public float b;
        public LocationListener c;
        public long d;
        public boolean e;
        public Location f;

        public boolean equals(Object obj)
        {
            if (this != obj) goto _L2; else goto _L1
_L1:
            return true;
_L2:
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            obj = (b)obj;
            if (c != null)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (((b) (obj)).c == null) goto _L1; else goto _L3
_L3:
            return false;
            if (c.equals(((b) (obj)).c)) goto _L1; else goto _L4
_L4:
            return false;
        }

        public int hashCode()
        {
            int i1;
            if (c == null)
            {
                i1 = 0;
            } else
            {
                i1 = c.hashCode();
            }
            return i1 + 31;
        }

        public b(long l1, float f1, LocationListener locationlistener)
        {
            e = true;
            f = null;
            a = l1;
            b = f1;
            c = locationlistener;
        }
    }


    private static com.mapabc.mapapi.location.a b = null;
    private static int f = 100;
    private static int g = 101;
    private static int h = 102;
    private static int i = 103;
    private IAPS a;
    private a c;
    private volatile boolean d;
    private Thread e;
    private ArrayList j;
    private Location k;
    private Context l;
    private LocationManager m;
    private boolean n;
    private Location o;
    private float p;
    private long q;
    private long r;
    private String s;
    private LocationListener t;

    private com.mapabc.mapapi.location.a(Context context, LocationManager locationmanager)
    {
        a = null;
        c = null;
        d = true;
        e = null;
        j = null;
        k = null;
        n = false;
        o = null;
        p = 20F;
        q = 1500L;
        r = 2500L;
        s = "lbs";
        t = new com.mapabc.mapapi.location.b(this);
        l = context;
        m = locationmanager;
        c = new a();
        j = new ArrayList();
        try
        {
            a = APSFactory.getInstance(context.getApplicationContext());
            a.setProductName("autonavi");
            a.setLicence(com.mapabc.mapapi.core.e.a());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    private Location a(com.autonavi.aps.api.Location location)
    {
        Location location1 = new Location("");
        location1.setProvider("lbs");
        location1.setLatitude(location.getCeny());
        location1.setLongitude(location.getCenx());
        location1.setAccuracy((float)location.getRadius());
        Bundle bundle = new Bundle();
        bundle.putString("citycode", location.getCitycode());
        bundle.putString("desc", location.getDesc());
        location1.setExtras(bundle);
        return location1;
    }

    static Location a(com.mapabc.mapapi.location.a a1, Location location)
    {
        a1.o = location;
        return location;
    }

    public static com.mapabc.mapapi.location.a a(Context context, LocationManager locationmanager)
    {
        com/mapabc/mapapi/location/a;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new com.mapabc.mapapi.location.a(context, locationmanager);
        }
        context = b;
        com/mapabc/mapapi/location/a;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    static ArrayList a(com.mapabc.mapapi.location.a a1)
    {
        return a1.j;
    }

    static boolean a(com.mapabc.mapapi.location.a a1, boolean flag)
    {
        a1.n = flag;
        return flag;
    }

    static LocationManager b(com.mapabc.mapapi.location.a a1)
    {
        return a1.m;
    }

    static int c()
    {
        return f;
    }

    static long c(com.mapabc.mapapi.location.a a1)
    {
        return a1.q;
    }

    static float d(com.mapabc.mapapi.location.a a1)
    {
        return a1.p;
    }

    static int d()
    {
        return g;
    }

    static int e()
    {
        return h;
    }

    static LocationListener e(com.mapabc.mapapi.location.a a1)
    {
        return a1.t;
    }

    static int f()
    {
        return i;
    }

    public void a()
    {
        d = false;
        if (e != null)
        {
            e.interrupt();
            Exception exception;
            try
            {
                e.join();
            }
            catch (InterruptedException interruptedexception) { }
        }
        if (m != null)
        {
            m.removeUpdates(t);
        }
        if (c != null)
        {
            c.removeMessages(f);
            c.removeMessages(g);
        }
        if (j != null)
        {
            j.clear();
        }
        if (a != null)
        {
            try
            {
                a.onDestroy();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception) { }
        }
        a = null;
        b = null;
        k = null;
        c = null;
    }

    public void a(LocationListener locationlistener)
    {
        Message message = c.obtainMessage();
        message.what = i;
        message.obj = locationlistener;
        c.sendMessage(message);
    }

    public void a(String s1, long l1, float f1, LocationListener locationlistener)
    {
        s = s1;
        s1 = new b(l1, f1, locationlistener);
        locationlistener = c.obtainMessage();
        locationlistener.what = h;
        locationlistener.obj = s1;
        c.sendMessage(locationlistener);
    }

    public Location b()
    {
        if (k != null)
        {
            return k;
        } else
        {
            return com.mapabc.mapapi.core.e.d(l);
        }
    }

    public void run()
    {
_L13:
        int j1;
        if (!d)
        {
            break MISSING_BLOCK_LABEL_406;
        }
        e = Thread.currentThread();
        j1 = j.size();
        if (!n && m.isProviderEnabled("gps") && s.equals("gps"))
        {
            c.sendEmptyMessage(g);
        }
        ArrayList arraylist = j;
        arraylist;
        JVM INSTR monitorenter ;
        float f1;
        Object obj;
        Object obj1;
        b b1;
        Message message;
        long l1;
        long l2;
        for (int i1 = 0; i1 >= j1; i1++)
        {
            break MISSING_BLOCK_LABEL_384;
        }

        b1 = (b)j.get(i1);
        l2 = com.mapabc.mapapi.core.e.c();
        if (p <= b1.b) goto _L2; else goto _L1
_L1:
        f1 = b1.b;
_L7:
        p = f1;
        if (q <= b1.a) goto _L4; else goto _L3
_L3:
        l1 = b1.a;
_L8:
        q = l1;
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        if (b1.a >= 2500L) goto _L6; else goto _L5
_L5:
        l1 = 2500L;
_L9:
        r = l1;
        if (l2 - b1.d >= b1.a)
        {
            b1.e = true;
        }
        if (!b1.e)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        message = c.obtainMessage();
        if (o == null)
        {
            break MISSING_BLOCK_LABEL_355;
        }
        obj = a.getCurrentLocation(o);
_L10:
        o = null;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_407;
        }
        b1.e = false;
        b1.d = l2;
        obj = a(((com.autonavi.aps.api.Location) (obj)));
        if (!obj.equals(k))
        {
            k = ((Location) (obj));
            b1.f = ((Location) (obj));
            message.what = f;
            message.obj = b1;
            c.sendMessage(message);
            com.mapabc.mapapi.core.e.a(l, ((Location) (obj)));
        }
        break MISSING_BLOCK_LABEL_407;
_L2:
        f1 = p;
          goto _L7
_L4:
        l1 = q;
          goto _L8
_L6:
        l1 = b1.a;
          goto _L9
        obj = a.getCurrentLocation(null);
          goto _L10
        obj1;
        b1.e = true;
        break MISSING_BLOCK_LABEL_407;
        obj1;
        arraylist;
        JVM INSTR monitorexit ;
        throw obj1;
        Thread.sleep(r);
_L11:
        arraylist;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_407;
        obj1;
        Thread.currentThread().interrupt();
          goto _L11
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }


    // Unreferenced inner class com/mapabc/mapapi/location/b
    class com.mapabc.mapapi.location.b
        implements LocationListener
    {

        final com.mapabc.mapapi.location.a a;

        public void onLocationChanged(Location location)
        {
            com.mapabc.mapapi.location.a.a(a, location);
        }

        public void onProviderDisabled(String s1)
        {
        }

        public void onProviderEnabled(String s1)
        {
        }

        public void onStatusChanged(String s1, int i1, Bundle bundle)
        {
        }

            com.mapabc.mapapi.location.b()
            {
                a = com.mapabc.mapapi.location.a.this;
                super();
            }
    }

}
