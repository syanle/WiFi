// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.controller;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.iwifi.sdk.protocol.DoLoginAuthInterface;
import com.pubinfo.freewifialliance.view.CenterPage;
import com.pubinfo.freewifialliance.view.UserIntroduce;
import com.pubinfo.wifi_core.AppBaseActivity;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class LoadingFun extends AppBaseActivity
    implements DoLoginAuthInterface
{

    String SP_FIRST;
    String ST_FIRST;
    int VersionCode;
    String WIFICONN;
    protected int canConnectWifiIndex;
    private File file;
    protected Handler handler;
    String introfomation;
    protected boolean isConnecting;
    private Boolean isJumpToLoginPage;
    private String mLocalVersionName;
    private PackageManager mPackMg;
    private List results;
    String s;
    protected List tianyiWifi;
    int w;
    private WifiManager wifiManager;

    public LoadingFun()
    {
        tianyiWifi = new ArrayList();
        isConnecting = false;
        isJumpToLoginPage = Boolean.valueOf(false);
        mPackMg = null;
        mLocalVersionName = "";
        introfomation = "\u63D0\u9192\uFF1A\u53D1\u73B0\u65B0\u7248\u672C\uFF0C\u662F\u5426\u66F4\u65B0\uFF1F";
        WIFICONN = "com.pubinfo.freewifialliance.service.WifiConnService";
        SP_FIRST = "spFirst";
        ST_FIRST = "stFirst";
        handler = new Handler() {

            final LoadingFun this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 1: // '\001'
                case 3: // '\003'
                default:
                    return;

                case 0: // '\0'
                case 2: // '\002'
                    message = getSharedPreferences(SP_FIRST, 0);
                    if (message.getString(ST_FIRST, "").equals("yes"))
                    {
                        startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage));
                    } else
                    {
                        message = message.edit();
                        message.putString(ST_FIRST, "yes");
                        message.commit();
                        startActivity(new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/UserIntroduce));
                    }
                    finish();
                    return;

                case 4: // '\004'
                    message = new WifiDialog(LoadingFun.this, 0x7f070002);
                    message.setOnWatchClickListener(message. new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                        final _cls1 this$1;
                        private final WifiDialog val$wifiDialog1;

                        public void onCancelClick()
                        {
                            wifiDialog1.dismiss();
                            handler.sendEmptyMessageDelayed(2, 1000L);
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
                    message = new WifiDialog(LoadingFun.this, 0x7f070002);
                    message.setOnWatchClickListener(message. new com.pubinfo.wifi_core.core.view.WifiDialog.OnWatchClickListener() {

                        final _cls1 this$1;
                        private final WifiDialog val$wifiDialog2;

                        public void onCancelClick()
                        {
                            wifiDialog2.dismiss();
                            handler.sendEmptyMessageDelayed(2, 1000L);
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
                    return;

                case 7: // '\007'
                    message = new Intent(LoadingFun.this, com/pubinfo/freewifialliance/view/CenterPage);
                    message.putExtra("jump", "yes");
                    startActivity(message);
                    finish();
                    return;
                }
            }


            
            {
                this$0 = LoadingFun.this;
                super();
            }
        };
    }

    protected void installapk()
    {
        wifiManager = (WifiManager)getSystemService("wifi");
        Object obj;
        Object obj1;
        int i;
        obj = getSharedPreferences("FileName", 0);
        String s1 = ((SharedPreferences) (obj)).getString("item", "");
        ((SharedPreferences) (obj)).getString("version_name", "");
        i = ((SharedPreferences) (obj)).getInt("version_code", 0);
        obj = ((SharedPreferences) (obj)).getString("update_grade", "");
        obj1 = getSharedPreferences("down", 0).getString("done", "");
        if (s1.equals(""))
        {
            break MISSING_BLOCK_LABEL_443;
        }
        file = new File(Environment.getExternalStorageDirectory(), "AiWifi.apk");
        mPackMg = getBaseContext().getPackageManager();
        int j;
        try
        {
            PackageInfo packageinfo = mPackMg.getPackageInfo(getBaseContext().getPackageName(), 1);
            mLocalVersionName = packageinfo.versionName;
            VersionCode = packageinfo.versionCode;
        }
        catch (Exception exception2) { }
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_430;
        }
        j = VersionCode;
        if (j >= i)
        {
            try
            {
                file.delete();
                obj = getSharedPreferences("FileName", 0).edit();
                obj1 = getSharedPreferences("down", 0).edit();
                ((android.content.SharedPreferences.Editor) (obj)).clear();
                ((android.content.SharedPreferences.Editor) (obj)).commit();
                ((android.content.SharedPreferences.Editor) (obj1)).clear();
                ((android.content.SharedPreferences.Editor) (obj1)).commit();
                handler.sendEmptyMessageDelayed(2, 1000L);
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }
        if (!((String) (obj)).equals("1"))
        {
            break MISSING_BLOCK_LABEL_341;
        }
        if (((String) (obj1)).equals("y"))
        {
            w = (getScreenWidth() - 181) / 2 - 45;
            handler.sendEmptyMessage(4);
            return;
        }
        try
        {
            file.delete();
            obj = getSharedPreferences("FileName", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).clear();
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            handler.sendEmptyMessageDelayed(2, 1000L);
            return;
        }
        catch (Exception exception1)
        {
            return;
        }
        if (!((String) (obj)).equals("2"))
        {
            break MISSING_BLOCK_LABEL_417;
        }
        if (((String) (obj1)).equals("y"))
        {
            handler.sendEmptyMessage(5);
            return;
        }
        file.delete();
        android.content.SharedPreferences.Editor editor = getSharedPreferences("FileName", 0).edit();
        editor.clear();
        editor.commit();
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
    }

    public void startWifiService()
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
