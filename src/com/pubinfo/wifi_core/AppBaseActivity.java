// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.Process;
import android.view.Display;
import android.view.WindowManager;
import android.widget.Toast;
import com.pubinfo.wifi_core.core.util.FileManager;
import com.umeng.analytics.MobclickAgent;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class AppBaseActivity extends Activity
{

    public static final String START_NAME = "start_name";
    public static final String START_SP = "start_sp";
    final String APPLICTION_EXIT_ACTION = "com.pubinfo.trafficvideo.APPLICTION_EXIT";
    final String Shared_Preferences_Name = "com.pubinfo.wenzhou";
    protected AppBaseActivity context;

    public AppBaseActivity()
    {
        context = null;
    }

    public static boolean isMobileNO(String s)
    {
        return Pattern.compile("^((13[0-9])|(17[0-9])|(15[^4,\\D])|(18[0,1,5-9]))\\d{8}$").matcher(s).matches();
    }

    public String checkWifiType(String s)
    {
        if (s.toLowerCase().indexOf("chinanet") >= 0)
        {
            return "ChinaNet";
        } else
        {
            return "hichinaWifi";
        }
    }

    public void exit()
    {
        (new android.app.AlertDialog.Builder(this)).setMessage("\u5C0A\u656C\u7684\u7528\u6237\uFF1A\u611F\u8C22\u60A8\u4F7F\u7528\"\u7FFC\u884C\u6E29\u5DDE\"\u4E1A\u52A1\uFF0C\u60A8\u786E\u8BA4\u8981\u9000\u51FA\u5E94\u7528\u5417\uFF1F").setPositiveButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

            final AppBaseActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface = new Intent("com.pubinfo.trafficvideo.APPLICTION_EXIT");
                sendBroadcast(dialoginterface);
                finish();
            }

            
            {
                this$0 = AppBaseActivity.this;
                super();
            }
        }).setNegativeButton("\u53D6\u6D88", null).show();
    }

    public int getScreenHeight()
    {
        return ((WindowManager)getSystemService("window")).getDefaultDisplay().getHeight();
    }

    public int getScreenWidth()
    {
        return ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
    }

    public boolean isKillProcess(Date date)
    {
        return date != null && ((new Date()).getTime() - date.getTime()) / 1000L < 5L;
    }

    public boolean isWifiAlliance(String s)
    {
        String s1 = getSharedPreferences("ssidlist", 0).getString("data", "");
        if (s1.equals(""))
        {
            return ssidListParser(s, FileManager.getSsidList(this));
        } else
        {
            return ssidListParser2(s, s1);
        }
    }

    public void killProcess()
    {
        Object obj = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses();
        String s = getApplicationInfo().processName;
        obj = ((List) (obj)).iterator();
        do
        {
            android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo;
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    return;
                }
                runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)((Iterator) (obj)).next();
            } while (!runningappprocessinfo.processName.equals(s));
            Process.killProcess(runningappprocessinfo.pid);
        } while (true);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        requestWindowFeature(1);
        context = this;
    }

    protected void onPause()
    {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    protected void onResume()
    {
        super.onResume();
        MobclickAgent.onResume(this);
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
            String s2 = s1[i].split(":")[0].trim();
            if (!s2.equals("") && s.toLowerCase().trim().indexOf(s2) >= 0)
            {
                return true;
            }
            i++;
        } while (true);
    }

    public boolean ssidListParser2(String s, String s1)
    {
        int i;
        boolean flag1;
        flag1 = true;
        s1 = s1.split(",");
        i = 0;
_L6:
        if (i < s1.length) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        new JSONObject(s1[i]);
        String s2;
        s2 = s1[i].split(":")[1].substring(1, s1[i].split(":")[1].length() - 2).toLowerCase().trim();
        if (s2.equals(""))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (s.toLowerCase().trim().indexOf(s2) >= 0) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        JSONException jsonexception;
        jsonexception;
          goto _L3
    }

    public void umengCount(String s)
    {
        MobclickAgent.onEvent(this, s);
    }
}
