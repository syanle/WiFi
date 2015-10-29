// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.cloud;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.cloud:
//            BaseSearchResult, CloudPoiInfo

public class DetailSearchResult extends BaseSearchResult
{

    public CloudPoiInfo poiInfo;

    public DetailSearchResult()
    {
    }

    void a(JSONObject jsonobject)
        throws JSONException
    {
        super.a(jsonobject);
        jsonobject = jsonobject.optJSONArray("contents");
        if (jsonobject != null)
        {
            if ((jsonobject = jsonobject.optJSONObject(0)) != null)
            {
                poiInfo = new CloudPoiInfo();
                poiInfo.a(jsonobject);
                return;
            }
        }
    }
}
