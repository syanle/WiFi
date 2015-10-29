// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import com.umeng.analytics.g;
import com.umeng.common.Log;
import com.umeng.common.net.t;
import org.json.JSONObject;

public class b extends t
{

    public JSONObject a;
    boolean b;
    int c;
    int d;
    String e;
    private final String f = "config_update";
    private final String g = "report_policy";
    private final String h = "online_params";
    private final String i = "last_config_time";
    private final String j = "report_interval";

    public b(JSONObject jsonobject)
    {
        super(jsonobject);
        a = null;
        b = false;
        c = -1;
        d = -1;
        if (jsonobject == null)
        {
            return;
        } else
        {
            a(jsonobject);
            a();
            return;
        }
    }

    private void a()
    {
        if (c < 0 || c > 6)
        {
            c = 1;
        }
        if (c == 6 && d <= 0)
        {
            d = g.h;
        }
    }

    private void a(JSONObject jsonobject)
    {
        if (!jsonobject.has("config_update"))
        {
            break MISSING_BLOCK_LABEL_106;
        }
        if (jsonobject.getString("config_update").toLowerCase().equals("no"))
        {
            return;
        }
        if (!jsonobject.has("report_policy"))
        {
            break MISSING_BLOCK_LABEL_96;
        }
        c = jsonobject.getInt("report_policy");
        d = jsonobject.optInt("report_interval") * 1000;
        e = jsonobject.optString("last_config_time");
_L1:
        a = jsonobject.optJSONObject("online_params");
        b = true;
        return;
        try
        {
            Log.e("MobclickAgent", " online config fetch no report policy");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            Log.e("MobclickAgent", "fail to parce online config response", jsonobject);
            return;
        }
          goto _L1
    }
}
