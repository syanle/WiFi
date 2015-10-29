// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

// Referenced classes of package org.androidpn.client:
//            NotificationService

public class notificationService
{

    final NotificationService notificationService;
    final NotificationService this$0;

    public Future submit(Runnable runnable)
    {
        Object obj = null;
        Future future = obj;
        if (!notificationService.getExecutorService().isTerminated())
        {
            future = obj;
            if (!notificationService.getExecutorService().isShutdown())
            {
                future = obj;
                if (runnable != null)
                {
                    future = notificationService.getExecutorService().submit(runnable);
                }
            }
        }
        return future;
    }

    public (NotificationService notificationservice1)
    {
        this$0 = NotificationService.this;
        super();
        notificationService = notificationservice1;
    }
}
