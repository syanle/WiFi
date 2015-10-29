// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.mapabc.mapapi.location.LocationManagerProxy;
import com.pubinfo.freewifialliance.view.WelcomePage;
import java.util.Iterator;
import java.util.List;

public class LocationListenerProxy
    implements LocationListener
{

    private Context context;
    private int locationType;
    private LocationListener mListener;
    private LocationManagerProxy mLocationManager;

    public LocationListenerProxy(Context context1, LocationManagerProxy locationmanagerproxy, int i)
    {
        mListener = null;
        locationType = 0;
        mLocationManager = locationmanagerproxy;
        locationType = i;
        context = context1;
    }

    public void onLocationChanged(Location location)
    {
        if (mListener != null)
        {
            mListener.onLocationChanged(location);
        }
    }

    public void onProviderDisabled(String s)
    {
        if (mListener != null)
        {
            mListener.onProviderDisabled(s);
        }
    }

    public void onProviderEnabled(String s)
    {
        if (mListener != null)
        {
            mListener.onProviderEnabled(s);
        }
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        if (mListener != null)
        {
            mListener.onStatusChanged(s, i, bundle);
        }
    }

    public boolean startListening(LocationListener locationlistener, long l, float f)
    {
        mListener = locationlistener;
        locationlistener = mLocationManager.getProviders(true).iterator();
        String s;
label0:
        do
        {
            do
            {
                do
                {
                    if (!locationlistener.hasNext())
                    {
                        return false;
                    }
                    s = (String)locationlistener.next();
                    if (locationType != 1 || WelcomePage.isOPen(context) != 1)
                    {
                        break;
                    }
                    if ("gps".equals(s))
                    {
                        mLocationManager.requestLocationUpdates(s, l, f, this);
                        return true;
                    }
                } while (true);
                if (locationType != 2 || WelcomePage.isOPen(context) != 2)
                {
                    continue label0;
                }
            } while (!"lbs".equals(s));
            mLocationManager.requestLocationUpdates(s, l, f, this);
            return true;
        } while (locationType != 0 || !"gps".equals(s) && !"lbs".equals(s));
        mLocationManager.requestLocationUpdates(s, l, f, this);
        return true;
    }

    public void stopListening()
    {
        try
        {
            mListener = null;
            if (mLocationManager != null)
            {
                mLocationManager.removeUpdates(this);
                mLocationManager.destory();
                mLocationManager = null;
            }
            return;
        }
        catch (Exception exception)
        {
            mLocationManager = null;
        }
    }
}
