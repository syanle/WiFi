// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.geocoder;

import android.app.Activity;
import android.content.Context;
import android.location.Address;
import com.mapabc.mapapi.core.MapAbcException;
import com.mapabc.mapapi.core.ReverseGeocodingProtoBufHandler;
import com.mapabc.mapapi.core.c;
import com.mapabc.mapapi.core.e;
import com.mapabc.mapapi.core.k;
import com.mapabc.mapapi.core.l;
import com.mapabc.mapapi.core.x;
import com.mapabc.mapapi.core.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mapabc.mapapi.geocoder:
//            GeocodingProtoBufHandler, b, a

public final class Geocoder
{

    public static final String Cross = "Cross";
    public static final String POI = "POI";
    public static final String Street_Road = "StreetAndRoad";
    private String a;
    private String b;
    private Context c;

    public Geocoder(Activity activity)
    {
        try
        {
            if (Class.forName("com.mapabc.mapapi.map.MapActivity").isInstance(activity))
            {
                a = e.b();
            }
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new RuntimeException("\u5FC5\u987B\u4F20\u5165MapActivity\u7684\u5B9E\u4F8B");
        }
        a(activity, a, e.a(activity));
    }

    public Geocoder(Context context, String s)
    {
        a(context, s, e.a(context));
    }

    private List a(double d, double d1, int i, boolean flag)
        throws MapAbcException
    {
        if (e.a)
        {
            if (d < e.a(0xf4240L) || d > e.a(0x3dfd240L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException latitude == ").append(d).toString());
            }
            if (d1 < e.a(0x2faf080L) || d1 > e.a(0x8a48640L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException longitude == ").append(d1).toString());
            }
        }
        if (i <= 0)
        {
            return new ArrayList();
        }
        if (c.a)
        {
            return (List)(new ReverseGeocodingProtoBufHandler(new y(d1, d, i, flag), e.b(c), a, b, null)).GetData();
        } else
        {
            return (List)(new x(new y(d1, d, i, flag), e.b(c), a, b, null)).GetData();
        }
    }

    private List a(List list, double d, double d1, double d2, 
            double d3, int i)
    {
        ArrayList arraylist = null;
        if (list != null)
        {
            arraylist = new ArrayList();
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                Address address = (Address)list.next();
                double d4 = address.getLongitude();
                double d5 = address.getLatitude();
                if (d4 <= d3 && d4 >= d1 && d5 <= d2 && d5 >= d && arraylist.size() < i)
                {
                    arraylist.add(address);
                }
            } while (true);
        }
        return arraylist;
    }

    private void a(Context context, String s, String s1)
    {
        c = context;
        a = s;
        b = s1;
    }

    public List getFromLocation(double d, double d1, int i)
        throws MapAbcException
    {
        return a(d, d1, i, false);
    }

    public List getFromLocationName(String s, int i)
        throws MapAbcException
    {
        return getFromLocationName(s, i, e.a(0xf4240L), e.a(0x2faf080L), e.a(0x3dfd240L), e.a(0x8a48640L));
    }

    public List getFromLocationName(String s, int i, double d, double d1, double d2, double d3)
        throws MapAbcException
    {
        if (s == null)
        {
            throw new IllegalArgumentException("locationName == null");
        }
        if (e.a)
        {
            if (d < e.a(0xf4240L) || d > e.a(0x3dfd240L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException lowerLeftLatitude == ").append(d).toString());
            }
            if (d1 < e.a(0x2faf080L) || d1 > e.a(0x8a48640L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException lowerLeftLongitude == ").append(d1).toString());
            }
            if (d2 < e.a(0xf4240L) || d2 > e.a(0x3dfd240L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException upperRightLatitude == ").append(d2).toString());
            }
            if (d3 < e.a(0x2faf080L) || d3 > e.a(0x8a48640L))
            {
                throw new MapAbcException((new StringBuilder()).append("\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException upperRightLongitude == ").append(d3).toString());
            }
        }
        Object obj;
        if (i <= 0)
        {
            obj = new ArrayList();
        } else
        {
            if (c.a)
            {
                s = (List)(new GeocodingProtoBufHandler(new b(s, 15), e.b(c), a, b, null)).GetData();
            } else
            {
                s = (List)(new a(new b(s, 15), e.b(c), a, b, null)).GetData();
            }
            obj = s;
            if (e.a)
            {
                return a(s, d, d1, d2, d3, i);
            }
        }
        return ((List) (obj));
    }

    public List getFromRawGpsLocation(double d, double d1, int i)
        throws MapAbcException
    {
        com.mapabc.mapapi.core.GeoPoint.b b1;
        b1 = new com.mapabc.mapapi.core.GeoPoint.b(d1, d);
        if (!c.a)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        b1 = (com.mapabc.mapapi.core.GeoPoint.b)(new k(b1, e.b(c), a, b, null)).GetData();
_L1:
        if (b1 != null)
        {
            try
            {
                d1 = b1.a;
                d = b1.b;
            }
            catch (Exception exception)
            {
                return new ArrayList();
            }
        }
        if (Double.valueOf(0.0D).doubleValue() == d1 && Double.valueOf(0.0D).doubleValue() == d)
        {
            return null;
        } else
        {
            return a(d, d1, i, false);
        }
        b1 = (com.mapabc.mapapi.core.GeoPoint.b)(new l(b1, e.b(c), a, b, null)).GetData();
          goto _L1
    }
}
