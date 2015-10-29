// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseVO
    implements Serializable
{

    public static final int TYPE_BEAN = 0;
    public static final int TYPE_BEAN_LIST = 3;
    public static final int TYPE_JSON = 4;
    public static final int TYPE_LIST = 1;
    public static final int TYPE_OBJECT = 2;
    private static final long serialVersionUID = 0x7176cddcbc364447L;

    public BaseVO()
    {
    }

    public Object analyseBody(JSONArray jsonarray)
        throws JSONException
    {
        return null;
    }

    public Object analyseBody(JSONObject jsonobject)
        throws JSONException
    {
        return null;
    }

    public Map analyseHead(JSONObject jsonobject)
        throws JSONException
    {
        HashMap hashmap = new HashMap();
        JSONArray jsonarray = jsonobject.getJSONArray("result_list");
        int i = jsonobject.getInt("total");
        int j = jsonobject.getInt("p");
        int k = jsonobject.getInt("ps");
        boolean flag = jsonobject.getBoolean("is_last_list");
        hashmap.put("array", jsonarray);
        hashmap.put("total", Integer.valueOf(i));
        hashmap.put("p", Integer.valueOf(j));
        hashmap.put("ps", Integer.valueOf(k));
        hashmap.put("isLastPage", Boolean.valueOf(flag));
        return hashmap;
    }
}
