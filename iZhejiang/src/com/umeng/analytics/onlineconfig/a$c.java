// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import org.json.JSONObject;
import u.aly.bq;
import u.aly.br;
import u.aly.bx;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            a

class a extends bx
{

    final a a;
    private final String e = "http://oc.umeng.com/v2/get_update_time";
    private JSONObject f;

    private JSONObject a(Context context)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("appkey", AnalyticsConfig.getAppkey(context));
            jsonobject.put("version_code", bq.c(context));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            br.b("MobclickAgent", "exception in onlineConfigInternal");
            return null;
        }
        return jsonobject;
    }

    public JSONObject a()
    {
        return f;
    }

    public String b()
    {
        return d;
    }

    public (a a1, Context context)
    {
        a = a1;
        super(null);
        d = "http://oc.umeng.com/v2/get_update_time";
        f = a(context);
    }
}
