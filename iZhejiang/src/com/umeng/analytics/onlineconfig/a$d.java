// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.onlineconfig;

import org.json.JSONObject;
import u.aly.br;
import u.aly.by;

// Referenced classes of package com.umeng.analytics.onlineconfig:
//            a

public static class a extends by
{

    public long a;
    public long b;

    private void a(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return;
        }
        try
        {
            a = jsonobject.optLong("last_config_time", -1L);
            b = jsonobject.optLong("oc_interval", -1L) * 60L * 1000L;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            br.e("MobclickAgent", "fail to parce online config response", jsonobject);
        }
    }

    public (JSONObject jsonobject)
    {
        super(jsonobject);
        a = -1L;
        b = -1L;
        a(jsonobject);
    }
}
