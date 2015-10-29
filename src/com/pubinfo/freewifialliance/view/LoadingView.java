// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.content.SharedPreferences;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bread.breadservice.BRD;
import com.pubinfo.freewifialliance.controller.LoadingFun;
import com.pubinfo.freewifialliance.parser.GeneralConfigParser;
import com.umeng.analytics.MobclickAgent;

public class LoadingView extends LoadingFun
{

    public static final String STOP_SERVICE = "stop";
    public static final String STOP_SP = "service";
    private ImageView iv_pageInnerLoading;
    private LinearLayout ll_pageInnerLoading;
    private AnimationDrawable msInnerLoadingAnim;

    public LoadingView()
    {
        ll_pageInnerLoading = null;
        iv_pageInnerLoading = null;
        msInnerLoadingAnim = null;
    }

    public void doLoginAuthErr(String s)
    {
        showMsgToast("\u5929\u7FFCwifi\u8054\u7F51\u5931\u8D25");
        finish();
    }

    public void doLoginAuthSucc(String s)
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030008);
        GeneralConfigParser.parsingGeneralConfig(this);
        if (getSharedPreferences("service", 0).getString("stop", "").equals(""))
        {
            startWifiService();
        }
        MobclickAgent.updateOnlineConfig(this);
        installapk();
        BRD.startBRDService(this);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
