// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.githang.android.apnbb.BroadcastUtil;
import com.githang.android.apnbb.NotifierConfig;
import com.githang.android.apnbb.XmppConnectReceiver;
import java.lang.reflect.Constructor;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.XMPPConnection;

// Referenced classes of package org.androidpn.client:
//            LogUtil, PersistentConnectionListener, NotificationPacketListener, NotificationService

public class XmppManager
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/XmppManager);
    public static final String XMPP_RESOURCE_NAME = "AndroidpnClient";
    private String appName;
    private XMPPConnection connection;
    private ConnectionListener connectionListener;
    private Context context;
    private Handler handler;
    private PacketListener packetListener;
    private SharedPreferences sharedPrefs;
    private Handler toastHandler;

    public XmppManager(NotificationService notificationservice)
    {
        context = notificationservice;
        XmppConnectReceiver.initInstance(context, this);
        appName = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        sharedPrefs = context.getSharedPreferences("client_preferences", 0);
        connectionListener = new PersistentConnectionListener(this);
        if (NotifierConfig.packetListener == null)
        {
            Log.i(LOGTAG, (new StringBuilder("the packetListener is ")).append(NotifierConfig.packetListener).toString());
            packetListener = new NotificationPacketListener(this);
        } else
        {
            try
            {
                packetListener = (PacketListener)Class.forName(NotifierConfig.packetListener).getConstructor(new Class[] {
                    org/androidpn/client/XmppManager
                }).newInstance(new Object[] {
                    this
                });
                Log.i(LOGTAG, (new StringBuilder("the packetListener is ")).append(packetListener.getClass().toString()).toString());
            }
            // Misplaced declaration of an exception variable
            catch (NotificationService notificationservice)
            {
                Log.e(LOGTAG, notificationservice.getMessage(), notificationservice);
                packetListener = new NotificationPacketListener(this);
            }
        }
        handler = new Handler();
        toastHandler = new Handler(Looper.getMainLooper());
    }

    private void removeAccount()
    {
        android.content.SharedPreferences.Editor editor = sharedPrefs.edit();
        editor.remove("XMPP_USERNAME");
        editor.remove("XMPP_PASSWORD");
        editor.commit();
    }

    private void submitLoginTask()
    {
        Log.d(LOGTAG, "submitLoginTask()...");
        BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN");
    }

    public void connect()
    {
        Log.d(LOGTAG, "connect()...");
        submitLoginTask();
    }

    public void disconnect()
    {
        Log.d(LOGTAG, "disconnect()...");
        BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT");
        Thread.currentThread();
        Thread.dumpStack();
        terminatePersistentConnection();
    }

    public XMPPConnection getConnection()
    {
        return connection;
    }

    public ConnectionListener getConnectionListener()
    {
        return connectionListener;
    }

    public Context getContext()
    {
        return context;
    }

    public Handler getHandler()
    {
        return handler;
    }

    public PacketListener getPacketListener()
    {
        return packetListener;
    }

    public boolean isAuthenticated()
    {
        return connection != null && connection.isConnected() && connection.isAuthenticated();
    }

    public boolean isConnected()
    {
        return connection != null && connection.isConnected();
    }

    public boolean isRegistered()
    {
        return sharedPrefs.contains("XMPP_USERNAME") && sharedPrefs.contains("XMPP_PASSWORD");
    }

    public void reregisterAccount()
    {
        removeAccount();
        submitLoginTask();
    }

    public void setConnection(XMPPConnection xmppconnection)
    {
        connection = xmppconnection;
    }

    protected void showToast(final String msg)
    {
        toastHandler.post(new Runnable() {

            final XmppManager this$0;
            private final String val$msg;

            public void run()
            {
                Toast.makeText(context.getApplicationContext(), msg, 1).show();
            }

            
            {
                this$0 = XmppManager.this;
                msg = s;
                super();
            }
        });
    }

    public void startReconnectionThread()
    {
        Log.d(LOGTAG, "startReconnectionThread()...");
        BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT");
    }

    public void terminatePersistentConnection()
    {
        Log.d(LOGTAG, "terminatePersistentConnection()...");
        BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT");
    }


}
