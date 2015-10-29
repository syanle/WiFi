// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import com.umeng.common.Log;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            n

public class l extends n
{

    public static final String f = "session_id";
    public String e;

    public l()
    {
    }

    public void a(String s)
    {
        e = s;
    }

    public void a(JSONObject jsonobject)
        throws Exception
    {
        super.a(jsonobject);
        e = jsonobject.getString("session_id");
    }

    public boolean a()
    {
        if (e == null)
        {
            Log.b("MobclickAgent", "Session id is not initialized");
            return false;
        } else
        {
            return super.a();
        }
    }

    public void b(JSONObject jsonobject)
        throws Exception
    {
        super.b(jsonobject);
        jsonobject.put("session_id", e);
    }
}
