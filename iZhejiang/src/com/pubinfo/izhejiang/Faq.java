// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity

public class Faq extends ThinkAndroidBaseActivity
{

    ImageButton backButton;
    LinearLayout confirmButton;
    String title;
    TextView titleTV;
    WebView webView;

    public Faq()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030013);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        backButton.setVisibility(8);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        confirmButton.setVisibility(8);
        titleTV = (TextView)findViewById(0x7f0a002d);
        title = getIntent().getStringExtra("tag");
        titleTV.setText(title);
        webView = (WebView)findViewById(0x7f0a0063);
        webView.getSettings().setJavaScriptEnabled(true);
        if (title.equals("\u4F7F\u7528\u534F\u8BAE"))
        {
            webView.loadUrl("file:///android_asset/izj-xieyi.html");
        } else
        if (title.equals("\u9690\u79C1\u6761\u6B3E"))
        {
            webView.loadUrl("file:///android_asset/izj-yinsi.html");
            return;
        }
    }
}
