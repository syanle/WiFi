// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.service;

import android.app.ActivityManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Vibrator;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import com.pubinfo.freewifialliance.view.FloatApplication;
import com.pubinfo.freewifialliance.view.FloatView;
import com.pubinfo.freewifialliance.view.LoadingView;
import com.pubinfo.wifi_core.core.util.FileManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.TimeoutException;

public class WifiConnService extends Service
    implements android.view.View.OnClickListener
{
    public class FreshBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (WifiConnService.floatView != null)
            {
                handler.sendEmptyMessage(5);
            }
        }

        public FreshBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class FreshViewBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (WifiConnService.floatView != null)
            {
                handler.sendEmptyMessage(7);
            }
        }

        public FreshViewBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class MyThread extends Thread
    {

        final WifiConnService this$0;

        public void run()
        {
            if (WifiConnService.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
            {
                handler.sendEmptyMessage(8);
                return;
            }
            try
            {
                handler.sendEmptyMessage(9);
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                handler.sendEmptyMessage(9);
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
                handler.sendEmptyMessage(9);
                return;
            }
            catch (TimeoutException timeoutexception)
            {
                timeoutexception.printStackTrace();
            }
            handler.sendEmptyMessage(9);
            return;
        }

        public MyThread()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class StartNightSearchBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (!isNightSearch)
            {
                showMsgToast("\u5F00\u542F\u591C\u95F4\u641C\u7D22");
                handler.postDelayed(nightRunnable, 0L);
            }
        }

        public StartNightSearchBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class StartTaskBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            isRunning = true;
            showMsgToast("\u81EA\u52A8\u641C\u7D22\u5F00\u542F");
            handler.postDelayed(runnable, 0L);
        }

        public StartTaskBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class StopNightSearchBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            showMsgToast("\u5173\u95ED\u591C\u95F4\u641C\u7D22");
            handler.removeCallbacks(nightRunnable);
            isNightSearch = false;
        }

        public StopNightSearchBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class StopTaskBroadcastReceiver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            showMsgToast("\u81EA\u52A8\u641C\u7D22\u5173\u95ED");
            isRunning = false;
            handler.removeCallbacks(runnable);
        }

        public StopTaskBroadcastReceiver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    public class WifiEnableBroadcastReciver extends BroadcastReceiver
    {

        final WifiConnService this$0;

        public void onReceive(Context context, Intent intent)
        {
            if (isRunning && !WifiConnService.isNight && "android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()))
            {
                int i = intent.getIntExtra("wifi_state", 0);
                if (i == 3)
                {
                    handler.postDelayed(runnable, 0L);
                } else
                if (i == 1)
                {
                    handler.sendEmptyMessage(2);
                    handler.removeCallbacks(runnable);
                    return;
                }
            }
        }

        public WifiEnableBroadcastReciver()
        {
            this$0 = WifiConnService.this;
            super();
        }
    }

    private static class Worker extends Thread
    {

        private Integer exit;
        private final Process process;

        public void run()
        {
            try
            {
                exit = Integer.valueOf(process.waitFor());
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                return;
            }
        }


        private Worker(Process process1)
        {
            process = process1;
        }

        Worker(Process process1, Worker worker)
        {
            this(process1);
        }
    }


    public static final String STOP_SERVICE = "stop";
    public static final String STOP_SP = "service";
    private static FloatView floatView = null;
    private static boolean isNight = false;
    FreshBroadcastReceiver freshBroadcastReceiver;
    FreshViewBroadcastReceiver freshViewBroadcastReceiver;
    Handler handler;
    boolean isNightSearch;
    boolean isRunning;
    Drawable logoDrawable;
    Drawable logoLvDrawable;
    Drawable logoWuDrawable;
    ActivityManager mActivityManager;
    Runnable nightRunnable;
    private List results;
    private Runnable runnable;
    StartNightSearchBroadcastReceiver startNightSearchBroadcastReceiver;
    StartTaskBroadcastReceiver startTaskBroadcastReceiver;
    StopNightSearchBroadcastReceiver stopNightSearchBroadcastReceiver;
    StopTaskBroadcastReceiver stopTaskBroadcastReceiver;
    private List tianyi_wifi;
    private Timer timer;
    WifiEnableBroadcastReciver wifiEnableBroadcastReciver;
    private WifiManager wifiManager;
    private WindowManager windowManager;
    private android.view.WindowManager.LayoutParams windowManagerParams;

    public WifiConnService()
    {
        windowManager = null;
        windowManagerParams = null;
        tianyi_wifi = new ArrayList();
        timer = new Timer();
        isNightSearch = false;
        isRunning = true;
        runnable = new Runnable() {

            final WifiConnService this$0;

            public void run()
            {
                if (!WifiConnService.isNight)
                {
                    getWiFi();
                }
                handler.postDelayed(this, 0x493e0L);
            }

            
            {
                this$0 = WifiConnService.this;
                super();
            }
        };
        nightRunnable = new Runnable() {

            final WifiConnService this$0;

            public void run()
            {
                isNight();
                handler.postDelayed(nightRunnable, 0x1b7740L);
            }

            
            {
                this$0 = WifiConnService.this;
                super();
            }
        };
        handler = new Handler() {

            final WifiConnService this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 9: default 56
            //                           1 57
            //                           2 71
            //                           3 85
            //                           4 92
            //                           5 135
            //                           6 149
            //                           7 159
            //                           8 197
            //                           9 211;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
                return;
_L2:
                WifiConnService.floatView.setImage(logoDrawable);
                return;
_L3:
                WifiConnService.floatView.setImage(logoWuDrawable);
                return;
_L4:
                WifiConnService.floatView.setTextInvisiable();
                return;
_L5:
                if (isHome())
                {
                    WifiConnService.floatView.setVisibility(0);
                } else
                {
                    WifiConnService.floatView.setVisibility(4);
                }
                handler.sendEmptyMessageDelayed(4, 1000L);
                return;
_L6:
                WifiConnService.floatView.setImage(logoLvDrawable);
                return;
_L7:
                showMsgToast("night search");
                return;
_L8:
                WifiConnService.floatView.setImage(logoDrawable);
                if (isConnTianyiWifi())
                {
                    (new MyThread()).start();
                    return;
                }
                  goto _L1
_L9:
                WifiConnService.floatView.setImage(logoLvDrawable);
                return;
_L10:
                WifiConnService.floatView.setImage(logoDrawable);
                return;
            }

            
            {
                this$0 = WifiConnService.this;
                super();
            }
        };
    }

    private void createView()
    {
        floatView = new FloatView(getApplicationContext(), getScreenWidth());
        floatView.setOnClickListener(this);
        floatView.setOrientation(1);
        floatView.setGravity(1);
        floatView.setImage(logoWuDrawable);
        floatView.setTextInvisiable();
        windowManager = (WindowManager)getApplicationContext().getSystemService("window");
        windowManagerParams = ((FloatApplication)getApplication()).getWindowParams();
        windowManagerParams.type = 2002;
        windowManagerParams.format = 1;
        windowManagerParams.flags = 40;
        windowManagerParams.gravity = 51;
        windowManagerParams.x = 0;
        windowManagerParams.y = 100;
        windowManagerParams.width = -2;
        windowManagerParams.height = -2;
        windowManager.addView(floatView, windowManagerParams);
    }

    public static int executeCommand(String s, long l)
        throws IOException, InterruptedException, TimeoutException
    {
        Worker worker;
        s = Runtime.getRuntime().exec(s);
        worker = new Worker(s, null);
        worker.start();
        int i;
        worker.join(l);
        if (worker.exit == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        i = worker.exit.intValue();
        s.destroy();
        return i;
        throw new TimeoutException();
        InterruptedException interruptedexception;
        interruptedexception;
        worker.interrupt();
        Thread.currentThread().interrupt();
        throw interruptedexception;
        Exception exception;
        exception;
        s.destroy();
        throw exception;
    }

    private List getHomes()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        obj = ((PackageManager) (obj)).queryIntentActivities(intent, 0x10000).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                return arraylist;
            }
            arraylist.add(((ResolveInfo)((Iterator) (obj)).next()).activityInfo.packageName);
        } while (true);
    }

    public void Vibrate(long l)
    {
        ((Vibrator)getSystemService("vibrator")).vibrate(l);
    }

    public String getConnectedWifiSSId()
    {
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID();
        } else
        {
            return "";
        }
    }

    public int getScreenWidth()
    {
        return ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
    }

    public List getTianyi_wifi()
    {
        return tianyi_wifi;
    }

    public void getWiFi()
    {
        tianyi_wifi.clear();
        if (results != null)
        {
            results.clear();
        }
        if (wifiManager.isWifiEnabled())
        {
            wifiManager.startScan();
        }
        results = wifiManager.getScanResults();
        if (results == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i < results.size()) goto _L3; else goto _L2
_L2:
        int j;
        boolean flag;
        if (tianyi_wifi != null && tianyi_wifi.size() > 0)
        {
            if (isConnTianyiWifi() && isPingAbleTwo())
            {
                handler.sendEmptyMessage(5);
                return;
            } else
            {
                handler.sendEmptyMessage(1);
                return;
            }
        } else
        {
            handler.sendEmptyMessage(2);
            return;
        }
_L3:
        if (!isWifiAlliance(((ScanResult)results.get(i)).SSID)) goto _L5; else goto _L4
_L4:
        flag = false;
        j = 0;
_L7:
        if (j >= tianyi_wifi.size())
        {
            j = ((flag) ? 1 : 0);
        } else
        {
label0:
            {
                if (!((ScanResult)results.get(i)).SSID.equals(((ScanResult)tianyi_wifi.get(j)).SSID))
                {
                    break label0;
                }
                j = 1;
            }
        }
        if (j == 0)
        {
            tianyi_wifi.add((ScanResult)results.get(i));
        }
_L5:
        i++;
          goto _L6
        j++;
          goto _L7
    }

    public boolean isConnTianyiWifi()
    {
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        return wifiinfo != null && wifiinfo.getSSID() != null && isWifiAlliance(wifiinfo.getSSID());
    }

    public boolean isHome()
    {
        if (mActivityManager == null)
        {
            mActivityManager = (ActivityManager)getSystemService("activity");
        }
        List list = mActivityManager.getRunningTasks(1);
        return getHomes().contains(((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getPackageName());
    }

    public void isNight()
    {
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(11) > 22 || calendar.get(11) < 7)
        {
            isNight = true;
            return;
        } else
        {
            isNight = false;
            return;
        }
    }

    public boolean isPingAble()
    {
        boolean flag = false;
        int i;
        try
        {
            i = executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        catch (InterruptedException interruptedexception)
        {
            interruptedexception.printStackTrace();
            return false;
        }
        catch (TimeoutException timeoutexception)
        {
            timeoutexception.printStackTrace();
            return false;
        }
        if (i == 0)
        {
            flag = true;
        }
        return flag;
    }

    public boolean isPingAbleTwo()
    {
        while (isPingAble() || isPingAble()) 
        {
            return true;
        }
        return false;
    }

    public boolean isWifiAlliance(String s)
    {
        String s1 = getSharedPreferences("ssidlist", 0).getString("data", "");
        if (s1.equals(""))
        {
            return ssidListParser(s, FileManager.getSsidList(this));
        } else
        {
            return ssidListParser(s, s1);
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onClick(View view)
    {
        if (!view.equals(floatView)) goto _L2; else goto _L1
_L1:
        if (!wifiManager.isWifiEnabled()) goto _L4; else goto _L3
_L3:
        if (!floatView.getImage().equals(logoWuDrawable)) goto _L6; else goto _L5
_L5:
        tianyi_wifi.clear();
        if (results != null)
        {
            results.clear();
        }
        if (wifiManager.isWifiEnabled())
        {
            wifiManager.startScan();
        }
        results = wifiManager.getScanResults();
        if (results == null) goto _L8; else goto _L7
_L7:
        int i = 0;
_L20:
        if (i < results.size()) goto _L9; else goto _L8
_L8:
        if (tianyi_wifi == null || tianyi_wifi.size() <= 0) goto _L11; else goto _L10
_L10:
        view = new Intent(this, com/pubinfo/freewifialliance/view/LoadingView);
        view.setFlags(0x10000000);
        startActivity(view);
_L2:
        return;
_L9:
        if (!isWifiAlliance(((ScanResult)results.get(i)).SSID)) goto _L13; else goto _L12
_L12:
        int j;
        boolean flag;
        flag = false;
        j = 0;
_L18:
        if (j < tianyi_wifi.size()) goto _L15; else goto _L14
_L14:
        j = ((flag) ? 1 : 0);
_L17:
        if (j == 0)
        {
            tianyi_wifi.add((ScanResult)results.get(i));
        }
_L13:
        i++;
        continue; /* Loop/switch isn't completed */
_L15:
        if (!((ScanResult)results.get(i)).SSID.equals(((ScanResult)tianyi_wifi.get(j)).SSID))
        {
            break; /* Loop/switch isn't completed */
        }
        j = 1;
        if (true) goto _L17; else goto _L16
_L16:
        j++;
        if (true) goto _L18; else goto _L11
_L11:
        floatView.setTextVisiable();
        handler.sendEmptyMessageDelayed(3, 1000L);
        return;
_L6:
        view = new Intent(this, com/pubinfo/freewifialliance/view/LoadingView);
        view.setFlags(0x10000000);
        startActivity(view);
        return;
_L4:
        view = new Intent(this, com/pubinfo/freewifialliance/view/LoadingView);
        view.setFlags(0x10000000);
        startActivity(view);
        return;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public void onCreate()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        logoWuDrawable = getResources().getDrawable(0x7f020071);
        logoDrawable = getResources().getDrawable(0x7f02006b);
        logoLvDrawable = getResources().getDrawable(0x7f020070);
        handler.postDelayed(nightRunnable, 0L);
        isNightSearch = true;
        wifiEnableBroadcastReciver = new WifiEnableBroadcastReciver();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        registerReceiver(wifiEnableBroadcastReciver, intentfilter);
        stopTaskBroadcastReceiver = new StopTaskBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.StopTaskBroadcastReceiver");
        registerReceiver(stopTaskBroadcastReceiver, intentfilter);
        startTaskBroadcastReceiver = new StartTaskBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.StartTaskBroadcastReceiver");
        registerReceiver(startTaskBroadcastReceiver, intentfilter);
        startNightSearchBroadcastReceiver = new StartNightSearchBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.StartNightSearchBroadcastReceiver");
        registerReceiver(startNightSearchBroadcastReceiver, intentfilter);
        stopNightSearchBroadcastReceiver = new StopNightSearchBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.StopNightSearchBroadcastReceiver");
        registerReceiver(stopNightSearchBroadcastReceiver, intentfilter);
        freshBroadcastReceiver = new FreshBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.FreshBroadcastReceiver");
        registerReceiver(freshBroadcastReceiver, intentfilter);
        freshViewBroadcastReceiver = new FreshViewBroadcastReceiver();
        intentfilter = new IntentFilter();
        intentfilter.addAction("com.pubinfo.freewifialliance.service.WifiConnService.FreshViewBroadcastReceiver");
        registerReceiver(freshViewBroadcastReceiver, intentfilter);
        createView();
        handler.sendEmptyMessage(4);
    }

    public void onDestroy()
    {
        unregisterReceiver(wifiEnableBroadcastReciver);
        unregisterReceiver(stopTaskBroadcastReceiver);
        unregisterReceiver(startTaskBroadcastReceiver);
        unregisterReceiver(startNightSearchBroadcastReceiver);
        unregisterReceiver(stopNightSearchBroadcastReceiver);
        unregisterReceiver(freshBroadcastReceiver);
        unregisterReceiver(freshViewBroadcastReceiver);
        windowManager.removeView(floatView);
        if (getSharedPreferences("service", 0).getString("stop", "").equals(""))
        {
            startService(new Intent(this, com/pubinfo/freewifialliance/service/WifiConnService));
        }
    }

    public void onStart(Intent intent, int i)
    {
    }

    protected void showMsgToast(String s)
    {
        Toast.makeText(this, s, 10).show();
    }

    public boolean ssidListParser(String s, String s1)
    {
        s1 = s1.split(",");
        int i = 0;
        do
        {
            if (i >= s1.length)
            {
                return false;
            }
            if (s.toLowerCase().trim().equals(s1[i].split(":")[0].trim()) || s.toLowerCase().trim().equals((new StringBuilder("\"")).append(s1[i].split(":")[0].trim()).append("\"").toString()))
            {
                return true;
            }
            i++;
        } while (true);
    }




}
