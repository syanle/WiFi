// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import com.umeng.common.util.h;
import org.json.JSONObject;

public class n
{

    public String g;
    public String h;
    protected final String i = "date";
    protected final String j = "time";

    public n()
    {
        String s = com.umeng.common.util.h.a();
        g = s.split(" ")[0];
        h = s.split(" ")[1];
    }

    public void a(JSONObject jsonobject)
        throws Exception
    {
        g = jsonobject.getString("date");
        h = jsonobject.getString("time");
    }

    public boolean a()
    {
        if (g == null || h == null)
        {
            Log.b("MobclickAgent", "Date or Time is not initialized");
            return false;
        } else
        {
            return true;
        }
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        jsonobject.put("date", g);
        jsonobject.put("time", h);
    }
}
