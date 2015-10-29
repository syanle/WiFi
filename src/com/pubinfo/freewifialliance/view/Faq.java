// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import com.pubinfo.wifi_core.AppBaseActivity;

public class Faq extends AppBaseActivity
{

    ImageButton refreshButton;
    WebView webView;

    public Faq()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030006);
        refreshButton = (ImageButton)findViewById(0x7f0c005b);
        refreshButton.setVisibility(8);
        webView = (WebView)findViewById(0x7f0c001c);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl("file:///android_asset/faq.html");
    }
}
