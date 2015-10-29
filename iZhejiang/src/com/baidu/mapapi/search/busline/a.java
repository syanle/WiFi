// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.busline;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.busline:
//            BusLineResult

public class a
{

    public static BusLineResult a(String s)
    {
        boolean flag = true;
        int i = 0;
        BusLineResult buslineresult = new BusLineResult();
        int j;
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            buslineresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return buslineresult;
        }
        j = s.optInt("count");
        s = s.optJSONArray("details");
        if (s == null || j <= 0)
        {
            buslineresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return buslineresult;
        }
        s = s.optJSONObject(0);
        Object obj = new SimpleDateFormat("HH:mm");
        Object obj1;
        try
        {
            buslineresult.a(((SimpleDateFormat) (obj)).parse(s.optString("starttime")));
            buslineresult.b(((SimpleDateFormat) (obj)).parse(s.optString("endtime")));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((ParseException) (obj)).printStackTrace();
        }
        buslineresult.a(s.optString("name"));
        if (s.optInt("ismonticket") != 1)
        {
            flag = false;
        }
        buslineresult.a(flag);
        buslineresult.b(s.optString("uid"));
        obj = new ArrayList();
        obj1 = com.baidu.mapapi.model.a.d(s.optString("geo"));
        if (obj1 != null)
        {
            BusLineResult.BusStep busstep;
            for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((List) (obj)).add(busstep))
            {
                List list = (List)((Iterator) (obj1)).next();
                busstep = new BusLineResult.BusStep();
                busstep.setWayPoints(list);
            }

        }
        if (((List) (obj)).size() > 0)
        {
            buslineresult.b(((List) (obj)));
        }
        s = s.optJSONArray("stations");
        if (s != null)
        {
            ArrayList arraylist = new ArrayList();
            while (i < s.length()) 
            {
                JSONObject jsonobject = s.optJSONObject(i);
                if (jsonobject != null)
                {
                    BusLineResult.BusStation busstation = new BusLineResult.BusStation();
                    busstation.setTitle(jsonobject.optString("name"));
                    busstation.setLocation(com.baidu.mapapi.model.a.a(jsonobject.optString("geo")));
                    busstation.setUid(jsonobject.optString("uid"));
                    arraylist.add(busstation);
                }
                i++;
            }
            if (arraylist.size() > 0)
            {
                buslineresult.a(arraylist);
            }
        }
        return buslineresult;
    }
}
