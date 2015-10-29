// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.sug;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.sug:
//            SuggestionResult

public class a
{

    public static SuggestionResult a(String s)
    {
        SuggestionResult suggestionresult = new SuggestionResult();
        if (s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        suggestionresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
_L6:
        return suggestionresult;
_L2:
        JSONArray jsonarray;
        Object obj;
        ArrayList arraylist;
        SuggestionResult.SuggestionInfo suggestioninfo;
        int i;
        int j;
        try
        {
            obj = new JSONObject(s);
            s = ((JSONObject) (obj)).optJSONArray("cityname");
            jsonarray = ((JSONObject) (obj)).optJSONArray("poiname");
            obj = ((JSONObject) (obj)).optJSONArray("districtname");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            suggestionresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return suggestionresult;
        }
        if (jsonarray == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (jsonarray.length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist = new ArrayList();
        suggestionresult.a(arraylist);
        j = jsonarray.length();
        i = 0;
_L4:
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        suggestioninfo = new SuggestionResult.SuggestionInfo();
        suggestioninfo.city = s.optString(i);
        suggestioninfo.key = jsonarray.optString(i);
        suggestioninfo.district = ((JSONArray) (obj)).optString(i);
        arraylist.add(suggestioninfo);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }
}
