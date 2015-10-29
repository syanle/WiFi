// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.parase;

import com.cat.data.PublicError;
import com.cat.data.PushListData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PushListParser
{

    public PushListParser()
    {
    }

    public static Object Pushlistparaser(String s)
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
            PushListData pushlistdata;
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
        pushlistdata = new PushListData();
        pushlistdata.setPushid(jsonobject1.getString("pushid"));
        pushlistdata.setTitle(jsonobject1.getString("title"));
        pushlistdata.setMessage(jsonobject1.getString("message"));
        pushlistdata.setDate(jsonobject1.getString("date"));
        pushlistdata.setIsread(jsonobject1.getString("isread"));
        pushlistdata.setType(jsonobject1.getString("type"));
        if (jsonobject1.getString("type").equals("push_url"))
        {
            pushlistdata.setUrl(jsonobject1.getString("url"));
        }
        s.add(pushlistdata);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
