// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.event.ErrorEvent;

// Referenced classes of package com.tencent.stat:
//            StatService, StatConfig, StatStore

static final class val.tempContext
    implements tExceptionHandler
{

    final Context val$tempContext;

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        if (!StatConfig.isEnableStatService())
        {
            return;
        }
        StatStore.getInstance(val$tempContext).storeEvent(new ErrorEvent(val$tempContext, StatService.getSessionID(val$tempContext, false), 2, throwable), null);
        StatService.access$000().debug("MTA has caught the following uncaught exception:");
        StatService.access$000().error(throwable);
        if (StatService.access$100() != null)
        {
            StatService.access$000().debug("Call the original uncaught exception handler.");
            StatService.access$100().uncaughtException(thread, throwable);
            return;
        } else
        {
            StatService.access$000().debug("Original uncaught exception handler not set.");
            return;
        }
    }

    ger(Context context)
    {
        val$tempContext = context;
        super();
    }
}
