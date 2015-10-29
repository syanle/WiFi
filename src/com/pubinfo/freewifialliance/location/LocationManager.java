// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.location;

import android.content.Context;
import android.location.Address;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.mapabc.mapapi.geocoder.Geocoder;
import com.mapabc.mapapi.location.LocationManagerProxy;
import java.util.List;

// Referenced classes of package com.pubinfo.freewifialliance.location:
//            LocationListenerProxy

public class LocationManager
    implements LocationListener, android.os.Handler.Callback
{

    public static String addressName;
    public static Double geoLat;
    public static Double geoLng;
    private static final float mLocationUpdateMinDistance = 0F;
    private static final long mLocationUpdateMinTime = 1000L;
    private List address;
    private Geocoder coder;
    private Context context;
    private Handler handler;
    private LocationManagerProxy locationManager;
    private int locationType;
    private LocationListenerProxy mLocationListener;
    private Handler m_handler;
    private String maps_api_key;

    public LocationManager(int i, Context context1, Handler handler1)
    {
        locationManager = null;
        mLocationListener = null;
        maps_api_key = "c2b0f58a6f09cafd1503c06ef08ac7aeb7ddb91a0f5e16007f475128bca0d86544b2e9c9c0ecb4bb";
        locationType = 0;
        context = context1;
        m_handler = handler1;
        handler = new Handler(this);
        locationType = i;
        coder = new Geocoder(context1, maps_api_key);
    }

    public void disableMyLocation()
    {
        if (mLocationListener != null)
        {
            mLocationListener.stopListening();
        }
        mLocationListener = null;
    }

    public boolean enableMyLocation()
    {
        boolean flag = true;
        if (mLocationListener == null)
        {
            mLocationListener = new LocationListenerProxy(context, locationManager, locationType);
            flag = mLocationListener.startListening(this, 1000L, 0.0F);
        }
        return flag;
    }

    public void getAddress(double d, double d1)
    {
        (new Thread(new Runnable() {

            final LocationManager this$0;

            public void run()
            {
                try
                {
                    if (address != null || address.size() > 0)
                    {
                        handler.sendMessage(Message.obtain(handler, 2));
                    }
                    return;
                }
                catch (Exception exception)
                {
                    handler.sendMessage(Message.obtain(handler, 3));
                }
            }

            
            {
                this$0 = LocationManager.this;
                super();
            }
        })).start();
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 30
    //                   2 105;
           goto _L1 _L2 _L3
_L1:
        return false;
_L2:
        message = Message.obtain();
        message.what = 993;
        message.obj = (new StringBuilder()).append(geoLng).append("&&").append(geoLat).toString();
        message.arg1 = locationType;
        m_handler.sendMessage(message);
        if (mLocationListener == null) goto _L1; else goto _L4
_L4:
        disableMyLocation();
        return false;
        message;
        return false;
_L3:
        message = (Address)address.get(0);
        message.getPremises();
        addressName = message.getAdminArea();
        if (message.getLocality() != null)
        {
            addressName = (new StringBuilder(String.valueOf(addressName))).append(message.getLocality()).toString();
        }
        if (message.getSubLocality() != null)
        {
            addressName = (new StringBuilder(String.valueOf(addressName))).append(message.getSubLocality()).toString();
        }
        addressName = (new StringBuilder(String.valueOf(addressName))).append(message.getFeatureName()).toString();
        message = Message.obtain();
        message.what = 988;
        message.obj = addressName;
        m_handler.sendMessage(message);
        return false;
    }

    public void onLocationChanged(Location location)
    {
        if (location != null)
        {
            geoLat = Double.valueOf(location.getLatitude());
            geoLng = Double.valueOf(location.getLongitude());
            handler.sendEmptyMessage(1);
        }
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStart()
    {
        locationManager = LocationManagerProxy.getInstance(context, maps_api_key);
        enableMyLocation();
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

    public void onStop()
    {
        disableMyLocation();
    }


}
