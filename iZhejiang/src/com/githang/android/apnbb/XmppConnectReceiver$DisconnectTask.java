// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.util.Log;
import org.androidpn.client.XmppManager;
import org.jivesoftware.smack.XMPPConnection;

// Referenced classes of package com.githang.android.apnbb:
//            XmppConnectReceiver

public class this._cls0
    implements Runnable
{

    final XmppConnectReceiver this$0;

    public void run()
    {
        if (XmppConnectReceiver.access$5(XmppConnectReceiver.this).isConnected())
        {
            Log.d(XmppConnectReceiver.access$4(), "terminatePersistentConnection()... run()");
            XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().removePacketListener(XmppConnectReceiver.access$5(XmppConnectReceiver.this).getPacketListener());
            XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().disconnect();
        }
    }

    public ()
    {
        this$0 = XmppConnectReceiver.this;
        super();
    }
}
