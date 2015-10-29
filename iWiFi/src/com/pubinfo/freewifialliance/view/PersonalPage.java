// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.pubinfo.freewifialliance.controller.PersonalPageFun;
import com.pubinfo.wifi_core.AppBaseActivity;
import com.pubinfo.wifi_core.core.data.ComData;
import com.pubinfo.wifi_core.core.database.Database;
import com.pubinfo.wifi_core.core.database.WifiInfoData;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import com.tencent.mm.sdk.openapi.BaseReq;
import com.tencent.mm.sdk.openapi.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.controller.RequestType;
import com.umeng.socialize.controller.UMServiceFactory;
import com.umeng.socialize.controller.UMSocialService;
import com.umeng.socialize.controller.UMWXHandler;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.pubinfo.freewifialliance.view:
//            SettingsPage, LoginPage, About, FoucusWeiXin

public class PersonalPage extends PersonalPageFun
    implements android.view.View.OnClickListener, IWXAPIEventHandler
{
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


    String WIFICONN;
    RelativeLayout aboutRl;
    private Button changeButton;
    Button disconnectButton;
    private File file;
    Handler handler;
    String introfomation;
    private RelativeLayout loggedRelativeLayout;
    private Button logginButton;
    Button logout;
    final UMSocialService mController;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    TextView number;
    private RelativeLayout personRl;
    TextView phoneTextView;
    private RelativeLayout settingRl;
    private Button settingsButton;
    private Button shareButton;
    private RelativeLayout shareRl;
    private RelativeLayout storeRl;
    TextView timeTextView;
    TextView title;
    private RelativeLayout unloggedRelativeLayout;
    private RelativeLayout updateRl;
    int w;
    private RelativeLayout weixinRl;
    WifiManager wifiManager;

    public PersonalPage()
    {
        mController = UMServiceFactory.getUMSocialService("com.umeng.share", RequestType.SOCIAL);
        WIFICONN = "com.pubinfo.freewifialliance.service.WeixinService";
        mPackMg = null;
        mLocalVersionName = "";
        introfomation = "\u63D0\u9192\uFF1A\u53D1\u73B0\u65B0\u7248\u672C\uFF0C\u662F\u5426\u66F4\u65B0\uFF1F";
        handler = new Handler() {

            final PersonalPage this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 3: // '\003'
                default:
                    return;

                case 2: // '\002'
                    showMsgToast("\u5DF2\u7ECF\u662F\u6700\u65B0\u7248\u672C");
                    return;

                case 4: // '\004'
                    message = new WifiDialog(PersonalPage.this, 0x7f070002);
                    message.setOnWatchClickListener(message. new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                        final _cls1 this$1;
                        private final WifiDialog val$wifiDialog1;

                        public void onCancelClick()
                        {
                            wifiDialog1.dismiss();
                        }

                        public void onWatchClick()
                        {
                            wifiDialog1.dismiss();
                            handler.sendEmptyMessage(6);
                        }

            
            {
                this$1 = final__pcls1;
                wifiDialog1 = WifiDialog.this;
                super();
            }
                    });
                    message.setPoint(introfomation);
                    message.setCanceBtn(w);
                    message.show();
                    return;

                case 5: // '\005'
                    message = new WifiDialog(PersonalPage.this, 0x7f070002);
                    message.setOnWatchClickListener(message. new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                        final _cls1 this$1;
                        private final WifiDialog val$wifiDialog2;

                        public void onCancelClick()
                        {
                            wifiDialog2.dismiss();
                        }

                        public void onWatchClick()
                        {
                            wifiDialog2.dismiss();
                            handler.sendEmptyMessage(6);
                        }

            
            {
                this$1 = final__pcls1;
                wifiDialog2 = WifiDialog.this;
                super();
            }
                    });
                    message.setPoint(introfomation);
                    message.show();
                    return;

                case 6: // '\006'
                    break;
                }
                try
                {
                    Runtime.getRuntime().exec((new StringBuilder("chmod 755 ")).append(file).toString());
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                message = new Intent("android.intent.action.VIEW");
                message.addFlags(0x10000000);
                message.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
                startActivity(message);
                finish();
            }


            
            {
                this$0 = PersonalPage.this;
                super();
            }
        };
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

    private void init()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        ((ImageButton)findViewById(0x7f0c005b)).setVisibility(8);
        mController.setShareContent("\u4EB2\u4EEC\uFF0C\u9001\u4F60\u4E00\u4E2A\u5B89\u5168\u514D\u8D39\u7684\u8E6D\u7F51\u5229\u5668\uFF01http://www.smartzg.cn/iwifi/");
        personRl = (RelativeLayout)findViewById(0x7f0c0033);
        storeRl = (RelativeLayout)findViewById(0x7f0c0038);
        shareRl = (RelativeLayout)findViewById(0x7f0c003a);
        settingRl = (RelativeLayout)findViewById(0x7f0c003c);
        personRl.setOnClickListener(this);
        storeRl.setOnClickListener(this);
        shareRl.setOnClickListener(this);
        settingRl.setOnClickListener(this);
        weixinRl = (RelativeLayout)findViewById(0x7f0c003e);
        weixinRl.setOnClickListener(this);
        aboutRl = (RelativeLayout)findViewById(0x7f0c0042);
        aboutRl.setOnClickListener(this);
        updateRl = (RelativeLayout)findViewById(0x7f0c0040);
        updateRl.setOnClickListener(this);
        disconnectButton = (Button)findViewById(0x7f0c0044);
        disconnectButton.setOnClickListener(this);
        timeTextView = (TextView)findViewById(0x7f0c0036);
        logout = (Button)findViewById(0x7f0c0037);
        logout.setOnClickListener(this);
        number = (TextView)findViewById(0x7f0c0035);
        mController.getConfig().supportWXPlatform(this, "wxa603e0696280ef9c", "http://www.smartzg.cn/sms/i-wifi.apk").setWXTitle("\u7231wifi\u5F88\u4E0D\u9519");
        mController.getConfig().supportWXCirclePlatform(this, "wxa603e0696280ef9c", "http://www.smartzg.cn/sms/i-wifi.apk").setCircleTitle("\u7231wifi\u8FD8\u4E0D\u9519...");
        title = (TextView)findViewById(0x7f0c005a);
        title.setText("\u4E2A\u4EBA\u4E2D\u5FC3");
    }

    protected void checkNew()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        String s;
        Object obj;
        String s2;
        obj = getSharedPreferences("FileName", 0);
        String s1 = ((SharedPreferences) (obj)).getString("item", "");
        s = ((SharedPreferences) (obj)).getString("version_name", "");
        obj = ((SharedPreferences) (obj)).getString("update_grade", "");
        s2 = getSharedPreferences("down", 0).getString("done", "");
        if (s1.equals(""))
        {
            break MISSING_BLOCK_LABEL_451;
        }
        file = new File(Environment.getExternalStorageDirectory(), "AiWifi.apk");
        mPackMg = getBaseContext().getPackageManager();
        boolean flag;
        try
        {
            mLocalVersionName = mPackMg.getPackageInfo(getBaseContext().getPackageName(), 1).versionName;
        }
        catch (Exception exception2)
        {
            try
            {
                handler.sendEmptyMessage(2);
            }
            catch (Exception exception)
            {
                handler.sendEmptyMessage(2);
                return;
            }
        }
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_441;
        }
        flag = mLocalVersionName.equals(s);
        if (flag)
        {
            try
            {
                file.delete();
                android.content.SharedPreferences.Editor editor = getSharedPreferences("FileName", 0).edit();
                android.content.SharedPreferences.Editor editor3 = getSharedPreferences("down", 0).edit();
                editor.clear();
                editor.commit();
                editor3.clear();
                editor3.commit();
                handler.sendEmptyMessage(2);
                return;
            }
            catch (Exception exception1)
            {
                return;
            }
        }
        if (!((String) (obj)).equals("1"))
        {
            break MISSING_BLOCK_LABEL_354;
        }
        if (s2.equals("y"))
        {
            w = (getScreenWidth() - 181) / 2 - 45;
            handler.sendEmptyMessage(4);
            return;
        }
        file.delete();
        android.content.SharedPreferences.Editor editor1 = getSharedPreferences("FileName", 0).edit();
        editor1.clear();
        editor1.commit();
        handler.sendEmptyMessage(2);
        return;
        if (!((String) (obj)).equals("2"))
        {
            break MISSING_BLOCK_LABEL_431;
        }
        if (s2.equals("y"))
        {
            handler.sendEmptyMessage(5);
            return;
        }
        file.delete();
        android.content.SharedPreferences.Editor editor2 = getSharedPreferences("FileName", 0).edit();
        editor2.clear();
        editor2.commit();
        handler.sendEmptyMessage(2);
        return;
        handler.sendEmptyMessage(2);
        return;
        handler.sendEmptyMessage(2);
        return;
        handler.sendEmptyMessage(2);
        return;
    }

    public void onClick(View view)
    {
        if (!view.equals(storeRl)) goto _L2; else goto _L1
_L1:
        showMsgToast("\u6682\u672A\u5F00\u901A");
_L4:
        return;
_L2:
        if (view.equals(shareRl))
        {
            mController.openShare(this, false);
            return;
        }
        if (view.equals(settingRl))
        {
            startActivity(new Intent(this, com/pubinfo/freewifialliance/view/SettingsPage));
            return;
        }
        if (view.equals(disconnectButton))
        {
            wifiManager.disconnect();
            finish();
            return;
        }
        if (view.equals(logout))
        {
            view = new Intent(this, com/pubinfo/freewifialliance/view/LoginPage);
            view.putExtra("type", "log");
            Database.getInstance(context).insertUser("", "", "", "", "", "", "", "");
            startActivity(view);
            return;
        }
        if (view.equals(updateRl))
        {
            checkNew();
            try
            {
                if (executeCommand("ping -c 1 -i 0.2 -W 1 www.baidu.com", 3000L) == 0)
                {
                    updateSsidList();
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                return;
            }
        } else
        {
            if (view.equals(aboutRl))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/About));
                return;
            }
            if (view.equals(weixinRl))
            {
                startActivity(new Intent(this, com/pubinfo/freewifialliance/view/FoucusWeiXin));
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        init();
    }

    public void onReq(BaseReq basereq)
    {
    }

    public void onResp(BaseResp baseresp)
    {
    }

    protected void onResume()
    {
        super.onResume();
        Database.getInstance(this).selectUserRow();
        if (ComData.getInstance().getWifiInfoData() != null && ComData.getInstance().getWifiInfoData().size() > 0 && !((WifiInfoData)ComData.getInstance().getWifiInfoData().get(0)).getPhone().equals(""))
        {
            number.setText(((WifiInfoData)ComData.getInstance().getWifiInfoData().get(0)).getPhone());
            logout.setText("\u5207\u6362");
            return;
        } else
        {
            number.setText("\u672A\u767B\u5F55");
            logout.setText("\u767B\u5F55");
            timeTextView.setVisibility(8);
            return;
        }
    }

    public void showLogged()
    {
        loggedRelativeLayout.setVisibility(0);
        unloggedRelativeLayout.setVisibility(8);
        phoneTextView.setText(((WifiInfoData)ComData.getInstance().getWifiInfoData().get(0)).getPhone());
    }

    public void showUnlogged()
    {
        loggedRelativeLayout.setVisibility(8);
        unloggedRelativeLayout.setVisibility(0);
    }

    public void startWeiXinService()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
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
                        obj = new Intent();
                        ((Intent) (obj)).setAction(WIFICONN);
                        context.startService(((Intent) (obj)));
                    }
                    return;
                }
                runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)((Iterator) (obj)).next();
            } while (!WIFICONN.equals(runningserviceinfo.service.getClassName()));
            flag = true;
        } while (true);
    }


}
