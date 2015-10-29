// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.StrictMode;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.cat.data.TimeDifference;
import com.cat.impl.DoCheckNetWorkConn;
import com.cat.impl.DoTimeDifferenceConn;
import com.cat.parase.TimeDifferenceParser;
import com.cat.protocol.DoCheckNetWorkInterface;
import com.cat.protocol.DoTimeDifferenceInterface;
import com.cat.tools.APPConf;
import com.cat.tools.HttpConf;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ThinkAndroidBaseActivity extends Activity
    implements DoCheckNetWorkInterface, DoTimeDifferenceInterface
{
    public class MyThread extends Thread
    {

        final ThinkAndroidBaseActivity this$0;

        public void run()
        {
            try
            {
                ThinkAndroidBaseActivity.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L);
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
                return;
            }
            catch (TimeoutException timeoutexception)
            {
                timeoutexception.printStackTrace();
            }
        }

        public MyThread()
        {
            this$0 = ThinkAndroidBaseActivity.this;
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


    protected ImageView iv_pageInnerLoading;
    protected LinearLayout ll_pageInnerLoading;
    protected AnimationDrawable msInnerLoadingAnim;
    int network_state;
    protected WifiManager wifiMgr;

    public ThinkAndroidBaseActivity()
    {
        ll_pageInnerLoading = null;
        iv_pageInnerLoading = null;
        msInnerLoadingAnim = null;
        wifiMgr = null;
    }

    public static String FormatStackTrace(Throwable throwable)
    {
        if (throwable == null)
        {
            return "";
        }
        String s = throwable.getStackTrace().toString();
        Object obj = s;
        Object obj1 = s;
        StringWriter stringwriter;
        PrintWriter printwriter;
        try
        {
            stringwriter = new StringWriter();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
            return ((String) (obj));
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable)
        {
            return ((String) (obj1));
        }
        obj = s;
        obj1 = s;
        printwriter = new PrintWriter(stringwriter);
        obj = s;
        obj1 = s;
        throwable.printStackTrace(printwriter);
        obj = s;
        obj1 = s;
        printwriter.flush();
        obj = s;
        obj1 = s;
        stringwriter.flush();
        obj = s;
        obj1 = s;
        throwable = stringwriter.toString();
        obj = throwable;
        obj1 = throwable;
        printwriter.close();
        obj = throwable;
        obj1 = throwable;
        stringwriter.close();
        return throwable;
    }

    private boolean checkWebService()
    {
        int i = ((HttpURLConnection)(new URL("http://www.baidu.com")).openConnection()).getResponseCode();
        if (i == 200)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_33;
        Object obj;
        obj;
        ((MalformedURLException) (obj)).printStackTrace();
_L2:
        return false;
        obj;
        ((IOException) (obj)).printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean checkWebService2()
    {
        StrictMode.setThreadPolicy((new android.os.StrictMode.ThreadPolicy.Builder()).detectDiskReads().detectDiskWrites().detectNetwork().penaltyLog().build());
        StrictMode.setVmPolicy((new android.os.StrictMode.VmPolicy.Builder()).detectLeakedSqlLiteObjects().detectLeakedClosableObjects().penaltyLog().penaltyDeath().build());
        int i;
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL((new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_TOTAL))).append("/test/1").toString())).openConnection();
        httpurlconnection.setConnectTimeout(500);
        httpurlconnection.setReadTimeout(500);
        i = httpurlconnection.getResponseCode();
        if (i == 200)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_118;
        Object obj;
        obj;
        ((MalformedURLException) (obj)).printStackTrace();
_L2:
        return false;
        obj;
        ((IOException) (obj)).printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
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

    private boolean isConnect()
    {
        Object obj = (ConnectivityManager)getSystemService("connectivity");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        android.net.NetworkInfo.State state;
        if (!((NetworkInfo) (obj)).isConnected())
        {
            break MISSING_BLOCK_LABEL_47;
        }
        obj = ((NetworkInfo) (obj)).getState();
        state = android.net.NetworkInfo.State.CONNECTED;
        if (obj == state)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_47;
        Exception exception;
        exception;
        return false;
    }

    public static boolean isMobileNO(String s)
    {
        return Pattern.compile("^(1[3-9])\\d{9}$").matcher(s).matches();
    }

    public boolean CreatFileSdcard()
    {
        if (!Environment.getExternalStorageState().equals("mounted"))
        {
            showMsgToast("\u8BF7\u63D2\u5165\u5916\u90E8SD\u5B58\u50A8\u5361");
            return false;
        }
        File file = new File(APPConf.PHOTO_SAVE_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        file = new File(APPConf.PHOTO_SAVE2_PATH);
        if (!file.exists())
        {
            file.mkdir();
        }
        return true;
    }

    public boolean checkNetWork()
    {
        boolean flag;
        flag = true;
        if (!isConnect())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        showLoading();
        if (executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
        {
            return true;
        }
        int i;
        try
        {
            new DoCheckNetWorkConn(this, getApplicationContext());
            i = network_state;
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
        if (i != 0)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_74;
        flag = false;
        return flag;
    }

    public void diffTime()
    {
        if (!getSharedPreferences("TimeDifference", 0).getString("difftime", "").equals(""))
        {
            break MISSING_BLOCK_LABEL_41;
        }
        new DoTimeDifferenceConn(Long.toString(System.currentTimeMillis()), this);
        return;
        Exception exception;
        exception;
    }

    public void doCheckNetWorkErr(String s)
    {
        network_state = 1;
    }

    public void doCheckNetWorkSucc(String s)
    {
        network_state = 0;
    }

    public void doTimeDifferenceErr(String s)
    {
    }

    public void doTimeDifferenceSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        Object obj = TimeDifferenceParser.Timedifferenceparaser(s);
        if (s.contains("OK"))
        {
            s = ((TimeDifference)((List)obj).get(0)).getTimedifference();
            obj = getSharedPreferences("TimeDifference", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("difftime", s);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
        }
        return;
        s;
    }

    public String getConnectedSSID()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getApplicationContext().getSystemService("wifi");
        }
        WifiInfo wifiinfo = wifiMgr.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID();
        } else
        {
            return "";
        }
    }

    public String getLocalMacAddress()
    {
        if (wifiMgr == null)
        {
            wifiMgr = (WifiManager)getApplicationContext().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public int getScreenHeight()
    {
        return ((WindowManager)getSystemService("window")).getDefaultDisplay().getHeight();
    }

    public int getScreenWidth()
    {
        return ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
    }

    protected void hideLoading()
    {
        if (ll_pageInnerLoading.getVisibility() == 0)
        {
            ll_pageInnerLoading.setVisibility(8);
        }
    }

    public void onPause()
    {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    public void onResume()
    {
        super.onResume();
        MobclickAgent.onResume(this);
    }

    protected void showDialog(String s, final boolean isFinish)
    {
        (new android.app.AlertDialog.Builder(this)).setTitle("\u63D0\u793A").setMessage(s).setPositiveButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            final ThinkAndroidBaseActivity this$0;
            private final boolean val$isFinish;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                if (isFinish)
                {
                    dialoginterface.dismiss();
                }
            }

            
            {
                this$0 = ThinkAndroidBaseActivity.this;
                isFinish = flag;
                super();
            }
        }).show();
    }

    protected void showLoading()
    {
        ll_pageInnerLoading.setVisibility(0);
        if (msInnerLoadingAnim.isRunning())
        {
            msInnerLoadingAnim.stop();
            msInnerLoadingAnim.start();
            return;
        } else
        {
            msInnerLoadingAnim.start();
            return;
        }
    }

    protected void showMsgToast(String s)
    {
        Toast.makeText(this, s, 10).show();
    }

    public void umengCount(String s)
    {
        MobclickAgent.onEvent(this, s);
    }
}
