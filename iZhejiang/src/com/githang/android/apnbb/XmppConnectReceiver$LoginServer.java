// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.content.SharedPreferences;
import android.util.Log;
import org.androidpn.client.NotificationIQ;
import org.androidpn.client.NotificationIQProvider;
import org.androidpn.client.XmppManager;
import org.jivesoftware.smack.ConnectionConfiguration;
import org.jivesoftware.smack.PacketCollector;
import org.jivesoftware.smack.XMPPConnection;
import org.jivesoftware.smack.XMPPException;
import org.jivesoftware.smack.filter.AndFilter;
import org.jivesoftware.smack.filter.PacketFilter;
import org.jivesoftware.smack.filter.PacketIDFilter;
import org.jivesoftware.smack.filter.PacketTypeFilter;
import org.jivesoftware.smack.packet.IQ;
import org.jivesoftware.smack.packet.Registration;
import org.jivesoftware.smack.packet.XMPPError;
import org.jivesoftware.smack.provider.ProviderManager;

// Referenced classes of package com.githang.android.apnbb:
//            XmppConnectReceiver, BroadcastUtil, NotifierConfig, UUIDUtil

private class <init>
    implements Runnable
{

    private static final int REGISTER_TIME_OUT = 60000;
    final XmppConnectReceiver this$0;

    private boolean connect()
    {
        Object obj;
        Log.i(XmppConnectReceiver.access$4(), "ConnectTask.run()...");
        if (XmppConnectReceiver.access$5(XmppConnectReceiver.this).isConnected())
        {
            break MISSING_BLOCK_LABEL_209;
        }
        BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING");
        obj = new ConnectionConfiguration(XmppConnectReceiver.access$6(XmppConnectReceiver.this), XmppConnectReceiver.access$7(XmppConnectReceiver.this));
        ((ConnectionConfiguration) (obj)).setSecurityMode(org.jivesoftware.smack.Mode.required);
        ((ConnectionConfiguration) (obj)).setSASLAuthenticationEnabled(false);
        ((ConnectionConfiguration) (obj)).setCompressionEnabled(false);
        obj = new XMPPConnection(((ConnectionConfiguration) (obj)));
        XmppConnectReceiver.access$5(XmppConnectReceiver.this).setConnection(((XMPPConnection) (obj)));
        ((XMPPConnection) (obj)).connect();
        BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
        Log.i(XmppConnectReceiver.access$4(), "XMPP connected successfully");
        if (NotifierConfig.iqProvider != null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        ProviderManager.getInstance().addIQProvider("notification", "androidpn:iq:notification", new NotificationIQProvider());
        return true;
        ProviderManager.getInstance().addIQProvider("notification", "androidpn:iq:notification", Class.forName(NotifierConfig.iqProvider).newInstance());
        return true;
        Exception exception;
        exception;
        try
        {
            Log.e(XmppConnectReceiver.access$4(), exception.getMessage(), exception);
            ProviderManager.getInstance().addIQProvider("notification", "androidpn:iq:notification", new NotificationIQProvider());
        }
        catch (XMPPException xmppexception)
        {
            Log.e(XmppConnectReceiver.access$4(), "XMPP connection failed", xmppexception);
            return false;
        }
        return true;
        Log.i(XmppConnectReceiver.access$4(), "XMPP connected already");
        BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
        return true;
    }

    public boolean login(String s, String s1)
    {
        Log.i(XmppConnectReceiver.access$4(), "LoginTask.run()...");
        if (XmppConnectReceiver.access$5(XmppConnectReceiver.this).isAuthenticated())
        {
            Log.i(XmppConnectReceiver.access$4(), "Logged in already");
            return true;
        }
        BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androdipn.client.ANDROIDPN_STATUS_LOGINING");
        XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().login(s, s1, "AndroidpnClient");
        Log.d(XmppConnectReceiver.access$4(), "Logged in successfully");
        BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS");
        if (XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnectionListener() != null)
        {
            XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().addConnectionListener(XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnectionListener());
        }
        if (NotifierConfig.iq != null)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        s = new PacketTypeFilter(org/androidpn/client/NotificationIQ);
_L1:
        s1 = XmppConnectReceiver.access$5(XmppConnectReceiver.this).getPacketListener();
        XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().addPacketListener(s1, s);
        XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().startKeepAliveThread(XmppConnectReceiver.access$5(XmppConnectReceiver.this));
        return true;
        try
        {
            s = new PacketTypeFilter(Class.forName(NotifierConfig.iq));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL");
            Log.e(XmppConnectReceiver.access$4(), "LoginTask.run()... xmpp error");
            Log.e(XmppConnectReceiver.access$4(), (new StringBuilder("Failed to login to xmpp server. Caused by: ")).append(s.getMessage()).toString(), s);
            s = s.getMessage();
            if (s != null && s.contains("401"))
            {
                XmppConnectReceiver.access$5(XmppConnectReceiver.this).reregisterAccount();
            }
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL");
            Log.e(XmppConnectReceiver.access$4(), "LoginTask.run()... other error");
            Log.e(XmppConnectReceiver.access$4(), (new StringBuilder("Failed to login to xmpp server. Caused by: ")).append(s.getMessage()).toString());
            return false;
        }
          goto _L1
    }

    public boolean register(String s, String s1)
    {
        Log.i(XmppConnectReceiver.access$4(), "RegisterTask.run()...");
        if (!XmppConnectReceiver.access$5(XmppConnectReceiver.this).isRegistered()) goto _L2; else goto _L1
_L1:
        Log.i(XmppConnectReceiver.access$4(), "Account registered already");
_L4:
        return true;
_L2:
        Registration registration = new Registration();
        Object obj = new AndFilter(new PacketFilter[] {
            new PacketIDFilter(registration.getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
        });
        obj = XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().createPacketCollector(((PacketFilter) (obj)));
        registration.setType(org.jivesoftware.smack.packet.._fld0);
        registration.addAttribute("username", s);
        registration.addAttribute("password", s1);
        if (!XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().isConnected())
        {
            break MISSING_BLOCK_LABEL_224;
        }
        XmppConnectReceiver.access$5(XmppConnectReceiver.this).getConnection().sendPacket(registration);
        s = (IQ)((PacketCollector) (obj)).nextResult(60000L);
        ((PacketCollector) (obj)).cancel();
        if (s == null)
        {
            Log.d(XmppConnectReceiver.access$4(), "The server didn't return result after 60 seconds.");
            return false;
        }
        if (s.getType() != org.jivesoftware.smack.packet.._fld0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s.getError().toString().contains("409")) goto _L4; else goto _L3
_L3:
        return false;
        if (s.getType() == org.jivesoftware.smack.packet.._fld0) goto _L4; else goto _L5
_L5:
        return false;
        Log.d(XmppConnectReceiver.access$4(), "connection is not connected");
        return false;
    }

    public void run()
    {
        String s = UUIDUtil.getID(XmppConnectReceiver.access$0(XmppConnectReceiver.this));
        XmppConnectReceiver.access$1(XmppConnectReceiver.this, true);
        boolean flag1 = false;
        boolean flag;
        if (connect())
        {
            XmppConnectReceiver.access$2(0);
            flag = flag1;
            if (register(s, s))
            {
                android.content.ginServer ginserver = XmppConnectReceiver.access$3(XmppConnectReceiver.this).edit();
                ginserver.ng("XMPP_USERNAME", s);
                ginserver.ng("XMPP_PASSWORD", s);
                ginserver.ng();
                flag = flag1;
                if (login(XmppConnectReceiver.access$3(XmppConnectReceiver.this).getString("XMPP_USERNAME", ""), XmppConnectReceiver.access$3(XmppConnectReceiver.this).getString("XMPP_PASSWORD", "")))
                {
                    flag = true;
                    BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_LOGINED");
                }
            }
        } else
        {
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED");
            flag = flag1;
        }
        XmppConnectReceiver.access$1(XmppConnectReceiver.this, false);
        if (!flag)
        {
            BroadcastUtil.sendBroadcast(XmppConnectReceiver.access$0(XmppConnectReceiver.this), "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT");
        }
    }

    private e()
    {
        this$0 = XmppConnectReceiver.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
