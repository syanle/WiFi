// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.os.PowerManager;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

// Referenced classes of package org.androidpn.client:
//            LogUtil, NotificationReceiver, ConnectivityReceiver, PhoneStateChangeListener, 
//            XmppManager

public class NotificationService extends Service
{
    public class TaskSubmitter
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

        public TaskSubmitter(NotificationService notificationservice1)
        {
            this$0 = NotificationService.this;
            super();
            notificationService = notificationservice1;
        }
    }

    public class TaskTracker
    {

        public int count;
        final NotificationService notificationService;
        final NotificationService this$0;

        public void decrease()
        {
            synchronized (notificationService.getTaskTracker())
            {
                TaskTracker tasktracker1 = notificationService.getTaskTracker();
                tasktracker1.count = tasktracker1.count - 1;
                Log.d(NotificationService.LOGTAG, (new StringBuilder("Decremented task count to ")).append(count).toString());
            }
            return;
            exception;
            tasktracker;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void increase()
        {
            synchronized (notificationService.getTaskTracker())
            {
                TaskTracker tasktracker1 = notificationService.getTaskTracker();
                tasktracker1.count = tasktracker1.count + 1;
                Log.d(NotificationService.LOGTAG, (new StringBuilder("Incremented task count to ")).append(count).toString());
            }
            return;
            exception;
            tasktracker;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public TaskTracker(NotificationService notificationservice1)
        {
            this$0 = NotificationService.this;
            super();
            notificationService = notificationservice1;
            count = 0;
        }
    }


    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/NotificationService);
    private static NotificationService mService;
    private BroadcastReceiver connectivityReceiver;
    private String deviceId;
    private ExecutorService executorService;
    private android.os.PowerManager.WakeLock mWakeLock;
    private BroadcastReceiver notificationReceiver;
    private PhoneStateListener phoneStateListener;
    private SharedPreferences sharedPrefs;
    private TaskSubmitter taskSubmitter;
    private TaskTracker taskTracker;
    private TelephonyManager telephonyManager;
    private XmppManager xmppManager;

    public NotificationService()
    {
        mService = this;
        notificationReceiver = new NotificationReceiver();
        connectivityReceiver = new ConnectivityReceiver(this);
        phoneStateListener = new PhoneStateChangeListener(this);
        executorService = Executors.newSingleThreadExecutor();
        taskSubmitter = new TaskSubmitter(this);
        taskTracker = new TaskTracker(this);
    }

    private final void acquireWakeLock()
    {
        if (mWakeLock == null)
        {
            mWakeLock = ((PowerManager)getSystemService("power")).newWakeLock(1, getPackageName());
        }
        if (mWakeLock != null)
        {
            mWakeLock.acquire();
            Log.d(LOGTAG, "mWakeLock.acquire()");
        }
    }

    private void avoidServerBeKill()
    {
        startForeground(1, new Notification());
    }

    public static Intent getIntent(Context context)
    {
        return new Intent(context, org/androidpn/client/NotificationService);
    }

    public static NotificationService getNotificationService()
    {
        return mService;
    }

    private void registerConnectivityReceiver()
    {
        Log.d(LOGTAG, "registerConnectivityReceiver()...");
        telephonyManager.listen(phoneStateListener, 64);
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        registerReceiver(connectivityReceiver, intentfilter);
    }

    private void registerNotificationReceiver()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("org.androidpn.client.SHOW_NOTIFICATION");
        intentfilter.addAction("org.androidpn.client.NOTIFICATION_CLICKED");
        intentfilter.addAction("org.androidpn.client.NOTIFICATION_CLEARED");
        registerReceiver(notificationReceiver, intentfilter);
    }

    private final void releaseWakeLock()
    {
        Log.d(LOGTAG, "releaseWakeLock");
        if (mWakeLock != null)
        {
            mWakeLock.release();
            mWakeLock = null;
        }
    }

    private void start()
    {
        Log.d(LOGTAG, "start()...");
        registerNotificationReceiver();
        registerConnectivityReceiver();
        xmppManager.connect();
    }

    private void stop()
    {
        Log.d(LOGTAG, "stop()...");
        unregisterNotificationReceiver();
        unregisterConnectivityReceiver();
        xmppManager.disconnect();
        executorService.shutdown();
        releaseWakeLock();
        stopForeground(true);
    }

    private void unregisterConnectivityReceiver()
    {
        Log.d(LOGTAG, "unregisterConnectivityReceiver()...");
        telephonyManager.listen(phoneStateListener, 0);
        unregisterReceiver(connectivityReceiver);
    }

    private void unregisterNotificationReceiver()
    {
        unregisterReceiver(notificationReceiver);
    }

    public void connect()
    {
        Log.d(LOGTAG, "connect()...");
        taskSubmitter.submit(new Runnable() {

            final NotificationService this$0;

            public void run()
            {
                getXmppManager().connect();
            }

            
            {
                this$0 = NotificationService.this;
                super();
            }
        });
    }

    public void disconnect()
    {
        Log.d(LOGTAG, "disconnect()...");
        taskSubmitter.submit(new Runnable() {

            final NotificationService this$0;

            public void run()
            {
                getXmppManager().disconnect();
            }

            
            {
                this$0 = NotificationService.this;
                super();
            }
        });
    }

    public String getDeviceId()
    {
        return deviceId;
    }

    public ExecutorService getExecutorService()
    {
        return executorService;
    }

    public SharedPreferences getSharedPreferences()
    {
        return sharedPrefs;
    }

    public TaskSubmitter getTaskSubmitter()
    {
        return taskSubmitter;
    }

    public TaskTracker getTaskTracker()
    {
        return taskTracker;
    }

    public XmppManager getXmppManager()
    {
        return xmppManager;
    }

    public IBinder onBind(Intent intent)
    {
        Log.d(LOGTAG, "onBind()...");
        return null;
    }

    public void onCreate()
    {
        Log.d(LOGTAG, "onCreate()...");
        telephonyManager = (TelephonyManager)getSystemService("phone");
        sharedPrefs = getSharedPreferences("client_preferences", 0);
        deviceId = telephonyManager.getDeviceId();
        android.content.SharedPreferences.Editor editor = sharedPrefs.edit();
        editor.putString("DEVICE_ID", deviceId);
        editor.commit();
        if (deviceId == null || deviceId.trim().length() == 0 || deviceId.matches("0+"))
        {
            if (sharedPrefs.contains("EMULATOR_DEVICE_ID"))
            {
                deviceId = sharedPrefs.getString("EMULATOR_DEVICE_ID", "");
            } else
            {
                deviceId = (new StringBuilder("EMU")).append((new Random(System.currentTimeMillis())).nextLong()).toString();
                editor.putString("EMULATOR_DEVICE_ID", deviceId);
                editor.commit();
            }
        }
        Log.d(LOGTAG, (new StringBuilder("deviceId=")).append(deviceId).toString());
        xmppManager = new XmppManager(this);
        taskSubmitter.submit(new Runnable() {

            final NotificationService this$0;

            public void run()
            {
                start();
            }

            
            {
                this$0 = NotificationService.this;
                super();
            }
        });
    }

    public void onDestroy()
    {
        Log.d(LOGTAG, "onDestroy()...");
        stop();
        Intent intent = new Intent();
        intent.setClass(this, org/androidpn/client/NotificationService);
        startService(intent);
    }

    public void onRebind(Intent intent)
    {
        Log.d(LOGTAG, "onRebind()...");
    }

    public void onStart(Intent intent, int i)
    {
        Log.d(LOGTAG, "onStart()...");
        acquireWakeLock();
        avoidServerBeKill();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return super.onStartCommand(intent, 3, j);
    }

    public boolean onUnbind(Intent intent)
    {
        Log.d(LOGTAG, "onUnbind()...");
        return true;
    }



}
