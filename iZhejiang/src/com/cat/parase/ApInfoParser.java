// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.parase;

import com.cat.data.ApInfoData;
import com.cat.data.PublicError;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ApInfoParser
{

    public ApInfoParser()
    {
    }

    public static Object Apinfoparaser(String s)
        throws Exception
    {
        Object obj;
        obj = new JSONObject(s);
        if (((JSONObject) (obj)).getString("result").equals("OK"))
        {
            break MISSING_BLOCK_LABEL_107;
        }
        s = new ArrayList();
        obj = ((JSONObject) (obj)).getJSONArray("error");
        int i = 0;
        do
        {
            if (i >= ((JSONArray) (obj)).length())
            {
                return s;
            }
            JSONObject jsonobject1;
            ApInfoData apinfodata;
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
        i = 0;
_L2:
        if (i >= ((JSONArray) (obj)).length())
        {
            return s;
        }
        jsonobject1 = (JSONObject)((JSONArray) (obj)).opt(i);
        apinfodata = new ApInfoData();
        apinfodata.setMac(jsonobject1.getString("mac"));
        apinfodata.setName(jsonobject1.getString("name"));
        apinfodata.setConnects(jsonobject1.getString("connects"));
        apinfodata.setLoad(jsonobject1.getString("load"));
        apinfodata.setCurrentconnect(jsonobject1.getString("currentconnect"));
        apinfodata.setNettype(jsonobject1.getString("nettype"));
        apinfodata.setLogo(jsonobject1.getString("logo"));
        apinfodata.setAppraisal(jsonobject1.getString("appraisal"));
        s.add(apinfodata);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
