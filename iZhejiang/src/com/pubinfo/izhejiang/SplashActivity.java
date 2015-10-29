// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.cat.data.TimeDifference;
import com.cat.impl.DoTimeDifferenceConn;
import com.cat.parase.GeneralConfigParser;
import com.cat.parase.TimeDifferenceParser;
import com.cat.protocol.DoTimeDifferenceInterface;
import com.iwifi.sdk.tools.Logger;
import com.pubinfo.wifi_core.core.view.WifiDialog;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.io.IOException;
import java.util.List;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity, MainActivity

public class SplashActivity extends ThinkAndroidBaseActivity
    implements DoTimeDifferenceInterface
{

    String SP_FIRST;
    String ST_FIRST;
    int VersionCode;
    android.content.SharedPreferences.Editor editor;
    private File file;
    protected Handler handler;
    String introfomation;
    private PackageManager mPackMg;
    String s;
    SharedPreferences sharedata;
    String version_name;
    int w;

    public SplashActivity()
    {
        mPackMg = null;
        introfomation = "\u63D0\u9192\uFF1A\u53D1\u73B0\u65B0\u7248\u672C\uFF0C\u662F\u5426\u66F4\u65B0\uFF1F";
        SP_FIRST = "spFirst";
        ST_FIRST = "stFirst";
        handler = new Handler() {

            final SplashActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                case 3: // '\003'
                default:
                    return;

                case 2: // '\002'
                    startMain();
                    return;

                case 4: // '\004'
                    message = new WifiDialog(SplashActivity.this, 0x7f070002);
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
                    message.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
                    message.setPoint(introfomation);
                    message.setCanceBtn(0);
                    message.show();
                    return;

                case 5: // '\005'
                    message = new WifiDialog(SplashActivity.this, 0x7f070002);
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
                    message.setTitle((new StringBuilder("\u66F4\u65B0\u901A\u77E5(v")).append(version_name).append(")").toString());
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
                this$0 = SplashActivity.this;
                super();
            }
        };
    }

    private void startMain()
    {
        GeneralConfigParser.parsingGeneralConfig(this);
        Intent intent = new Intent();
        intent.setClass(this, com/pubinfo/izhejiang/MainActivity);
        startActivity(intent);
        finish();
    }

    public void doTimeDifferenceErr(String s1)
    {
    }

    public void doTimeDifferenceSucc(String s1)
    {
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Object obj = TimeDifferenceParser.Timedifferenceparaser(s1);
        if (s1.contains("OK"))
        {
            s1 = (List)obj;
            editor.putString("difftime", ((TimeDifference)s1.get(0)).getTimedifference());
            editor.commit();
        }
        return;
        s1;
    }

    protected void installapk()
    {
        Object obj;
        String s2;
        int i;
        obj = getSharedPreferences("FileName", 0);
        String s1 = ((SharedPreferences) (obj)).getString("item", "");
        introfomation = ((SharedPreferences) (obj)).getString("intro", "");
        version_name = ((SharedPreferences) (obj)).getString("version_name", "");
        i = ((SharedPreferences) (obj)).getInt("version_code", 0);
        obj = ((SharedPreferences) (obj)).getString("update_grade", "");
        s2 = getSharedPreferences("down", 0).getString("done", "");
        if (s1.equals(""))
        {
            break MISSING_BLOCK_LABEL_437;
        }
        file = new File(Environment.getExternalStorageDirectory(), "I-zhejiang.apk");
        mPackMg = getBaseContext().getPackageManager();
        int j;
        try
        {
            VersionCode = mPackMg.getPackageInfo(getBaseContext().getPackageName(), 1).versionCode;
        }
        catch (Exception exception1) { }
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_424;
        }
        j = VersionCode;
        if (j >= i)
        {
            try
            {
                file.delete();
                android.content.SharedPreferences.Editor editor1 = getSharedPreferences("FileName", 0).edit();
                obj = getSharedPreferences("down", 0).edit();
                editor1.clear();
                editor1.commit();
                ((android.content.SharedPreferences.Editor) (obj)).clear();
                ((android.content.SharedPreferences.Editor) (obj)).commit();
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
            break MISSING_BLOCK_LABEL_335;
        }
        if (s2.equals("y"))
        {
            w = (getScreenWidth() - 181) / 2 - 100;
            handler.sendEmptyMessage(4);
            return;
        }
        try
        {
            file.delete();
            android.content.SharedPreferences.Editor editor2 = getSharedPreferences("FileName", 0).edit();
            editor2.clear();
            editor2.commit();
            handler.sendEmptyMessageDelayed(2, 1000L);
            return;
        }
        catch (Exception exception2)
        {
            return;
        }
        if (!((String) (obj)).equals("2"))
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if (s2.equals("y"))
        {
            handler.sendEmptyMessage(5);
            return;
        }
        file.delete();
        android.content.SharedPreferences.Editor editor3 = getSharedPreferences("FileName", 0).edit();
        editor3.clear();
        editor3.commit();
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
        handler.sendEmptyMessageDelayed(2, 1000L);
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = View.inflate(this, 0x7f030034, null);
        setContentView(bundle);
        Logger.setLogStatus(false, 3, 0);
        GeneralConfigParser.parsingGeneralConfig(this);
        MobclickAgent.updateOnlineConfig(this);
        installapk();
        sharedata = getSharedPreferences("TimeDifference", 0);
        editor = sharedata.edit();
        editor.clear();
        editor.commit();
        new DoTimeDifferenceConn(Long.toString(System.currentTimeMillis()), this);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.5F, 1.0F);
        alphaanimation.setDuration(3000L);
        bundle.startAnimation(alphaanimation);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final SplashActivity this$0;

            public void onAnimationEnd(Animation animation)
            {
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = SplashActivity.this;
                super();
            }
        });
    }

    public void onDestroy()
    {
        super.onDestroy();
    }


}
