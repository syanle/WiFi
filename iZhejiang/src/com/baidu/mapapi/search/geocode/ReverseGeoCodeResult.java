// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.SearchResult;
import java.util.List;

public class ReverseGeoCodeResult extends SearchResult
{
    public static class AddressComponent
    {

        public String city;
        public String district;
        public String province;
        public String street;
        public String streetNumber;

        public AddressComponent()
        {
        }
    }


    private String a;
    private String b;
    private AddressComponent c;
    private LatLng d;
    private List e;

    ReverseGeoCodeResult()
    {
    }

    ReverseGeoCodeResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    void a(LatLng latlng)
    {
        d = latlng;
    }

    void a(AddressComponent addresscomponent)
    {
        c = addresscomponent;
    }

    void a(String s)
    {
        a = s;
    }

    void a(List list)
    {
        e = list;
    }

    void b(String s)
    {
        b = s;
    }

    public String getAddress()
    {
        return b;
    }

    public AddressComponent getAddressDetail()
    {
        return c;
    }

    public String getBusinessCircle()
    {
        return a;
    }

    public LatLng getLocation()
    {
        return d;
    }

    public List getPoiList()
    {
        return e;
    }
}
