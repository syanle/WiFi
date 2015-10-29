// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity

public class PushWebview extends ThinkAndroidBaseActivity
{

    ImageButton backButton;
    LinearLayout confirmButton;
    TextView title;
    private WebView webView;

    public PushWebview()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030028);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        backButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PushWebview this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = PushWebview.this;
                super();
            }
        });
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        title = (TextView)findViewById(0x7f0a002d);
        title.setText(getString(0x7f060000));
        confirmButton.setVisibility(8);
        webView = (WebView)findViewById(0x7f0a00bb);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.requestFocus();
        webView.setWebViewClient(new WebViewClient());
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        bundle = getIntent().getStringExtra("url");
        webView.loadUrl(bundle);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return super.onKeyDown(i, keyevent);
    }
}
