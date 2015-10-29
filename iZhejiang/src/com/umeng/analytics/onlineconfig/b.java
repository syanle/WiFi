// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import java.util.Locale;
import org.json.JSONObject;
import u.aly.br;
import u.aly.by;

public class b extends by
{

    public JSONObject a;
    boolean b;
    int c;
    int d;
    private final String e = "config_update";
    private final String f = "report_policy";
    private final String g = "online_params";
    private final String h = "report_interval";

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
    }

    private void a(JSONObject jsonobject)
    {
        if (!jsonobject.has("config_update"))
        {
            break MISSING_BLOCK_LABEL_99;
        }
        if (jsonobject.getString("config_update").toLowerCase(Locale.US).equals("no"))
        {
            return;
        }
        if (!jsonobject.has("report_policy"))
        {
            break MISSING_BLOCK_LABEL_89;
        }
        c = jsonobject.getInt("report_policy");
        d = jsonobject.optInt("report_interval") * 1000;
_L1:
        a = jsonobject.optJSONObject("online_params");
        b = true;
        return;
        try
        {
            br.e("MobclickAgent", " online config fetch no report policy");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            br.e("MobclickAgent", "fail to parce online config response", jsonobject);
            return;
        }
          goto _L1
    }
}
