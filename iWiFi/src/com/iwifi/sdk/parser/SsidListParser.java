// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.parser;

import com.iwifi.sdk.data.SsidList;
import org.json.JSONArray;
import org.json.JSONObject;

public class SsidListParser
{

    public SsidListParser()
    {
    }

    public static Object SsidList(String s)
        throws Exception
    {
        SsidList ssidlist = new SsidList();
        JSONObject jsonobject = new JSONObject(s);
        JSONArray jsonarray = jsonobject.getJSONArray("data");
        s = "";
        int i = 0;
        do
        {
            if (i >= jsonarray.length() - 1)
            {
                ssidlist.setData((new StringBuilder(String.valueOf(s))).append(jsonarray.getString(jsonarray.length() - 1)).toString());
                ssidlist.setMsg(jsonobject.getString("msg"));
                ssidlist.setResult(jsonobject.getString("result"));
                ssidlist.setVersion(jsonobject.getString("version"));
                return ssidlist;
            }
            s = (new StringBuilder(String.valueOf(s))).append(jsonarray.getString(i)).append(",").toString();
            i++;
        } while (true);
    }

    public static Object SsidList(String s, String s1, String s2, String s3, String s4)
        throws Exception
    {
        SsidList ssidlist = new SsidList();
        JSONObject jsonobject = new JSONObject(s);
        s3 = jsonobject.getJSONArray(s3);
        s = "";
        int i = 0;
        do
        {
            if (i >= s3.length() - 1)
            {
                ssidlist.setData((new StringBuilder(String.valueOf(s))).append(s3.getString(s3.length() - 1)).toString());
                ssidlist.setMsg(jsonobject.getString(s2));
                ssidlist.setResult(jsonobject.getString(s1));
                ssidlist.setVersion(jsonobject.getString(s4));
                return ssidlist;
            }
            s = (new StringBuilder(String.valueOf(s))).append(s3.getString(i)).append(",").toString();
            i++;
        } while (true);
    }
}
