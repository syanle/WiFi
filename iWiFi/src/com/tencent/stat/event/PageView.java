// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import android.content.Context;
import com.tencent.stat.common.StatCommonHelper;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.event:
//            Event, EventType

public class PageView extends Event
{

    Long duration;
    String pageId;
    String referPageId;

    public PageView(Context context, String s, int i, Long long1)
    {
        super(context, i);
        duration = null;
        referPageId = s;
        pageId = StatCommonHelper.getActivityName(context);
        duration = long1;
    }

    public String getPageId()
    {
        return pageId;
    }

    public EventType getType()
    {
        return EventType.PAGE_VIEW;
    }

    public boolean onEncode(JSONObject jsonobject)
        throws JSONException
    {
        jsonobject.put("pi", pageId);
        StatCommonHelper.jsonPut(jsonobject, "rf", referPageId);
        if (duration != null)
        {
            jsonobject.put("du", duration);
        }
        return true;
    }
}
