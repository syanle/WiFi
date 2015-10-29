// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.geocode;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.PoiInfo;
import com.baidu.platform.comapi.a.b;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.geocode:
//            ReverseGeoCodeResult, GeoCodeResult

public class a
{

    private static ReverseGeoCodeResult.AddressComponent a(JSONObject jsonobject, String s)
    {
        if (jsonobject != null && s != null && !"".equals(s))
        {
            if ((jsonobject = jsonobject.optJSONObject(s)) != null)
            {
                s = new ReverseGeoCodeResult.AddressComponent();
                s.city = jsonobject.optString("city");
                s.district = jsonobject.optString("district");
                s.province = jsonobject.optString("province");
                s.street = jsonobject.optString("street");
                s.streetNumber = jsonobject.optString("street_number");
                return s;
            }
        }
        return null;
    }

    public static ReverseGeoCodeResult a(String s)
    {
        ReverseGeoCodeResult reversegeocoderesult = new ReverseGeoCodeResult();
        if (s == null || "".equals(s))
        {
            reversegeocoderesult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return reversegeocoderesult;
        }
        try
        {
            s = new JSONObject(s);
            reversegeocoderesult.b(s.optString("address"));
            reversegeocoderesult.a(s.optString("business"));
            reversegeocoderesult.a(a(((JSONObject) (s)), "addr_detail"));
            reversegeocoderesult.a(b(s, "point"));
            reversegeocoderesult.a(c(s, "surround_poi"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            reversegeocoderesult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return reversegeocoderesult;
        }
        return reversegeocoderesult;
    }

    private static LatLng b(JSONObject jsonobject, String s)
    {
        if (jsonobject != null && s != null && !"".equals(s))
        {
            if ((jsonobject = jsonobject.optJSONObject(s)) != null)
            {
                int i = jsonobject.optInt("x");
                return com.baidu.mapapi.model.a.a(new b(jsonobject.optInt("y"), i));
            }
        }
        return null;
    }

    public static GeoCodeResult b(String s)
    {
        GeoCodeResult geocoderesult;
        geocoderesult = new GeoCodeResult();
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            geocoderesult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            s.printStackTrace();
            return geocoderesult;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        geocoderesult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
        return geocoderesult;
        if (s.optInt("error") == 0)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        geocoderesult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
        return geocoderesult;
        geocoderesult.a(com.baidu.mapapi.model.a.a(new b(s.optInt("y"), s.optInt("x"))));
        geocoderesult.setAddress(s.optString("addr"));
        return geocoderesult;
    }

    private static List c(JSONObject jsonobject, String s)
    {
        if (jsonobject != null && s != null && !"".equals(s))
        {
            if ((jsonobject = jsonobject.optJSONArray(s)) != null)
            {
                s = new ArrayList();
                for (int i = 0; i < jsonobject.length(); i++)
                {
                    JSONObject jsonobject1 = jsonobject.optJSONObject(i);
                    PoiInfo poiinfo = new PoiInfo();
                    poiinfo.address = jsonobject1.optString("addr");
                    poiinfo.phoneNum = jsonobject1.optString("tel");
                    poiinfo.uid = jsonobject1.optString("uid");
                    poiinfo.postCode = jsonobject1.optString("zip");
                    poiinfo.name = jsonobject1.optString("name");
                    poiinfo.location = b(jsonobject1, "point");
                    s.add(poiinfo);
                }

                return s;
            }
        }
        return null;
    }
}
