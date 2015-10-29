// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.parase;

import com.cat.data.MapCustom;
import com.cat.data.PublicError;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NearBusListParser
{

    public NearBusListParser()
    {
    }

    public static Object Nearbuslistparaser(String s, int i)
        throws Exception
    {
        Object obj;
        obj = new JSONObject(s);
        if (((JSONObject) (obj)).getString("result").equals("OK"))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        s = new ArrayList();
        obj = ((JSONObject) (obj)).getJSONArray("error");
        i = 0;
        do
        {
            if (i >= ((JSONArray) (obj)).length())
            {
                return s;
            }
            JSONObject jsonobject1;
            MapCustom mapcustom;
            try
            {
                JSONObject jsonobject = (JSONObject)((JSONArray) (obj)).opt(i);
                PublicError publicerror = new PublicError();
                publicerror.setCode(jsonobject.getString("code"));
                publicerror.setMessage(jsonobject.getString("message"));
                s.add(publicerror);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return "JSONException";
            }
            i++;
        } while (true);
        s = new ArrayList();
        obj = ((JSONObject) (obj)).getJSONArray("data");
        if (i != 0) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject1 = (JSONObject)((JSONArray) (obj)).opt(i);
        mapcustom = new MapCustom();
        mapcustom.setName(jsonobject1.getString("name"));
        mapcustom.setLat(jsonobject1.getString("lat"));
        mapcustom.setLng(jsonobject1.getString("lng"));
        mapcustom.setBusiness_url(jsonobject1.getString("business_url"));
        mapcustom.setGoods(jsonobject1.getString("goods"));
        mapcustom.setType(jsonobject1.getString("type"));
        s.add(mapcustom);
        i++;
        if (true) goto _L4; else goto _L3
_L8:
        if (i >= ((JSONArray) (obj)).length()) goto _L3; else goto _L5
_L5:
        jsonobject1 = (JSONObject)((JSONArray) (obj)).opt(i);
        mapcustom = new MapCustom();
        mapcustom.setName(jsonobject1.getString("name"));
        mapcustom.setAddress(jsonobject1.getString("address"));
        mapcustom.setS_photo_url(jsonobject1.getString("s_photo_url"));
        mapcustom.setDistance(jsonobject1.getString("distance"));
        mapcustom.setBusiness_url(jsonobject1.getString("business_url"));
        s.add(mapcustom);
        i++;
        continue; /* Loop/switch isn't completed */
_L3:
        return s;
_L2:
        if (i != 1) goto _L3; else goto _L6
_L6:
        i = 0;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
