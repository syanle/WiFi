// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.XMPPConnection;

// Referenced classes of package org.androidpn.client:
//            LogUtil, XmppManager

public class PersistentConnectionListener
    implements ConnectionListener
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/PersistentConnectionListener);
    private final XmppManager xmppManager;

    public PersistentConnectionListener(XmppManager xmppmanager)
    {
        xmppManager = xmppmanager;
    }

    public void connectionClosed()
    {
        Log.d(LOGTAG, "connectionClosed()...");
        NetworkInfo networkinfo = ((ConnectivityManager)xmppManager.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo != null && networkinfo.isAvailable())
        {
            xmppManager.startReconnectionThread();
        }
    }

    public void connectionClosedOnError(Exception exception)
    {
        Log.d(LOGTAG, "connectionClosedOnError()...");
        if (xmppManager.getConnection() != null && xmppManager.getConnection().isConnected())
        {
            xmppManager.getConnection().disconnect();
        }
        xmppManager.startReconnectionThread();
    }

    public void reconnectingIn(int i)
    {
        Log.d(LOGTAG, "reconnectingIn()...");
    }

    public void reconnectionFailed(Exception exception)
    {
        Log.d(LOGTAG, "reconnectionFailed()...");
    }

    public void reconnectionSuccessful()
    {
        Log.d(LOGTAG, "reconnectionSuccessful()...");
    }

}
