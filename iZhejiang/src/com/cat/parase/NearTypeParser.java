// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.parase;

import com.cat.data.BottomData;
import com.cat.data.ComData;
import com.cat.data.MapData;
import com.cat.data.PublicError;
import com.cat.data.TopData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NearTypeParser
{

    public NearTypeParser()
    {
    }

    public static Object Neartypeparaser(String s)
        throws Exception
    {
        Object obj1 = new JSONObject(s);
        if (((JSONObject) (obj1)).getString("result").equals("OK")) goto _L2; else goto _L1
_L1:
        Object obj;
        s = new ArrayList();
        obj = ((JSONObject) (obj1)).getJSONArray("error");
        int i = 0;
_L3:
        if (i >= ((JSONArray) (obj)).length())
        {
            return s;
        }
        JSONObject jsonobject = (JSONObject)((JSONArray) (obj)).opt(i);
        obj1 = new PublicError();
        ((PublicError) (obj1)).setCode(jsonobject.getString("code"));
        ((PublicError) (obj1)).setMessage(jsonobject.getString("message"));
        s.add(obj1);
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        ArrayList arraylist;
        JSONArray jsonarray;
        JSONArray jsonarray1;
        s = new ArrayList();
        obj = new ArrayList();
        arraylist = new ArrayList();
        obj1 = (JSONObject)((JSONObject) (obj1)).getJSONArray("data").opt(0);
        jsonarray1 = ((JSONObject) (obj1)).getJSONArray("mapdata");
        jsonarray = ((JSONObject) (obj1)).getJSONArray("topdata");
        obj1 = ((JSONObject) (obj1)).getJSONArray("buttomdata");
        i = 0;
_L13:
        if (i < jsonarray1.length()) goto _L5; else goto _L4
_L4:
        i = 0;
_L10:
        if (i < jsonarray.length()) goto _L7; else goto _L6
_L6:
        i = 0;
_L11:
        if (i < ((JSONArray) (obj1)).length()) goto _L9; else goto _L8
_L8:
        ComData.getInstance().setMapData(s);
        ComData.getInstance().setTopData(((List) (obj)));
        ComData.getInstance().setBottomData(arraylist);
        return "OK";
_L5:
        JSONObject jsonobject3 = (JSONObject)jsonarray1.opt(i);
        MapData mapdata = new MapData();
        mapdata.setId(jsonobject3.getString("id"));
        mapdata.setName(jsonobject3.getString("name"));
        mapdata.setValue(jsonobject3.getString("value"));
        s.add(mapdata);
        i++;
        continue; /* Loop/switch isn't completed */
_L7:
        JSONObject jsonobject2 = (JSONObject)jsonarray.opt(i);
        TopData topdata = new TopData();
        topdata.setId(jsonobject2.getString("id"));
        topdata.setName(jsonobject2.getString("name"));
        topdata.setValue(jsonobject2.getString("value"));
        topdata.setIconid(jsonobject2.getString("iconid"));
        topdata.setUrl(jsonobject2.getString("url"));
        ((List) (obj)).add(topdata);
        i++;
          goto _L10
_L9:
        JSONObject jsonobject1 = (JSONObject)((JSONArray) (obj1)).opt(i);
        BottomData bottomdata = new BottomData();
        bottomdata.setId(jsonobject1.getString("id"));
        bottomdata.setName(jsonobject1.getString("name"));
        bottomdata.setValue(jsonobject1.getString("value"));
        arraylist.add(bottomdata);
        i++;
          goto _L11
        s;
        s.printStackTrace();
        return "JSONException";
        if (true) goto _L13; else goto _L12
_L12:
    }
}
