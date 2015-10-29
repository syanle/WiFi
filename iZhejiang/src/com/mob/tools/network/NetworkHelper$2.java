// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.network;

import com.mob.tools.utils.Hashon;
import java.util.HashMap;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.mob.tools.network:
//            HttpResponseCallback, NetworkHelper

class val.tmpMap
    implements HttpResponseCallback
{

    final NetworkHelper this$0;
    final HashMap val$tmpMap;

    public void onResponse(HttpResponse httpresponse)
        throws Throwable
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        val$tmpMap.put("status", Integer.valueOf(i));
        if (i == 200 || i == 201)
        {
            val$tmpMap.put("resp", EntityUtils.toString(httpresponse.getEntity(), "utf-8"));
            return;
        } else
        {
            httpresponse = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
            HashMap hashmap = new HashMap();
            hashmap.put("error", httpresponse);
            hashmap.put("status", Integer.valueOf(i));
            val$tmpMap.put("resp", (new Hashon()).fromHashMap(hashmap));
            return;
        }
    }

    back()
    {
        this$0 = final_networkhelper;
        val$tmpMap = HashMap.this;
        super();
    }
}
