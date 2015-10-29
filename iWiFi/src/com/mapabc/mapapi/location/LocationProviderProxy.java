// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.location;

import android.location.Criteria;
import android.location.LocationManager;
import android.location.LocationProvider;

public class LocationProviderProxy
{

    public static final int AVAILABLE = 2;
    public static final String MapABCNetwork = "lbs";
    public static final int OUT_OF_SERVICE = 0;
    public static final int TEMPORARILY_UNAVAILABLE = 1;
    private LocationManager a;
    private String b;

    protected LocationProviderProxy(LocationManager locationmanager, String s)
    {
        a = locationmanager;
        b = s;
    }

    private LocationProvider a()
    {
        return a.getProvider(b);
    }

    static LocationProviderProxy a(LocationManager locationmanager, String s)
    {
        return new LocationProviderProxy(locationmanager, s);
    }

    public int getAccuracy()
    {
        if ("lbs".equals(b))
        {
            return 2;
        } else
        {
            return a().getAccuracy();
        }
    }

    public String getName()
    {
        if ("lbs".equals(b))
        {
            return "lbs";
        } else
        {
            return a().getName();
        }
    }

    public int getPowerRequirement()
    {
        if ("lbs".equals(b))
        {
            return 2;
        } else
        {
            return a().getPowerRequirement();
        }
    }

    public boolean hasMonetaryCost()
    {
        if ("lbs".equals(b))
        {
            return false;
        } else
        {
            return a().hasMonetaryCost();
        }
    }

    public boolean meetsCriteria(Criteria criteria)
    {
        if ("lbs".equals(b))
        {
            while (criteria == null || !criteria.isAltitudeRequired() && !criteria.isBearingRequired() && !criteria.isSpeedRequired() && criteria.getAccuracy() != 1) 
            {
                return true;
            }
            return false;
        } else
        {
            return a().meetsCriteria(criteria);
        }
    }

    public boolean requiresCell()
    {
        if ("lbs".equals(b))
        {
            return true;
        } else
        {
            return a().requiresCell();
        }
    }

    public boolean requiresNetwork()
    {
        if ("lbs".equals(b))
        {
            return true;
        } else
        {
            return a().requiresNetwork();
        }
    }

    public boolean requiresSatellite()
    {
        if ("lbs".equals(b))
        {
            return false;
        } else
        {
            return a().requiresNetwork();
        }
    }

    public boolean supportsAltitude()
    {
        if ("lbs".equals(b))
        {
            return false;
        } else
        {
            return a().supportsAltitude();
        }
    }

    public boolean supportsBearing()
    {
        if ("lbs".equals(b))
        {
            return false;
        } else
        {
            return a().supportsBearing();
        }
    }

    public boolean supportsSpeed()
    {
        if ("lbs".equals(b))
        {
            return false;
        } else
        {
            return a().supportsSpeed();
        }
    }
}
