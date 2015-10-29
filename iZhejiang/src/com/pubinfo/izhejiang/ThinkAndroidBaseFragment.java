// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.Activity;
import android.app.Fragment;
import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.cat.data.TimeDifference;
import com.cat.impl.DoTimeDifferenceConn;
import com.cat.parase.TimeDifferenceParser;
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

public class ThinkAndroidBaseFragment extends Fragment
    implements DoTimeDifferenceInterface
{
    public class MyThread extends Thread
    {

        final ThinkAndroidBaseFragment this$0;

        public void run()
        {
            try
            {
                ThinkAndroidBaseFragment.executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L);
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
            this$0 = ThinkAndroidBaseFragment.this;
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
    private WifiManager wifiManager;
    protected WifiManager wifiMgr;

    public ThinkAndroidBaseFragment()
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
        int i;
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL((new StringBuilder(String.valueOf(HttpConf.iWiFi_WIFI_TOTAL))).append("/test/1").toString())).openConnection();
        httpurlconnection.setConnectTimeout(500);
        httpurlconnection.setReadTimeout(500);
        i = httpurlconnection.getResponseCode();
        if (i == 200)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_68;
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
        Log.i("checkNetWork", "st");
        s = Runtime.getRuntime().exec(s);
        worker = new Worker(s, null);
        int i;
        worker.start();
        worker.join(l);
        if (worker.exit == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        i = worker.exit.intValue();
        s.destroy();
        return i;
        throw new TimeoutException();
        InterruptedException interruptedexception;
        interruptedexception;
        Log.i("checkNetWorkInterruptedException", "st");
        interruptedexception.printStackTrace();
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
        Object obj = (ConnectivityManager)getActivity().getSystemService("connectivity");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        obj = ((ConnectivityManager) (obj)).getActiveNetworkInfo();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        android.net.NetworkInfo.State state;
        if (!((NetworkInfo) (obj)).isConnected())
        {
            break MISSING_BLOCK_LABEL_50;
        }
        obj = ((NetworkInfo) (obj)).getState();
        state = android.net.NetworkInfo.State.CONNECTED;
        if (obj == state)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_50;
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
        if (!isConnect())
        {
            break MISSING_BLOCK_LABEL_103;
        }
        Log.i("checkNetWork", "true");
        if (executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 5000L) != 0)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        Log.i("checkNetWork_pingbaidu", "true");
        return true;
        try
        {
            Log.i("checkNetWork_pingbaidu", "false");
        }
        catch (IOException ioexception)
        {
            Log.i("checkNetWork_exception", "false");
            ioexception.printStackTrace();
            return false;
        }
        catch (InterruptedException interruptedexception)
        {
            Log.i("checkNetWork_exception", "false");
            interruptedexception.printStackTrace();
            return false;
        }
        catch (TimeoutException timeoutexception)
        {
            Log.i("checkNetWork_exception", "false");
            timeoutexception.printStackTrace();
            return false;
        }
        return false;
        Log.i("checkNetWork", "false");
        return false;
    }

    public void diffTime()
    {
        if (!getActivity().getSharedPreferences("TimeDifference", 0).getString("difftime", "").equals(""))
        {
            break MISSING_BLOCK_LABEL_44;
        }
        new DoTimeDifferenceConn(Long.toString(System.currentTimeMillis()), this);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    public void doTimeDifferenceErr(String s)
    {
    }

    public void doTimeDifferenceSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        Object obj = TimeDifferenceParser.Timedifferenceparaser(s);
        if (s.contains("OK"))
        {
            s = ((TimeDifference)((List)obj).get(0)).getTimedifference();
            obj = getActivity().getSharedPreferences("TimeDifference", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).clear();
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("difftime", s);
            ((android.content.SharedPreferences.Editor) (obj)).commit();
        }
        return;
        s;
    }

    public String getConnectedSSID()
    {
        wifiManager = (WifiManager)getActivity().getSystemService("wifi");
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
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
            wifiMgr = (WifiManager)getActivity().getSystemService("wifi");
        }
        return wifiMgr.getConnectionInfo().getMacAddress();
    }

    public void onPause()
    {
        super.onPause();
        MobclickAgent.onPageEnd("SplashScreen");
    }

    public void onResume()
    {
        super.onResume();
        MobclickAgent.onPageStart("SplashScreen");
    }
}
