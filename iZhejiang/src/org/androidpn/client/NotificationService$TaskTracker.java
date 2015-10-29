// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.util.Log;

// Referenced classes of package org.androidpn.client:
//            NotificationService

public class count
{

    public int count;
    final NotificationService notificationService;
    final NotificationService this$0;

    public void decrease()
    {
        synchronized (notificationService.getTaskTracker())
        {
            count count2 = notificationService.getTaskTracker();
            count2.count = count2.count - 1;
            Log.d(NotificationService.access$0(), (new StringBuilder("Decremented task count to ")).append(count).toString());
        }
        return;
        exception;
        count1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void increase()
    {
        synchronized (notificationService.getTaskTracker())
        {
            count count2 = notificationService.getTaskTracker();
            count2.count = count2.count + 1;
            Log.d(NotificationService.access$0(), (new StringBuilder("Incremented task count to ")).append(count).toString());
        }
        return;
        exception;
        count1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public (NotificationService notificationservice1)
    {
        this$0 = NotificationService.this;
        super();
        notificationService = notificationservice1;
        count = 0;
    }
}
