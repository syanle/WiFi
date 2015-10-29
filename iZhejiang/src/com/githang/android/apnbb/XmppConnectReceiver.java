// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.githang.android.apnbb;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import java.util.concurrent.atomic.AtomicInteger;
import org.androidpn.client.LogUtil;
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
//            BroadcastUtil, NotifierConfig, UUIDUtil, NetworkUtil

public class XmppConnectReceiver extends BroadcastReceiver
{
    public static class DelayTime
    {

        private static final DelayTime delayTime = new DelayTime();
        private AtomicInteger times;

        public static int getWaitingTime()
        {
            byte byte0 = 20;
            int i = delayTime.times.get();
            if (i == 0)
            {
                byte0 = 0;
            } else
            if (i >= 15)
            {
                if (i < 20)
                {
                    return 60;
                }
                return i >= 30 ? 300 : 120;
            }
            return byte0;
        }

        public static void increase()
        {
            delayTime.times.incrementAndGet();
        }

        public static void resetTimes()
        {
            delayTime.times.set(0);
        }


        public DelayTime()
        {
            times = new AtomicInteger(0);
        }
    }

    public class DisconnectTask
        implements Runnable
    {

        final XmppConnectReceiver this$0;

        public void run()
        {
            if (xmppManager.isConnected())
            {
                Log.d(XmppConnectReceiver.LOG_TAG, "terminatePersistentConnection()... run()");
                xmppManager.getConnection().removePacketListener(xmppManager.getPacketListener());
                xmppManager.getConnection().disconnect();
            }
        }

        public DisconnectTask()
        {
            this$0 = XmppConnectReceiver.this;
            super();
        }
    }

    private class LoginServer
        implements Runnable
    {

        private static final int REGISTER_TIME_OUT = 60000;
        final XmppConnectReceiver this$0;

        private boolean connect()
        {
            Object obj;
            Log.i(XmppConnectReceiver.LOG_TAG, "ConnectTask.run()...");
            if (xmppManager.isConnected())
            {
                break MISSING_BLOCK_LABEL_209;
            }
            BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING");
            obj = new ConnectionConfiguration(xmppHost, xmppPort);
            ((ConnectionConfiguration) (obj)).setSecurityMode(org.jivesoftware.smack.ConnectionConfiguration.SecurityMode.required);
            ((ConnectionConfiguration) (obj)).setSASLAuthenticationEnabled(false);
            ((ConnectionConfiguration) (obj)).setCompressionEnabled(false);
            obj = new XMPPConnection(((ConnectionConfiguration) (obj)));
            xmppManager.setConnection(((XMPPConnection) (obj)));
            ((XMPPConnection) (obj)).connect();
            BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
            Log.i(XmppConnectReceiver.LOG_TAG, "XMPP connected successfully");
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
                Log.e(XmppConnectReceiver.LOG_TAG, exception.getMessage(), exception);
                ProviderManager.getInstance().addIQProvider("notification", "androidpn:iq:notification", new NotificationIQProvider());
            }
            catch (XMPPException xmppexception)
            {
                Log.e(XmppConnectReceiver.LOG_TAG, "XMPP connection failed", xmppexception);
                return false;
            }
            return true;
            Log.i(XmppConnectReceiver.LOG_TAG, "XMPP connected already");
            BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
            return true;
        }

        public boolean login(String s, String s1)
        {
            Log.i(XmppConnectReceiver.LOG_TAG, "LoginTask.run()...");
            if (xmppManager.isAuthenticated())
            {
                Log.i(XmppConnectReceiver.LOG_TAG, "Logged in already");
                return true;
            }
            BroadcastUtil.sendBroadcast(context, "org.androdipn.client.ANDROIDPN_STATUS_LOGINING");
            xmppManager.getConnection().login(s, s1, "AndroidpnClient");
            Log.d(XmppConnectReceiver.LOG_TAG, "Logged in successfully");
            BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS");
            if (xmppManager.getConnectionListener() != null)
            {
                xmppManager.getConnection().addConnectionListener(xmppManager.getConnectionListener());
            }
            if (NotifierConfig.iq != null)
            {
                break MISSING_BLOCK_LABEL_262;
            }
            s = new PacketTypeFilter(org/androidpn/client/NotificationIQ);
_L1:
            s1 = xmppManager.getPacketListener();
            xmppManager.getConnection().addPacketListener(s1, s);
            xmppManager.getConnection().startKeepAliveThread(xmppManager);
            return true;
            try
            {
                s = new PacketTypeFilter(Class.forName(NotifierConfig.iq));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL");
                Log.e(XmppConnectReceiver.LOG_TAG, "LoginTask.run()... xmpp error");
                Log.e(XmppConnectReceiver.LOG_TAG, (new StringBuilder("Failed to login to xmpp server. Caused by: ")).append(s.getMessage()).toString(), s);
                s = s.getMessage();
                if (s != null && s.contains("401"))
                {
                    xmppManager.reregisterAccount();
                }
                return false;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL");
                Log.e(XmppConnectReceiver.LOG_TAG, "LoginTask.run()... other error");
                Log.e(XmppConnectReceiver.LOG_TAG, (new StringBuilder("Failed to login to xmpp server. Caused by: ")).append(s.getMessage()).toString());
                return false;
            }
              goto _L1
        }

        public boolean register(String s, String s1)
        {
            Log.i(XmppConnectReceiver.LOG_TAG, "RegisterTask.run()...");
            if (!xmppManager.isRegistered()) goto _L2; else goto _L1
_L1:
            Log.i(XmppConnectReceiver.LOG_TAG, "Account registered already");
_L4:
            return true;
_L2:
            Registration registration = new Registration();
            Object obj = new AndFilter(new PacketFilter[] {
                new PacketIDFilter(registration.getPacketID()), new PacketTypeFilter(org/jivesoftware/smack/packet/IQ)
            });
            obj = xmppManager.getConnection().createPacketCollector(((PacketFilter) (obj)));
            registration.setType(org.jivesoftware.smack.packet.IQ.Type.SET);
            registration.addAttribute("username", s);
            registration.addAttribute("password", s1);
            if (!xmppManager.getConnection().isConnected())
            {
                break MISSING_BLOCK_LABEL_224;
            }
            xmppManager.getConnection().sendPacket(registration);
            s = (IQ)((PacketCollector) (obj)).nextResult(60000L);
            ((PacketCollector) (obj)).cancel();
            if (s == null)
            {
                Log.d(XmppConnectReceiver.LOG_TAG, "The server didn't return result after 60 seconds.");
                return false;
            }
            if (s.getType() != org.jivesoftware.smack.packet.IQ.Type.ERROR)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (s.getError().toString().contains("409")) goto _L4; else goto _L3
_L3:
            return false;
            if (s.getType() == org.jivesoftware.smack.packet.IQ.Type.RESULT) goto _L4; else goto _L5
_L5:
            return false;
            Log.d(XmppConnectReceiver.LOG_TAG, "connection is not connected");
            return false;
        }

        public void run()
        {
            String s = UUIDUtil.getID(context);
            isConnecting = true;
            boolean flag1 = false;
            boolean flag;
            if (connect())
            {
                XmppConnectReceiver.xmpp_reconnecting_count = 0;
                flag = flag1;
                if (register(s, s))
                {
                    android.content.SharedPreferences.Editor editor = sharedPrefs.edit();
                    editor.putString("XMPP_USERNAME", s);
                    editor.putString("XMPP_PASSWORD", s);
                    editor.commit();
                    flag = flag1;
                    if (login(sharedPrefs.getString("XMPP_USERNAME", ""), sharedPrefs.getString("XMPP_PASSWORD", "")))
                    {
                        flag = true;
                        BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED");
                    }
                }
            } else
            {
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED");
                flag = flag1;
            }
            isConnecting = false;
            if (!flag)
            {
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT");
            }
        }

        private LoginServer()
        {
            this$0 = XmppConnectReceiver.this;
            super();
        }

        LoginServer(LoginServer loginserver)
        {
            this();
        }
    }

    public class ReconnectTask
        implements Runnable
    {

        final XmppConnectReceiver this$0;

        public void run()
        {
            if (xmppManager.isAuthenticated() || !NetworkUtil.isNetworkAvaible(context))
            {
                handler.removeCallbacks(reconnectTask);
                DelayTime.resetTimes();
            } else
            if (!isConnecting)
            {
                if (XmppConnectReceiver.xmpp_reconnecting_count >= 10)
                {
                    Log.d(XmppConnectReceiver.LOG_TAG, (new StringBuilder("reconnectTask donot run reconnection --- xmpp_reconnecting_count(")).append(XmppConnectReceiver.xmpp_reconnecting_count).append(") >= ").append(10).toString());
                    return;
                }
                XmppConnectReceiver.xmpp_reconnecting_count++;
                Log.d(XmppConnectReceiver.LOG_TAG, "reconnectTask...");
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING");
                try
                {
                    Thread.sleep(DelayTime.getWaitingTime() * 1000);
                }
                catch (InterruptedException interruptedexception)
                {
                    interruptedexception.printStackTrace();
                }
                BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN");
                DelayTime.increase();
                return;
            }
        }

        public ReconnectTask()
        {
            this$0 = XmppConnectReceiver.this;
            super();
        }
    }


    private static final String LOG_TAG = LogUtil.makeLogTag(com/githang/android/apnbb/XmppConnectReceiver);
    private static XmppConnectReceiver instance = null;
    private static final Object lock = new Object();
    private static int xmpp_reconnecting_count = 0;
    private Context context;
    private Runnable disconnectTask;
    private Handler handler;
    private boolean isConnecting;
    private Runnable loginServerTask;
    private Runnable reconnectTask;
    private SharedPreferences sharedPrefs;
    private String xmppHost;
    private XmppManager xmppManager;
    private int xmppPort;

    private XmppConnectReceiver(Context context1, XmppManager xmppmanager)
    {
        context = context1;
        xmppManager = xmppmanager;
        xmppmanager = LocalBroadcastManager.getInstance(context1);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("org.androidpn.client.ANDROIDPN_ACTION_LOGIN");
        intentfilter.addAction("org.androidpn.client.ANDROIDPN_ACTION_RECONNECT");
        intentfilter.addAction("org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS");
        intentfilter.addAction("org.androidpn.client.ANDROIDPN_ACTION_RECEIPT");
        xmppmanager.registerReceiver(this, intentfilter);
        BroadcastUtil.sendBroadcast(context1, "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY");
        sharedPrefs = context1.getSharedPreferences("client_preferences", 0);
        xmppHost = sharedPrefs.getString("XMPP_HOST", "localhost");
        xmppPort = sharedPrefs.getInt("XMPP_PORT", 5222);
        context1 = new HandlerThread(com/githang/android/apnbb/XmppConnectReceiver.getSimpleName());
        context1.start();
        handler = new Handler(context1.getLooper());
        disconnectTask = new DisconnectTask();
        reconnectTask = new ReconnectTask();
        loginServerTask = new LoginServer(null);
    }

    private void doDisconnect()
    {
        xmpp_reconnecting_count = 0;
        handler.removeCallbacks(loginServerTask);
        handler.post(disconnectTask);
    }

    private void doLogin()
    {
        if (xmppManager.isAuthenticated())
        {
            Log.i(LOG_TAG, "XMPP Authenticated already");
            BroadcastUtil.sendBroadcast(context, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED");
            return;
        } else
        {
            handler.removeCallbacks(loginServerTask);
            handler.post(loginServerTask);
            return;
        }
    }

    private void doReconnect()
    {
        handler.post(reconnectTask);
    }

    private void doSendReceipt(IQ iq)
    {
        IQ iq1 = IQ.createResultIQ(iq);
        try
        {
            xmppManager.getConnection().sendPacket(iq1);
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
        }
        catch (NullPointerException nullpointerexception)
        {
            nullpointerexception.printStackTrace();
        }
        Log.d(LOG_TAG, (new StringBuilder("receipt")).append(iq.toString()).toString());
    }

    public static final void initInstance(Context context1, XmppManager xmppmanager)
    {
        if (instance == null)
        {
            synchronized (lock)
            {
                if (instance == null)
                {
                    instance = new XmppConnectReceiver(context1, xmppmanager);
                }
            }
            return;
        } else
        {
            return;
        }
        context1;
        obj;
        JVM INSTR monitorexit ;
        throw context1;
    }

    public void onReceive(Context context1, Intent intent)
    {
        String s = intent.getAction();
        Log.d(LOG_TAG, s);
        if ("org.androidpn.client.ANDROIDPN_ACTION_LOGIN".equals(s))
        {
            doLogin();
        } else
        {
            if ("org.androidpn.client.ANDROIDPN_ACTION_RECONNECT".equals(s))
            {
                doReconnect();
                return;
            }
            if ("org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT".equals(s))
            {
                doDisconnect();
                return;
            }
            if ("org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS".equals(s))
            {
                if (xmppManager.isAuthenticated())
                {
                    BroadcastUtil.sendBroadcast(context1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED");
                    return;
                }
                if (isConnecting)
                {
                    BroadcastUtil.sendBroadcast(context1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING");
                    return;
                } else
                {
                    BroadcastUtil.sendBroadcast(context1, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT");
                    return;
                }
            }
            if ("org.androidpn.client.ANDROIDPN_ACTION_RECEIPT".equals(s))
            {
                doSendReceipt((IQ)intent.getSerializableExtra("INTENT_IQ"));
                return;
            }
        }
    }













}
