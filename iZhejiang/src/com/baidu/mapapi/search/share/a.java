// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.mapapi.search.share;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.baidu.mapapi.search.share:
//            ShareUrlResult

public class a
{

    public static ShareUrlResult a(String s)
    {
        ShareUrlResult shareurlresult = new ShareUrlResult();
        if (s != null) goto _L2; else goto _L1
_L1:
        shareurlresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
_L4:
        return shareurlresult;
_L2:
        try
        {
            s = new JSONObject(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            shareurlresult.error = com.baidu.mapapi.search.core.SearchResult.ERRORNO.RESULT_NOT_FOUND;
            return shareurlresult;
        }
        if (s == null) goto _L4; else goto _L3
_L3:
        shareurlresult.a(s.optString("url"));
        shareurlresult.a(s.optInt("type"));
        return shareurlresult;
    }
}
