// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseSearchResult, CloudPoiInfo

public class CloudSearchResult extends BaseSearchResult
{

    public List poiList;

    public CloudSearchResult()
    {
    }

    void a(JSONObject jsonobject)
        throws JSONException
    {
        super.a(jsonobject);
        poiList = new ArrayList();
        jsonobject = jsonobject.optJSONArray("contents");
        if (jsonobject != null)
        {
            int i = 0;
            while (i < jsonobject.length()) 
            {
                JSONObject jsonobject1 = jsonobject.optJSONObject(i);
                if (jsonobject1 != null)
                {
                    CloudPoiInfo cloudpoiinfo = new CloudPoiInfo();
                    cloudpoiinfo.a(jsonobject1);
                    poiList.add(cloudpoiinfo);
                }
                i++;
            }
        }
    }
}
