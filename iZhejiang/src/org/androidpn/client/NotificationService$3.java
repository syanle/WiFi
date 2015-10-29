// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;


// Referenced classes of package org.androidpn.client:
//            NotificationService, XmppManager

class this._cls0
    implements Runnable
{

    final NotificationService this$0;

    public void run()
    {
        getXmppManager().disconnect();
    }

    ()
    {
        this$0 = NotificationService.this;
        super();
    }
}
