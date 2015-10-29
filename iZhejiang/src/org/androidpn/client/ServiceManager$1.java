// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Context;

// Referenced classes of package org.androidpn.client:
//            ServiceManager, NotificationService

class this._cls0
    implements Runnable
{

    final ServiceManager this$0;

    public void run()
    {
        android.content.Intent intent = NotificationService.getIntent(ServiceManager.access$0(ServiceManager.this));
        ServiceManager.access$0(ServiceManager.this).startService(intent);
    }

    ce()
    {
        this$0 = ServiceManager.this;
        super();
    }
}
