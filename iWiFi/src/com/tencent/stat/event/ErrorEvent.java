// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat.event;

import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.stat.event:
//            Event, EventType

public class ErrorEvent extends Event
{

    private String error;
    private int errorAttr;
    private int maxErrorLength;

    public ErrorEvent(Context context, int i, int j, Throwable throwable)
    {
        super(context, i);
        maxErrorLength = 100;
        context = throwable.getStackTrace();
        if (context != null && context.length > maxErrorLength)
        {
            StackTraceElement astacktraceelement[] = new StackTraceElement[maxErrorLength];
            for (i = 0; i < maxErrorLength; i++)
            {
                astacktraceelement[i] = context[i];
            }

            throwable.setStackTrace(astacktraceelement);
        }
        context = new StringWriter();
        PrintWriter printwriter = new PrintWriter(context);
        throwable.printStackTrace(printwriter);
        error = context.toString();
        errorAttr = j;
        printwriter.close();
    }

    public ErrorEvent(Context context, int i, String s)
    {
        super(context, i);
        maxErrorLength = 100;
        error = s;
        errorAttr = 0;
    }

    public EventType getType()
    {
        return EventType.ERROR;
    }

    public boolean onEncode(JSONObject jsonobject)
        throws JSONException
    {
        jsonobject.put("er", error);
        jsonobject.put("ea", errorAttr);
        return true;
    }
}
