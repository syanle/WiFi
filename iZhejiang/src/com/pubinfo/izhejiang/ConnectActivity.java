// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.cat.data.ApInfoData;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.list.ImageDownloader;
import com.cat.list.OnImageDownload;
import com.cat.parase.ApInfoParser;
import com.cat.parase.PublicParser;
import com.cat.tools.SelectSharePopupWindow;
import com.iwifi.sdk.protocol.impl.DoAuthenticationLogoffOperation;
import com.pubinfo.androidpn.client.AndroidpnStatusReceiver;
import com.pubinfo.izhejiang.controller.ConnectFun;
import com.pubinfo.izhejiang.update.AWingUpdater;
import com.wifi.util.WifiAdmin;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import org.androidpn.client.ServiceManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.pubinfo.izhejiang:
//            CommentActivity

public class ConnectActivity extends ConnectFun
{
    public class MyThread extends Thread
    {

        final ConnectActivity this$0;

        public void run()
        {
            Looper.prepare();
            if (!(new StringBuilder("\"")).append(ssidclick).append("\"").toString().equals(ssidconnect) && !ssidclick.equals(ssidconnect)) goto _L2; else goto _L1
_L1:
            connWifiBy();
_L4:
            Looper.loop();
            return;
_L2:
            try
            {
                changeWifiBy();
            }
            catch (Exception exception) { }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public MyThread()
        {
            this$0 = ConnectActivity.this;
            super();
        }
    }

    public class MyThread2 extends Thread
    {

        final ConnectActivity this$0;

        public void run()
        {
            try
            {
                Looper.prepare();
                startUpdate();
            }
            catch (Exception exception) { }
            Looper.loop();
        }

        public MyThread2()
        {
            this$0 = ConnectActivity.this;
            super();
        }
    }

    public class MyThreadZan extends Thread
    {

        final ConnectActivity this$0;

        public void run()
        {
            try
            {
                Looper.prepare();
                getComment(wifimac, username, "1", "1", getApplicationContext());
            }
            catch (Exception exception) { }
            Looper.loop();
        }

        public MyThreadZan()
        {
            this$0 = ConnectActivity.this;
            super();
        }
    }

    private class SetTimerReceiver extends BroadcastReceiver
    {

        final ConnectActivity this$0;
        int time;

        public void onReceive(Context context, Intent intent1)
        {
            if (intent1 != null)
            {
                context = intent1.getAction();
                if (context != null && "com.settings.timer".equals(context))
                {
                    time = intent1.getIntExtra("times", 0);
                    setConectTime(getStandardTime(time));
                }
            }
        }

        private SetTimerReceiver()
        {
            this$0 = ConnectActivity.this;
            super();
            time = 0;
        }
    }


    public static final int NO_UPDATE = 0xabcd006;
    static final String SETTINGS_UPDATE_UI = "com.settings.timer";
    public static final int UPDATE_START = 0xabcd00a;
    public static int loading_process;
    String WIFICONN;
    String accountid;
    private AWingUpdater awUpdater;
    ImageButton back;
    String city;
    boolean click_zan;
    String countrycode;
    String device_id;
    String downloadurl;
    File file;
    String fileName;
    Handler handlers;
    int idex;
    Intent intent;
    private android.view.View.OnClickListener itemsOnClick;
    ImageView iv_type;
    String lat;
    String logourl;
    String lon;
    ImageDownloader mDownloader;
    private int mLocalVersionCode;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    private Thread mThread;
    private Runnable mTicker;
    private Handler mainHandler;
    SelectSharePopupWindow menuWindow;
    private AnimationDrawable msInnerLoadingAnim;
    android.view.View.OnClickListener onClickListener;
    Boolean receiveroff;
    RelativeLayout rl_confirm;
    RelativeLayout rl_logo;
    RelativeLayout rl_network;
    RelativeLayout rl_safety;
    RelativeLayout rl_share;
    SetTimerReceiver setTimerReceiver;
    String ssidclick;
    String ssidconnect;
    long startTime;
    private Handler stepTimeHandler;
    String tag_yesno;
    TextView title;
    TextView tv1;
    TextView tv2;
    TextView tv3;
    TextView tv4;
    TextView tv5;
    ImageView tv_safety;
    String type;
    String url;
    String username;
    WifiManager wifiManager;
    String wifimac;

    public ConnectActivity()
    {
        click_zan = true;
        msInnerLoadingAnim = null;
        WIFICONN = "com.cat.service.TimeService";
        receiveroff = Boolean.valueOf(true);
        tag_yesno = null;
        startTime = 0L;
        mPackMg = null;
        mLocalVersionCode = 0;
        mLocalVersionName = "";
        mThread = null;
        awUpdater = null;
        idex = 0;
        onClickListener = new android.view.View.OnClickListener() {

            final ConnectActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361840: 
                    menuWindow = new SelectSharePopupWindow(ConnectActivity.this, itemsOnClick);
                    menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
                    return;

                case 2131361836: 
                    view = new Intent();
                    setResult(3, view);
                    finish();
                    return;

                case 2131361908: 
                    goIntent();
                    break;
                }
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        };
        itemsOnClick = new android.view.View.OnClickListener() {

            final ConnectActivity this$0;

            public void onClick(View view)
            {
                menuWindow.dismiss();
                view.getId();
                JVM INSTR tableswitch 2131361823 2131361825: default 40
            //                           2131361823 41
            //                           2131361824 74
            //                           2131361825 128;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L2:
                if (click_zan)
                {
                    (new MyThreadZan()).start();
                    click_zan = false;
                    return;
                }
                  goto _L1
_L3:
                view = new Intent(getApplicationContext(), com/pubinfo/izhejiang/CommentActivity);
                view.putExtra("mac", wifimac);
                view.putExtra("username", username);
                startActivity(view);
                return;
_L4:
                showShare(true, null, false);
                return;
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    private void goIntent()
    {
        if (tag_yesno.equals("yes"))
        {
            disconnWifiBy();
            finish();
        } else
        if (tag_yesno.equals("no"))
        {
            initFresh();
            (new MyThread()).start();
            btn_commit.setVisibility(4);
            return;
        }
    }

    private void init()
    {
        ShareSDK.initSDK(this);
        back = (ImageButton)findViewById(0x7f0a002c);
        title = (TextView)findViewById(0x7f0a002d);
        rl_confirm = (RelativeLayout)findViewById(0x7f0a0030);
        rl_logo = (RelativeLayout)findViewById(0x7f0a006e);
        iv_tag = (ImageView)findViewById(0x7f0a00c9);
        tv_msg = (TextView)findViewById(0x7f0a00ca);
        rl_network = (RelativeLayout)findViewById(0x7f0a00cb);
        rl_safety = (RelativeLayout)findViewById(0x7f0a00cd);
        iv_type = (ImageView)findViewById(0x7f0a00cc);
        tv_safety = (ImageView)findViewById(0x7f0a00ce);
        tv1 = (TextView)findViewById(0x7f0a00b9);
        tv2 = (TextView)findViewById(0x7f0a00cf);
        tv3 = (TextView)findViewById(0x7f0a00d0);
        tv4 = (TextView)findViewById(0x7f0a00d2);
        tv5 = (TextView)findViewById(0x7f0a00d5);
        btn_commit = (Button)findViewById(0x7f0a0074);
        rl_share = (RelativeLayout)findViewById(0x7f0a0030);
        msInnerLoadingAnim = (AnimationDrawable)rl_logo.getBackground();
        type = getIntent().getStringExtra("type");
        logourl = getIntent().getStringExtra("logourl");
        ssidclick = getIntent().getStringExtra("ssidclick");
        ssidconnect = getIntent().getStringExtra("ssidconnect");
        title.setText(ssidclick);
        Object obj = getSharedPreferences("ConnectActivity", 0).edit();
        ((android.content.SharedPreferences.Editor) (obj)).putString("ssidclick", ssidclick);
        ((android.content.SharedPreferences.Editor) (obj)).putString("ssidconnect", ssidconnect);
        obj = getSharedPreferences("LoginSucess", 0);
        username = ((SharedPreferences) (obj)).getString("username", "");
        countrycode = ((SharedPreferences) (obj)).getString("countrycode", "");
        back.setOnClickListener(onClickListener);
        rl_confirm.setOnClickListener(onClickListener);
        rl_network.setOnClickListener(onClickListener);
        rl_safety.setOnClickListener(onClickListener);
        btn_commit.setOnClickListener(onClickListener);
        rl_share.setOnClickListener(onClickListener);
        btn_commit.setVisibility(8);
        iv_tag.setVisibility(8);
        rl_share.setVisibility(8);
        wifiManager = (WifiManager)getSystemService("wifi");
        (new MyThread()).start();
    }

    private void initFresh()
    {
        iv_tag.setVisibility(8);
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

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final ConnectActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 2 6: default 40
            //                           2 42
            //                           3 61
            //                           4 132
            //                           5 374
            //                           6 610;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                return true;
_L2:
                showMsgToast(getString(0x7f060031));
                continue; /* Loop/switch isn't completed */
_L3:
                message = ComData.getInstance().getpError();
                if (message == null || message.size() <= 0) goto _L8; else goto _L7
_L7:
                int i = 0;
_L10:
                if (i < message.size()) goto _L9; else goto _L8
_L8:
                ComData.getInstance().setpError(null);
                continue; /* Loop/switch isn't completed */
_L9:
                String s = ((PublicError)message.get(i)).getMessage();
                showMsgToast(s);
                i++;
                if (true) goto _L10; else goto _L4
_L4:
                if ((new StringBuilder("\"")).append(ssidclick).append("\"").toString().equals(ssidconnect) || ssidclick.equals(ssidconnect))
                {
                    message = getSharedPreferences("ConnectTime", 0);
                    startTime = message.getLong("startTime", 0L);
                    message = message.getString("ssid", "");
                    if (startTime == 0L || !ssidclick.equals(message))
                    {
                        tv2.setText("00:00:00");
                        stepTimeHandler = new Handler();
                        startTime = System.currentTimeMillis();
                        message = getSharedPreferences("ConnectTime", 0).edit();
                        message.putLong("startTime", startTime);
                        message.putString("ssid", ssidclick);
                        message.commit();
                        mTicker = new Runnable() {

                            final _cls6 this$1;

                            public void run()
                            {
                                String s = showTimeCount(System.currentTimeMillis() - startTime);
                                tv2.setText(s);
                                long l = SystemClock.uptimeMillis();
                                stepTimeHandler.postAtTime(mTicker, l + (1000L - l % 1000L));
                            }

            
            {
                this$1 = _cls6.this;
                super();
            }
                        };
                        mTicker.run();
                    } else
                    {
                        stepTimeHandler = new Handler();
                        mTicker = new Runnable() {

                            final _cls6 this$1;

                            public void run()
                            {
                                String s = showTimeCount(System.currentTimeMillis() - startTime);
                                tv2.setText(s);
                                long l = SystemClock.uptimeMillis();
                                stepTimeHandler.postAtTime(mTicker, l + (1000L - l % 1000L));
                            }

            
            {
                this$1 = _cls6.this;
                super();
            }
                        };
                        mTicker.run();
                    }
                } else
                {
                    tv2.setText("00:00:00");
                    stepTimeHandler = new Handler();
                    startTime = System.currentTimeMillis();
                    message = getSharedPreferences("ConnectTime", 0).edit();
                    message.putLong("startTime", startTime);
                    message.putString("ssid", ssidclick);
                    message.commit();
                    mTicker = new Runnable() {

                        final _cls6 this$1;

                        public void run()
                        {
                            String s = showTimeCount(System.currentTimeMillis() - startTime);
                            tv2.setText(s);
                            long l = SystemClock.uptimeMillis();
                            stepTimeHandler.postAtTime(mTicker, l + (1000L - l % 1000L));
                        }

            
            {
                this$1 = _cls6.this;
                super();
            }
                    };
                    mTicker.run();
                }
_L5:
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0 && ((PublicError)message.get(0)).getCode().equals("260"))
                {
                    showMsgToast(((PublicError)message.get(0)).getMessage());
                }
                ComData.getInstance().setpError(null);
                continue; /* Loop/switch isn't completed */
_L6:
                mainHandler.sendEmptyMessage(4);
                setStatus(0x7f020029, getString(0x7f060014), getString(0x7f060017), 0, type, logourl);
                if (true) goto _L1; else goto _L11
_L11:
            }


            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        });
    }

    private void sendMsg(int i, int j)
    {
        Message message = new Message();
        message.what = i;
        message.arg1 = j;
        handlers.sendMessage(message);
    }

    private void showShare()
    {
        ShareSDK.initSDK(this);
        OnekeyShare onekeyshare = new OnekeyShare();
        onekeyshare.disableSSOWhenAuthorize();
        onekeyshare.setTitle(getString(0x7f06008f));
        onekeyshare.setTitleUrl("http://sharesdk.cn");
        onekeyshare.setText(getString(0x7f06002d));
        onekeyshare.setImagePath("/sdcard/Test.jpg");
        onekeyshare.setUrl("http://sharesdk.cn");
        onekeyshare.setComment("\u6211\u662F\u6D4B\u8BD5\u8BC4\u8BBA\u6587\u672C");
        onekeyshare.setSite(getString(0x7f060000));
        onekeyshare.setSiteUrl("http://sharesdk.cn");
        onekeyshare.setSilent(true);
        onekeyshare.show(this);
    }

    private void showShare(boolean flag, String s, boolean flag1)
    {
        Context context = getApplicationContext();
        OnekeyShare onekeyshare = new OnekeyShare();
        onekeyshare.setText(getString(0x7f06002d));
        onekeyshare.setUrl("http://izhejiang.51awifi.com/");
        onekeyshare.setFilePath("");
        onekeyshare.setSilent(flag);
        if (s != null)
        {
            onekeyshare.setPlatform(s);
        }
        onekeyshare.setDialogMode();
        onekeyshare.disableSSOWhenAuthorize();
        onekeyshare.show(context);
    }

    public void Beginning()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("down", 0).edit();
        editor.clear();
        editor.commit();
        (new Thread() {

            final ConnectActivity this$0;

            public void run()
            {
                loadFile(downloadurl);
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        }).start();
    }

    public void changeWifiBy()
    {
        showWifiLoading(getString(0x7f060012));
        try
        {
            if (wifiManager.isWifiEnabled())
            {
                wifiManager.disableNetwork(wifiManager.getConnectionInfo().getNetworkId());
                wifiManager.disconnect();
                WifiAdmin wifiadmin = new WifiAdmin(this);
                wifiadmin.addNetwork(wifiadmin.CreateWifiInfo(ssidclick, "", 1));
            }
        }
        catch (Exception exception) { }
        handler.sendEmptyMessageDelayed(0, 8000L);
    }

    public void connTimeOut()
    {
        setStatus(0x7f020027, getString(0x7f060015), getString(0x7f060016), 1, "", "");
        wifiManager.disableNetwork(wifiManager.getConnectionInfo().getNetworkId());
        wifiManager.disconnect();
    }

    public void connToWifi()
    {
        connWifiBy();
    }

    public void connWifiBy()
    {
        showWifiLoading(getString(0x7f060013));
        (new DoAuthenticationLogoffOperation(this, this)).Global_AuthenticationRequest(username, "2.0", "56697b27fe070c1064f9f5bf8c8174bc", getString(0x7f060001), getString(0x7f060002));
    }

    public void disconnWifiBy()
    {
        SharedPreferences sharedpreferences = getSharedPreferences("LOGOFF", 0);
        result = sharedpreferences.getString("result", "");
        message = sharedpreferences.getString("message", "");
        appauth_type = sharedpreferences.getString("appauth_type", "");
        logoffUrl = sharedpreferences.getString("logoffUrl", "");
        token = sharedpreferences.getString("token", "");
        portal_url = sharedpreferences.getString("portal_url", "");
        platform_code = sharedpreferences.getString("platform_code", "");
        third_token = sharedpreferences.getString("third_token", "");
        dev_id = sharedpreferences.getString("dev_id", "");
        ac_name = sharedpreferences.getString("ac_name", "");
        (new DoAuthenticationLogoffOperation(this, this)).Global_LogoffUrlRequest(username, appauth_type, logoffUrl, token, third_token, ac_name, platform_code, portal_url, getString(0x7f060001), getString(0x7f060002));
    }

    public void doApInfoErr(String s)
    {
        mainHandler.sendEmptyMessage(6);
    }

    public void doApInfoSucc(String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        Object obj;
        obj = ApInfoParser.Apinfoparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(3);
            mainHandler.sendEmptyMessage(6);
            return;
        }
        try
        {
            ComData.getInstance().setApInfoData((List)obj);
            setAPINFO();
            s = (ApInfoData)ComData.getInstance().getApInfoData().get(0);
            if (!s.getNettype().equals("-"))
            {
                type = s.getNettype();
            }
            if (!s.getLogo().equals("-") && !s.getLogo().equals(""))
            {
                logourl = s.getLogo();
            }
            mainHandler.sendEmptyMessage(6);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            mainHandler.sendEmptyMessage(6);
        }
        return;
        mainHandler.sendEmptyMessage(6);
        return;
    }

    public void doCommentErr(String s)
    {
        click_zan = true;
    }

    public void doCommentSucc(String s)
    {
        click_zan = true;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        Object obj = PublicParser.Publicparaser(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(5);
            return;
        }
        try
        {
            setZAN();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
    }

    public void getConfirmFail()
    {
        setStatus(0x7f020027, getString(0x7f060015), getString(0x7f060016), 1, "", "");
    }

    public void getConfirmSuccess(String s, String s1)
    {
        device_id = s;
        accountid = s1;
        wifimac = getConnectedWifiMac();
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;

            public void run()
            {
                rl_share.setVisibility(0);
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        });
        getApInfo(wifimac, username, getApplicationContext());
        s = getSharedPreferences("Location", 0);
        city = s.getString("cityS", "");
        lat = s.getString("lat", "");
        lon = s.getString("lon", "");
        ServiceManager.getInstance(this).disconnectPnServer();
        AndroidpnStatusReceiver.getReceiverInstance().doRegister(this);
        if (lat.equals("") || lon.equals("") || city.equals("")) goto _L2; else goto _L1
_L1:
        AndroidpnStatusReceiver.getReceiverInstance().loadParams(countrycode, username, lat, lon, city);
_L4:
        s = ServiceManager.getInstance(this);
        s.setNotificationIcon(0x7f020057);
        s.startService();
        (new MyThread2()).start();
        return;
_L2:
        if (city.equals(""))
        {
            AndroidpnStatusReceiver.getReceiverInstance().loadParams(countrycode, username, lat, lon, "\u6D59\u6C5F\u7701\u676D\u5DDE\u5E02");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void hideWifiLoading()
    {
        if (msInnerLoadingAnim.isRunning())
        {
            msInnerLoadingAnim.stop();
        }
        rl_logo.setBackgroundDrawable(null);
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

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030009);
        init();
        initialHandler();
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 3)
        {
            finish();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public void onLogoffRequestFail(String s)
    {
        Log.v("iWifiSDKDemo", (new StringBuilder(" onLogoffRequestFail : ")).append(s).toString());
    }

    public void onLogoffRequestSucc(String s)
    {
        getSharedPreferences("LOGOFF", 0).edit().clear().commit();
        Log.v("iWifiSDKDemo", (new StringBuilder(" onLogoffRequestSucc : ")).append(s).toString());
    }

    public void sendMessageToUIThread(Message message)
    {
        handler.sendMessage(message);
    }

    public void setAPINFO()
    {
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;

            public void run()
            {
                tv3.setText("");
                tv5.setText("");
                ApInfoData apinfodata = (ApInfoData)ComData.getInstance().getApInfoData().get(0);
                tv1.setText(apinfodata.getName());
                tv3.setText(apinfodata.getLoad());
                tv4.setText(apinfodata.getCurrentconnect());
                tv5.setText(apinfodata.getAppraisal());
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        });
    }

    public void setConectTime(final String time)
    {
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;
            private final String val$time;

            public void run()
            {
                tv2.setText(time);
            }

            
            {
                this$0 = ConnectActivity.this;
                time = s;
                super();
            }
        });
    }

    public void setStatus(final int drawable, final String msg, final String content, final int i, final String type, final String logourl)
    {
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;
            private final String val$content;
            private final int val$drawable;
            private final int val$i;
            private final String val$logourl;
            private final String val$msg;
            private final String val$type;

            public void run()
            {
                hideWifiLoading();
                iv_tag.setVisibility(0);
                iv_tag.setBackgroundDrawable(null);
                iv_tag.setImageResource(drawable);
                tv_msg.setText(msg);
                btn_commit.setVisibility(0);
                btn_commit.setText(content);
                if (i != 0) goto _L2; else goto _L1
_L1:
                tag_yesno = "yes";
                if (!type.equals("1")) goto _L4; else goto _L3
_L3:
                rl_logo.setBackgroundDrawable(null);
                rl_logo.setBackgroundResource(0x7f020026);
                iv_type.setBackgroundDrawable(null);
                iv_type.setBackgroundResource(0x7f02002e);
                tv_safety.setBackgroundDrawable(null);
                tv_safety.setBackgroundResource(0x7f02002d);
_L6:
                return;
_L4:
                if (type.equals("2"))
                {
                    tv_safety.setBackgroundDrawable(null);
                    tv_safety.setBackgroundResource(0x7f02002d);
                    if (logourl != null && !logourl.equals(""))
                    {
                        rl_logo.setTag(logourl);
                        if (mDownloader == null)
                        {
                            mDownloader = new ImageDownloader();
                        }
                        mDownloader.imageDownload(logourl, rl_logo, "/Awifi", ConnectActivity.this, new OnImageDownload() {

                            final _cls8 this$1;

                            public void onDownloadSucc(Bitmap bitmap, String s, RelativeLayout relativelayout)
                            {
                                s = (RelativeLayout)rl_logo.findViewWithTag(s);
                                if (s != null)
                                {
                                    bitmap = new BitmapDrawable(null, bitmap);
                                    s.setBackgroundDrawable(null);
                                    s.setBackgroundDrawable(bitmap);
                                    s.setTag("");
                                }
                            }

                            public void onDownloadSucc2(Bitmap bitmap, String s, ImageView imageview)
                            {
                            }

            
            {
                this$1 = _cls8.this;
                super();
            }
                        });
                        return;
                    } else
                    {
                        rl_logo.setBackgroundDrawable(null);
                        rl_logo.setBackgroundResource(0x7f020031);
                        iv_type.setBackgroundDrawable(null);
                        iv_type.setBackgroundResource(0x7f02002e);
                        return;
                    }
                }
                if (type.equals("3"))
                {
                    rl_logo.setBackgroundDrawable(null);
                    rl_logo.setBackgroundResource(0x7f02002b);
                    iv_type.setBackgroundDrawable(null);
                    iv_type.setBackgroundResource(0x7f02002f);
                    tv_safety.setBackgroundDrawable(null);
                    tv_safety.setBackgroundResource(0x7f020032);
                    return;
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if (i == 1)
                {
                    tag_yesno = "no";
                    rl_logo.setBackgroundDrawable(null);
                    rl_logo.setBackgroundResource(0x7f020028);
                    iv_type.setBackgroundDrawable(null);
                    iv_type.setBackgroundResource(0x7f020030);
                    tv_safety.setBackgroundDrawable(null);
                    tv_safety.setBackgroundResource(0x7f020032);
                    return;
                }
                if (true) goto _L6; else goto _L5
_L5:
            }


            
            {
                this$0 = ConnectActivity.this;
                drawable = j;
                msg = s;
                content = s1;
                i = k;
                type = s2;
                logourl = s3;
                super();
            }
        });
    }

    public void setZAN()
    {
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;

            public void run()
            {
                int i = Integer.parseInt(tv5.getText().toString().trim());
                tv5.setText(String.valueOf(i + 1));
            }

            
            {
                this$0 = ConnectActivity.this;
                super();
            }
        });
    }

    public String showTimeCount(long l)
    {
        if (l >= 0x15752a00L)
        {
            return "00:00:00";
        } else
        {
            long l1 = l / 0x36ee80L;
            String s = (new StringBuilder("0")).append(l1).toString();
            s = s.substring(s.length() - 2, s.length());
            long l2 = (l - 0x36ee80L * l1) / 60000L;
            String s1 = (new StringBuilder("0")).append(l2).toString();
            s1 = s1.substring(s1.length() - 2, s1.length());
            l = (l - 0x36ee80L * l1 - 60000L * l2) / 1000L;
            String s2 = (new StringBuilder("0")).append(l).toString();
            s2 = s2.substring(s2.length() - 2, s2.length());
            return (new StringBuilder(String.valueOf(s))).append(":").append(s1).append(":").append(s2).toString();
        }
    }

    protected void showWifiLoading(final String content)
    {
        runOnUiThread(new Runnable() {

            final ConnectActivity this$0;
            private final String val$content;

            public void run()
            {
                iv_tag.setVisibility(8);
                tv_msg.setText(content);
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

            
            {
                this$0 = ConnectActivity.this;
                content = s;
                super();
            }
        });
    }

    public void startTimeService(int i)
    {
        boolean flag = false;
        Object obj = (ActivityManager)getSystemService("activity");
        ((ActivityManager) (obj)).getRunningServices(0x7fffffff);
        obj = ((ActivityManager) (obj)).getRunningServices(0x7fffffff).iterator();
        do
        {
            android.app.ActivityManager.RunningServiceInfo runningserviceinfo;
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    if (!flag)
                    {
                        intent = new Intent("com.cat.service.TimeService");
                        obj = new Bundle();
                        ((Bundle) (obj)).putInt("time", i);
                        intent.putExtras(((Bundle) (obj)));
                        intent.setAction(WIFICONN);
                        startService(intent);
                    }
                    return;
                }
                runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)((Iterator) (obj)).next();
            } while (!WIFICONN.equals(runningserviceinfo.service.getClassName()));
            flag = true;
        } while (true);
    }

    public void startUpdate()
    {
        handlers = new Handler(new android.os.Handler.Callback() {

            final ConnectActivity this$0;

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
                file = new File(Environment.getExternalStorageDirectory(), "I-zhejiang.apk");
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
                ConnectActivity.loading_process = message.arg1;
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
                this$0 = ConnectActivity.this;
                super();
            }
        });
        final File file = getBaseContext().getDir("apk_catch", 1);
        mPackMg = getBaseContext().getPackageManager();
        url = (new StringBuilder("?mobile=")).append(username).append("&lat=").append(lat).append("&lng=").append(lon).append("&ssid=").append(getConnectedSSID()).append("&dev_id=").append(device_id).append("&platform=").append(android.os.Build.VERSION.RELEASE).append("&ter_type=1").append("&package=").append(getPackageName()).toString();
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

            final ConnectActivity this$0;
            private final File val$file;

            public void run()
            {
                awUpdater = new AWingUpdater(handlers);
                awUpdater.readyForUpdate(mLocalVersionCode, mLocalVersionName, file.toString(), url);
            }

            
            {
                this$0 = ConnectActivity.this;
                file = file1;
                super();
            }
        };
        mThread.start();
    }














}
