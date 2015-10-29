// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CloudPoiInfo
{

    public String address;
    public String city;
    public int distance;
    public String district;
    public Map extras;
    public int geotableId;
    public double latitude;
    public double longitude;
    public String province;
    public String tags;
    public String title;
    public int uid;
    public int weight;

    public CloudPoiInfo()
    {
    }

    void a(JSONObject jsonobject)
        throws JSONException
    {
        if (jsonobject != null)
        {
            uid = jsonobject.optInt("uid");
            jsonobject.remove("uid");
            geotableId = jsonobject.optInt("geotable_id");
            jsonobject.remove("geotable_id");
            title = jsonobject.optString("title");
            jsonobject.remove("title");
            address = jsonobject.optString("address");
            jsonobject.remove("address");
            province = jsonobject.optString("province");
            jsonobject.remove("province");
            city = jsonobject.optString("city");
            jsonobject.remove("city");
            district = jsonobject.optString("district");
            jsonobject.remove("district");
            Object obj = jsonobject.optJSONArray("location");
            if (obj != null)
            {
                longitude = ((JSONArray) (obj)).optDouble(0);
                latitude = ((JSONArray) (obj)).optDouble(1);
            }
            jsonobject.remove("location");
            tags = jsonobject.optString("tags");
            jsonobject.remove("tags");
            distance = jsonobject.optInt("distance");
            jsonobject.remove("distance");
            weight = jsonobject.optInt("weight");
            jsonobject.remove("weight");
            extras = new HashMap();
            obj = jsonobject.keys();
            while (((Iterator) (obj)).hasNext()) 
            {
                String s = (String)((Iterator) (obj)).next();
                Object obj1 = jsonobject.opt(s);
                extras.put(s, obj1);
            }
        }
    }
}
