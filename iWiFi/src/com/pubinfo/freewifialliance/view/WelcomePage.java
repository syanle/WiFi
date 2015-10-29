// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;
import com.pubinfo.freewifialliance.controller.WelcomeFun;
import com.pubinfo.freewifialliance.location.LocationManager;
import com.pubinfo.freewifialliance.location.TimeOutHeartTask;
import com.pubinfo.freewifialliance.update.AWingUpdater;
import com.pubinfo.wifi_core.AppBaseActivity;
import com.pubinfo.wifi_core.core.data.ComData;
import com.pubinfo.wifi_core.core.database.Database;
import com.pubinfo.wifi_core.core.database.WifiInfoData;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class WelcomePage extends WelcomeFun
    implements android.view.View.OnClickListener, DownloadListener, android.os.Handler.Callback
{
    class MyWebViewClient2 extends WebViewClient
    {

        final WelcomePage this$0;

        public void onLoadResource(WebView webview, String s)
        {
            super.onLoadResource(webview, s);
        }

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (webview == null || s == null || s.length() == 0)
            {
                return false;
            }
            if (s.startsWith("tel:"))
            {
                webview = new Intent("android.intent.action.DIAL", Uri.parse(s));
                startActivity(webview);
                return true;
            }
            if (s.startsWith("rtsp://"))
            {
                webview = new Intent("android.intent.action.VIEW", Uri.parse(s));
                startActivity(webview);
                return true;
            }
            if (s.endsWith(".apk"))
            {
                pack = s.substring(s.lastIndexOf("/") + 1, s.indexOf("_"));
                launchActivity = s.substring(s.indexOf("_") + 1, s.indexOf(".apk"));
                if (isPackageExist(pack, launchActivity))
                {
                    try
                    {
                        webview = new Intent("android.intent.action.MAIN");
                        webview.addCategory("android.intent.category.LAUNCHER");
                        webview.setComponent(new ComponentName(pack, launchActivity));
                        startActivity(webview);
                    }
                    // Misplaced declaration of an exception variable
                    catch (WebView webview)
                    {
                        showMsgToast("\u8BF7\u4E0B\u8F7D\u6700\u65B0\u7248\u672C\uFF01");
                        return true;
                    }
                    return true;
                } else
                {
                    alertDialog = (new android.app.AlertDialog.Builder(WelcomePage.this)).setMessage("\u662F\u5426\u4E0B\u8F7D\u8BE5\u5E94\u7528\uFF1F").setPositiveButton("\u786E\u5B9A", s. new android.content.DialogInterface.OnClickListener() {

                        final MyWebViewClient2 this$1;
                        private final String val$url;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(url));
                            startActivity(intent);
                            dialoginterface.cancel();
                        }

            
            {
                this$1 = final_mywebviewclient2;
                url = String.this;
                super();
            }
                    }).setNegativeButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

                        final MyWebViewClient2 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.cancel();
                        }

            
            {
                this$1 = MyWebViewClient2.this;
                super();
            }
                    }).create();
                    alertDialog.show();
                    return true;
                }
            } else
            {
                webview.loadUrl(s);
                return true;
            }
        }


        MyWebViewClient2()
        {
            this$0 = WelcomePage.this;
            super();
        }
    }


    public static final int NO_UPDATE = 0xabcd006;
    public static final int UPDATE_START = 0xabcd00a;
    private static Handler handler;
    public static int loading_process;
    String WIFIHIT;
    private AlertDialog alertDialog;
    private AWingUpdater awUpdater;
    protected Button btnBack;
    String device_id;
    String downloadurl;
    File file;
    String fileName;
    Handler handlers;
    private boolean isGetLocate;
    String lat;
    String launchActivity;
    String lng;
    private LocationManager locationManager;
    private int mLocalVersionCode;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    private Thread mThread;
    String pack;
    String phone;
    String ssid;
    String url;
    private WebView webView;
    protected ImageButton web_back;
    protected ImageButton web_refresh;
    protected ImageButton web_stop;
    protected ImageButton web_towards;
    WifiManager wifiManager;

    public WelcomePage()
    {
        mPackMg = null;
        mLocalVersionCode = 0;
        mLocalVersionName = "";
        mThread = null;
        awUpdater = null;
        WIFIHIT = "com.pubinfo.freewifialliance.service.WifiHitService";
        isGetLocate = false;
    }

    private void getLocation()
    {
        if (isOPen(context) != 1)
        {
            locationManager = new LocationManager(0, context, handler);
            locationManager.onStart();
            (new Timer()).schedule(new TimeOutHeartTask(handler, context, 30000L, 0), 1000L);
            return;
        }
        if (isOPen(context) == 1)
        {
            locationManager = new LocationManager(1, context, handler);
            locationManager.onStart();
            (new Timer()).schedule(new TimeOutHeartTask(handler, context, 30000L, 0), 1000L);
            return;
        }
        if (isOPen(context) == 2)
        {
            locationManager = new LocationManager(2, context, handler);
            locationManager.onStart();
            (new Timer()).schedule(new TimeOutHeartTask(handler, context, 30000L, 0), 1000L);
            return;
        } else
        {
            locationManager = new LocationManager(0, context, handler);
            locationManager.onStart();
            (new Timer()).schedule(new TimeOutHeartTask(handler, context, 30000L, 0), 1000L);
            return;
        }
    }

    public static String[] getStringArr(String s, String s1)
    {
        return s.split(s1);
    }

    public static final int isOPen(Context context)
    {
        context = (android.location.LocationManager)context.getSystemService("location");
        boolean flag = context.isProviderEnabled("gps");
        boolean flag1 = context.isProviderEnabled("network");
        if (flag)
        {
            return 1;
        }
        return !flag1 ? 0 : 2;
    }

    private boolean isPackageExist(String s, String s1)
    {
        s1 = new Intent("android.intent.action.MAIN", null);
        s1.addCategory("android.intent.category.LAUNCHER");
        s1 = getPackageManager().queryIntentActivities(s1, 0);
        int i = 0;
        do
        {
            if (i >= s1.size())
            {
                return false;
            }
            if (((ResolveInfo)s1.get(i)).activityInfo.applicationInfo.packageName.equalsIgnoreCase(s))
            {
                return true;
            }
            i++;
        } while (true);
    }

    private void sendMsg(int i, int j)
    {
        Message message = new Message();
        message.what = i;
        message.arg1 = j;
        handlers.sendMessage(message);
    }

    public void Beginning()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("down", 0).edit();
        editor.clear();
        editor.commit();
        (new Thread() {

            final WelcomePage this$0;

            public void run()
            {
                loadFile(downloadurl);
            }

            
            {
                this$0 = WelcomePage.this;
                super();
            }
        }).start();
    }

    public String getConnectedWifiSSId()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        WifiInfo wifiinfo = wifiManager.getConnectionInfo();
        if (wifiinfo != null)
        {
            return wifiinfo.getSSID().replace("\"", "");
        } else
        {
            return "";
        }
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 993 995: default 32
    //                   993 34
    //                   994 32
    //                   995 73;
           goto _L1 _L2 _L1 _L3
_L1:
        return false;
_L2:
        message = getStringArr((String)message.obj, "&&");
        lng = message[0];
        lat = message[1];
        isGetLocate = true;
        start();
        return false;
_L3:
        if (message.arg1 == 0 && !isGetLocate)
        {
            Toast.makeText(context, "\u5B9A\u4F4D\u5931\u8D25\uFF0C\u8BF7\u786E\u8BA4\u6570\u636E\u7F51\u7EDC\u6B63\u5E38\uFF0C\u7A0D\u540E\u518D\u8BD5", 0).show();
            start();
            return false;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void loadFile(String s)
    {
        Object obj;
        obj = new DefaultHttpClient();
        s = new HttpGet(s.trim());
        float f1;
        s = ((HttpClient) (obj)).execute(s).getEntity();
        f1 = s.getContentLength();
        obj = s.getContent();
        s = null;
        if (obj == null) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        s = new FileOutputStream(file);
        abyte0 = new byte[1024];
        float f = 0.0F;
_L6:
        int i = ((InputStream) (obj)).read(abyte0);
        if (i != -1) goto _L4; else goto _L3
_L3:
        double d = f;
_L2:
        sendMsg(2, 0);
        s.flush();
        if (s != null)
        {
            try
            {
                s.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                sendMsg(-1, 0);
            }
        }
        break; /* Loop/switch isn't completed */
_L4:
        s.write(abyte0, 0, i);
        f += i;
        sendMsg(1, (int)((100F * f) / f1));
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onClick(View view)
    {
        if (view.equals(web_back))
        {
            webView.goBack();
        } else
        {
            if (view.equals(web_towards))
            {
                webView.goForward();
                return;
            }
            if (view.equals(web_refresh))
            {
                webView.reload();
                return;
            }
            if (view.equals(web_stop))
            {
                webView.stopLoading();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030039);
        handler = new Handler(this);
        web_back = (ImageButton)findViewById(0x7f0c00e0);
        web_back.setOnClickListener(this);
        web_towards = (ImageButton)findViewById(0x7f0c00e1);
        web_towards.setOnClickListener(this);
        web_refresh = (ImageButton)findViewById(0x7f0c00e2);
        web_refresh.setOnClickListener(this);
        web_stop = (ImageButton)findViewById(0x7f0c00e3);
        web_stop.setOnClickListener(this);
        webView = (WebView)findViewById(0x7f0c00de);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.requestFocus();
        webView.setWebViewClient(new MyWebViewClient2());
        webView.setDownloadListener(this);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        Database.getInstance(this).selectUserRow();
        webView.loadUrl("http://app.51iwifi.com:12380/redirect.jsp");
        umengCount("connSucc");
        startWifiHitService();
        bundle = new Intent();
        bundle.setAction("com.pubinfo.freewifialliance.service.WifiConnService.FreshBroadcastReceiver");
        sendBroadcast(bundle);
        updateSsidList();
        getLocation();
    }

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (webView.canGoBack() && i == 4)
        {
            webView.goBack();
            return true;
        }
        if (!webView.canGoBack())
        {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            startActivity(intent);
            finish();
        }
        return super.onKeyDown(i, keyevent);
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    public void openBrowser(String s)
    {
        webView.loadUrl(s);
    }

    public void start()
    {
        handlers = new Handler(new android.os.Handler.Callback() {

            final WelcomePage this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR lookupswitch 5: default 56
            //                           -1: 401
            //                           1: 317
            //                           2: 327
            //                           180146182: 300
            //                           180146186: 58;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                return true;
_L6:
                Object obj = message.getData();
                message = ((Bundle) (obj)).getString("introfomation");
                downloadurl = ((Bundle) (obj)).getString("downloadUrl");
                String s = ((Bundle) (obj)).getString("update_grade");
                String s1 = ((Bundle) (obj)).getString("version_name");
                int i = ((Bundle) (obj)).getInt("version_code");
                fileName = downloadurl.substring(downloadurl.lastIndexOf("/") + 1, downloadurl.length());
                obj = getSharedPreferences("FileName", 0).edit();
                ((android.content.SharedPreferences.Editor) (obj)).putString("item", fileName);
                ((android.content.SharedPreferences.Editor) (obj)).putString("intro", message);
                ((android.content.SharedPreferences.Editor) (obj)).putString("version_name", s1);
                ((android.content.SharedPreferences.Editor) (obj)).putString("update_grade", s);
                ((android.content.SharedPreferences.Editor) (obj)).putInt("version_code", i);
                ((android.content.SharedPreferences.Editor) (obj)).commit();
                file = new File(Environment.getExternalStorageDirectory(), "AiWifi.apk");
                if (!file.exists())
                {
                    try
                    {
                        file.createNewFile();
                    }
                    // Misplaced declaration of an exception variable
                    catch (Message message)
                    {
                        message.printStackTrace();
                    }
                }
                Beginning();
                continue; /* Loop/switch isn't completed */
_L5:
                try
                {
                    Thread.sleep(1000L);
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                WelcomePage.loading_process = message.arg1;
                continue; /* Loop/switch isn't completed */
_L4:
                try
                {
                    Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(file).toString());
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                message = getSharedPreferences("down", 0).edit();
                message.putString("done", "y");
                message.commit();
                continue; /* Loop/switch isn't completed */
_L2:
                message.getData().getString("error");
                if (true) goto _L1; else goto _L7
_L7:
            }

            
            {
                this$0 = WelcomePage.this;
                super();
            }
        });
        final File file = getBaseContext().getDir("apk_catch", 1);
        mPackMg = getBaseContext().getPackageManager();
        Intent intent = getIntent();
        ssid = intent.getStringExtra("ssid");
        device_id = intent.getStringExtra("device_id");
        if (ComData.getInstance().getWifiInfoData() != null && ComData.getInstance().getWifiInfoData().size() > 0)
        {
            phone = ((WifiInfoData)ComData.getInstance().getWifiInfoData().get(0)).getPhone();
        } else
        {
            phone = "";
        }
        url = (new StringBuilder("?mobile=")).append(phone).append("&lat=").append(lat).append("&lng=").append(lng).append("&ssid=").append(ssid).append("&dev_id=").append(device_id).append("&platform=").append(android.os.Build.VERSION.RELEASE).append("&ter_type=1").toString();
        try
        {
            PackageInfo packageinfo = mPackMg.getPackageInfo(getBaseContext().getPackageName(), 1);
            mLocalVersionCode = packageinfo.versionCode;
            mLocalVersionName = packageinfo.versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.printStackTrace();
        }
        mThread = new Thread() {

            final WelcomePage this$0;
            private final File val$file;

            public void run()
            {
                awUpdater = new AWingUpdater(handlers);
                awUpdater.readyForUpdate(mLocalVersionCode, mLocalVersionName, file.toString(), url);
            }

            
            {
                this$0 = WelcomePage.this;
                file = file1;
                super();
            }
        };
        mThread.start();
    }

    public void startWifiHitService()
    {
        Object obj;
        boolean flag;
        flag = false;
        obj = (ActivityManager)getSystemService("activity");
        ((ActivityManager) (obj)).getRunningServices(0x7fffffff);
        obj = ((ActivityManager) (obj)).getRunningServices(0x7fffffff).iterator();
_L2:
        if (((Iterator) (obj)).hasNext())
        {
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)((Iterator) (obj)).next();
            if (!WIFIHIT.equals(runningserviceinfo.service.getClassName()))
            {
                continue; /* Loop/switch isn't completed */
            }
            flag = true;
        }
        if (!flag)
        {
            obj = new Intent();
            ((Intent) (obj)).setAction(WIFIHIT);
            context.startService(((Intent) (obj)));
        }
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }








}
