// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.os.Handler;
import android.util.Log;
import org.androidpn.client.XmppManager;

// Referenced classes of package com.githang.android.apnbb:
//            XmppConnectReceiver, NetworkUtil, BroadcastUtil

public class this._cls0
    implements Runnable
{

    final XmppConnectReceiver this$0;

    public void run()
    {
        if (XmppConnectReceiver.access$5(XmppConnectReceiver.this).isAuthenticated() || !NetworkUtil.isNetworkAvaible(XmppConnectReceiver.access$0(XmppConnectReceiver.this)))
        {
            XmppConnectReceiver.access$8(XmppConnectReceiver.this).removeCallbacks(XmppConnectReceiver.access$9(XmppConnectReceiver.this));
            tTimes();
        } else
        if (!XmppConnectReceiver.access$10(XmppConnectReceiver.this))
        {
            if (XmppConnectReceiver.access$11() >= 10)
            {
                Log.d(XmppConnectReceiver.access$4(), (new StringBuilder("reconnectTask donot run reconnection --- xmpp_reconnecting_count(")).append(XmppConnectReceiver.access$11()).append(") >= ").append(10).toString());
                return;
            }
            XmppConnectReceiver.access$2(XmppConnectReceiver.access$11() + 1);
            Log.d(XmppConnectReceiver.access$4(), "reconnectTask...");
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING");
            try
            {
                Thread.sleep(aitingTime() * 1000);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_ACTION_LOGIN");
            ease();
            return;
        }
    }

    public A()
    {
        this$0 = XmppConnectReceiver.this;
        super();
    }
}
