// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.poi;

import com.baidu.mapapi.search.core.CityInfo;
import com.baidu.mapapi.search.core.PoiInfo;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.poi:
//            PoiResult

class a
{

    public static PoiResult a(String s)
    {
        PoiResult poiresult = new PoiResult();
        if (s == null || "".equals(s))
        {
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
        s = s.optJSONArray("citys");
        if (s != null && s.length() > 0)
        {
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < s.length(); i++)
            {
                JSONObject jsonobject = (JSONObject)s.opt(i);
                CityInfo cityinfo = new CityInfo();
                cityinfo.num = jsonobject.optInt("num");
                cityinfo.city = jsonobject.optString("name");
                arraylist.add(cityinfo);
            }

            if (arraylist.size() > 0)
            {
                poiresult.b(arraylist);
            }
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.AMBIGUOUS_KEYWORD;
            return poiresult;
        } else
        {
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
    }

    public static PoiResult a(String s, int i)
    {
        PoiResult poiresult = new PoiResult();
        if (s == null || s.equals(""))
        {
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
        Object obj;
        int k;
        int l;
        try
        {
            obj = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
        k = ((JSONObject) (obj)).optInt("total");
        l = ((JSONObject) (obj)).optInt("count");
        if (l == 0)
        {
            poiresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return poiresult;
        }
        poiresult.b(k);
        poiresult.d(k);
        poiresult.c(l);
        poiresult.a(i);
        Object obj1;
        if (l != 0)
        {
            int j = k / l;
            JSONObject jsonobject;
            PoiInfo poiinfo;
            JSONObject jsonobject1;
            if (k % l > 0)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            poiresult.b(i + j);
        }
        obj1 = ((JSONObject) (obj)).optJSONObject("current_city");
        s = null;
        if (obj1 != null)
        {
            s = ((JSONObject) (obj1)).optString("name");
        }
        obj = ((JSONObject) (obj)).optJSONArray("pois");
        obj1 = new ArrayList();
        if (obj != null)
        {
            i = 0;
            while (i < ((JSONArray) (obj)).length()) 
            {
                jsonobject = ((JSONArray) (obj)).optJSONObject(i);
                poiinfo = new PoiInfo();
                poiinfo.name = jsonobject.optString("name");
                poiinfo.address = jsonobject.optString("addr");
                poiinfo.uid = jsonobject.optString("uid");
                poiinfo.phoneNum = jsonobject.optString("tel");
                poiinfo.type = com.baidu.mapapi.search.core.PoiInfo.POITYPE.fromInt(jsonobject.optInt("type"));
                boolean flag;
                if (jsonobject.optInt("pano") == 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                poiinfo.isPano = flag;
                if (poiinfo.type != com.baidu.mapapi.search.core.PoiInfo.POITYPE.BUS_LINE && poiinfo.type != com.baidu.mapapi.search.core.PoiInfo.POITYPE.SUBWAY_LINE)
                {
                    poiinfo.location = com.baidu.mapapi.model.a.a(jsonobject.optString("geo"));
                }
                poiinfo.city = s;
                jsonobject1 = jsonobject.optJSONObject("place");
                if (jsonobject1 != null && "cater".equals(jsonobject1.optString("src_name")) && jsonobject.optBoolean("detail"))
                {
                    poiinfo.hasCaterDetails = true;
                }
                ((ArrayList) (obj1)).add(poiinfo);
                i++;
            }
        }
        if (((ArrayList) (obj1)).size() > 0)
        {
            poiresult.a(((List) (obj1)));
        }
        return poiresult;
    }
}
