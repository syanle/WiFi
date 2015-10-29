// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import android.content.Context;
import com.tencent.stat.StatAppMonitor;
import com.tencent.stat.common.StatCommonHelper;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.event:
//            Event, EventType

public class MonitorStatEvent extends Event
{

    private static String appVersion = null;
    private static String simOperator = null;
    private StatAppMonitor monitor;

    public MonitorStatEvent(Context context, int i, StatAppMonitor statappmonitor)
    {
        super(context, i);
        monitor = null;
        monitor = statappmonitor;
    }

    public EventType getType()
    {
        return EventType.MONITOR_STAT;
    }

    public boolean onEncode(JSONObject jsonobject)
        throws JSONException
    {
        if (monitor == null)
        {
            return false;
        }
        jsonobject.put("na", monitor.getInterfaceName());
        jsonobject.put("rq", monitor.getReqSize());
        jsonobject.put("rp", monitor.getRespSize());
        jsonobject.put("rt", monitor.getResultType());
        jsonobject.put("tm", monitor.getMillisecondsConsume());
        jsonobject.put("rc", monitor.getReturnCode());
        jsonobject.put("sp", monitor.getSampling());
        if (appVersion == null)
        {
            appVersion = StatCommonHelper.getAppVersion(ctx);
        }
        StatCommonHelper.jsonPut(jsonobject, "av", appVersion);
        if (simOperator == null)
        {
            simOperator = StatCommonHelper.getSimOperator(ctx);
        }
        StatCommonHelper.jsonPut(jsonobject, "op", simOperator);
        jsonobject.put("cn", StatCommonHelper.getLinkedWay(ctx));
        return true;
    }

}
