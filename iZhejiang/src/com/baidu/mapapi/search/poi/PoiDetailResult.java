// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.SearchResult;
import org.json.JSONException;
import org.json.JSONObject;

public class PoiDetailResult extends SearchResult
{

    int a;
    String b;
    String c;
    LatLng d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    double k;
    double l;
    double m;
    double n;
    double o;
    double p;
    double q;
    double r;
    int s;
    int t;
    int u;
    int v;
    int w;
    String x;

    PoiDetailResult()
    {
    }

    public PoiDetailResult(com.baidu.mapapi.search.core.SearchResult.ERRORNO errorno)
    {
        super(errorno);
    }

    boolean a(String s1)
    {
        boolean flag1 = false;
        JSONObject jsonobject;
        boolean flag;
        try
        {
            s1 = new JSONObject(s1);
            a = s1.optInt("status");
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
            return false;
        }
        flag = flag1;
        if (a != 0)
        {
            break MISSING_BLOCK_LABEL_313;
        }
        b = s1.optString("message");
        s1 = s1.optJSONObject("result");
        flag = flag1;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_313;
        }
        c = s1.optString("name");
        jsonobject = s1.optJSONObject("location");
        d = new LatLng(jsonobject.optDouble("lat"), jsonobject.optDouble("lng"));
        e = s1.optString("address");
        f = s1.optString("telephone");
        g = s1.optString("uid");
        s1 = s1.optJSONObject("detail_info");
        h = s1.optString("tag");
        i = s1.optString("detail_url");
        j = s1.optString("type");
        k = s1.optDouble("price", 0.0D);
        l = s1.optDouble("overall_rating", 0.0D);
        m = s1.optDouble("taste_rating", 0.0D);
        n = s1.optDouble("service_rating", 0.0D);
        o = s1.optDouble("environment_rating", 0.0D);
        p = s1.optDouble("facility_rating", 0.0D);
        q = s1.optDouble("hygiene_rating", 0.0D);
        r = s1.optDouble("technology_rating", 0.0D);
        s = s1.optInt("image_num");
        t = s1.optInt("groupon_num");
        u = s1.optInt("comment_num");
        v = s1.optInt("favorite_num");
        w = s1.optInt("checkin_num");
        x = s1.optString("shop_hours");
        flag = true;
        return flag;
    }

    public String getAddress()
    {
        return e;
    }

    public int getCheckinNum()
    {
        return w;
    }

    public int getCommentNum()
    {
        return u;
    }

    public String getDetailUrl()
    {
        return i;
    }

    public double getEnvironmentRating()
    {
        return o;
    }

    public double getFacilityRating()
    {
        return p;
    }

    public int getFavoriteNum()
    {
        return v;
    }

    public int getGrouponNum()
    {
        return t;
    }

    public double getHygieneRating()
    {
        return q;
    }

    public int getImageNum()
    {
        return s;
    }

    public LatLng getLocation()
    {
        return d;
    }

    public String getName()
    {
        return c;
    }

    public double getOverallRating()
    {
        return l;
    }

    public double getPrice()
    {
        return k;
    }

    public double getServiceRating()
    {
        return n;
    }

    public String getShopHours()
    {
        return x;
    }

    public String getTag()
    {
        return h;
    }

    public double getTasteRating()
    {
        return m;
    }

    public double getTechnologyRating()
    {
        return r;
    }

    public String getTelephone()
    {
        return f;
    }

    public String getType()
    {
        return j;
    }

    public String getUid()
    {
        return g;
    }
}
