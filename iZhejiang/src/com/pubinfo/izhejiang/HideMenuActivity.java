// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.cat.tools.HttpConf;
import java.io.PrintStream;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity

public class HideMenuActivity extends ThinkAndroidBaseActivity
{

    ImageButton backBtn;
    android.view.View.OnClickListener back_listener;
    Button buttonInterDiy;
    android.view.View.OnClickListener interFaceDev_listener;
    android.view.View.OnClickListener interFaceDiy_listener;
    android.view.View.OnClickListener interFaceTest_listener;
    TextView interTextViewDev;
    TextView interTextViewTest;
    TextView nowIpTextView;
    Button quitBtn;

    public HideMenuActivity()
    {
        interFaceDev_listener = null;
        interFaceTest_listener = null;
        interFaceDiy_listener = null;
        back_listener = null;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030010);
        bundle = HttpConf.iWiFi_WIFI_HOSTGE.split("/PubInfoWifiInterface")[0].substring(7);
        nowIpTextView = (TextView)findViewById(0x7f0a005f);
        nowIpTextView.setText(bundle);
        backBtn = (ImageButton)findViewById(0x7f0a002c);
        quitBtn = (Button)findViewById(0x7f0a005e);
        back_listener = new android.view.View.OnClickListener() {

            final HideMenuActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = HideMenuActivity.this;
                super();
            }
        };
        interFaceDev_listener = new android.view.View.OnClickListener() {

            final HideMenuActivity this$0;

            public void onClick(View view)
            {
                setIp("60.191.109.206:8083");
            }

            
            {
                this$0 = HideMenuActivity.this;
                super();
            }
        };
        interFaceTest_listener = new android.view.View.OnClickListener() {

            final HideMenuActivity this$0;

            public void onClick(View view)
            {
                setIp("60.191.109.207:8083");
            }

            
            {
                this$0 = HideMenuActivity.this;
                super();
            }
        };
        interFaceDiy_listener = new android.view.View.OnClickListener() {

            final HideMenuActivity this$0;

            public void onClick(View view)
            {
                view = ((EditText)findViewById(0x7f0a0053)).getText().toString();
                System.out.println((new StringBuilder("\u6307\u5B9A\u7684ip\u5730\u5740\u4E3A")).append(view).toString());
                setIp(view);
            }

            
            {
                this$0 = HideMenuActivity.this;
                super();
            }
        };
        interTextViewDev = (TextView)findViewById(0x7f0a004d);
        interTextViewTest = (TextView)findViewById(0x7f0a004f);
        interTextViewDev.setOnClickListener(interFaceDev_listener);
        interTextViewTest.setOnClickListener(interFaceTest_listener);
        buttonInterDiy = (Button)findViewById(0x7f0a0054);
        buttonInterDiy.setOnClickListener(interFaceDiy_listener);
        quitBtn.setOnClickListener(back_listener);
        backBtn.setOnClickListener(back_listener);
    }

    public void setIp(String s)
    {
        HttpConf.iWiFi_WIFI_HOSTGE = (new StringBuilder("http://")).append(s).append("/PubInfoWifiInterface/app30/general/").toString();
        HttpConf.iWiFi_WIFI_HOSTNFC = (new StringBuilder("http://")).append(s).append("/PubInfoWifiInterface/app30/nfc/").toString();
        HttpConf.iWiFi_WIFI_HOST = (new StringBuilder("http://")).append(s).append("/PubInfoWifiInterface/app30/member/").toString();
        HttpConf.iWiFi_WIFI_HOSTAP = (new StringBuilder("http://")).append(s).append("/PubInfoWifiInterface/app30/ap/").toString();
        HttpConf.iWiFi_WIFI_HOSTNEAR = (new StringBuilder("http://")).append(s).append("/PubInfoWifiInterface/app30/near/").toString();
        System.out.print((new StringBuilder("\u8BBE\u7F6Eip")).append(s).toString());
        nowIpTextView.setText(s);
    }
}
