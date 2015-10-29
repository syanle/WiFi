// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import android.content.Context;
import com.tencent.stat.common.Env;
import com.tencent.stat.common.User;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.event:
//            Event, EventType

public class SessionEnv extends Event
{

    private JSONObject cfgJson;
    private Env env;

    public SessionEnv(Context context, int i, JSONObject jsonobject)
    {
        super(context, i);
        cfgJson = null;
        env = new Env(context);
        cfgJson = jsonobject;
    }

    public EventType getType()
    {
        return EventType.SESSION_ENV;
    }

    public boolean onEncode(JSONObject jsonobject)
        throws JSONException
    {
        jsonobject.put("ut", super.user.getType());
        if (cfgJson != null)
        {
            jsonobject.put("cfg", cfgJson);
        }
        env.encode(jsonobject);
        return true;
    }
}
