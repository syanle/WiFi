// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.iwifi.sdk.protocol.impl.AuthenticatedMethodsUtils;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.impl.client.DefaultHttpClient;

public class WebviewPage extends Activity
    implements android.view.View.OnClickListener
{

    String activity;
    final Activity acty = this;
    private AuthenticatedMethodsUtils authenUtils;
    protected ImageButton btnBack;
    String goods;
    protected Handler handler;
    Double lat;
    LinearLayout layout1;
    Double lon;
    String name;
    TextView next_map;
    TextView title;
    String type;
    String url;
    private WebView webView;

    public WebviewPage()
    {
        authenUtils = null;
        handler = new Handler() {

            final WebviewPage this$0;

            public void handleMessage(Message message)
            {
                if (message.what == 404)
                {
                    webView.loadUrl("file:///android_asset/404.html");
                    return;
                } else
                {
                    webView.loadUrl(url);
                    return;
                }
            }

            
            {
                this$0 = WebviewPage.this;
                super();
            }
        };
    }

    private int getRespStatus(String s)
    {
        int i;
        try
        {
            s = new HttpHead(s);
            i = (new DefaultHttpClient()).execute(s).getStatusLine().getStatusCode();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return -1;
        }
        return i;
    }

    public void onClick(View view)
    {
        if (view.equals(btnBack))
        {
            finish();
        } else
        if (view.equals(layout1))
        {
            view = new Intent();
            view.putExtra("name", name);
            view.putExtra("goods", goods);
            view.putExtra("url", url);
            view.putExtra("type", type);
            view.putExtra("lat", lat);
            view.putExtra("lon", lon);
            setResult(1, view);
            finish();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030036);
        btnBack = (ImageButton)findViewById(0x7f0a002c);
        btnBack.setOnClickListener(this);
        layout1 = (LinearLayout)findViewById(0x7f0a002e);
        layout1.setOnClickListener(this);
        title = (TextView)findViewById(0x7f0a002d);
        next_map = (TextView)findViewById(0x7f0a002f);
        bundle = getIntent();
        activity = bundle.getStringExtra("activity");
        if (!activity.equals("AroundFragment")) goto _L2; else goto _L1
_L1:
        goods = bundle.getStringExtra("goods");
        type = bundle.getStringExtra("type");
        lat = Double.valueOf(bundle.getExtras().getDouble("lat"));
        lon = Double.valueOf(bundle.getExtras().getDouble("lon"));
        next_map.setText("\u5730\u56FE");
        next_map.setTextColor(getResources().getColorStateList(0x7f080001));
_L4:
        url = bundle.getStringExtra("url");
        name = bundle.getStringExtra("name");
        authenUtils = new AuthenticatedMethodsUtils();
        (new Thread() {

            final WebviewPage this$0;

            public void run()
            {
                super.run();
                Looper.prepare();
                String as[] = authenUtils.sync_getPortalUrl(url);
                if (as[0].equals("false"))
                {
                    if (as[1].contains("200"))
                    {
                        webView.loadUrl(url);
                    } else
                    {
                        webView.loadUrl("file:///android_asset/404.html");
                    }
                    Looper.loop();
                    return;
                } else
                {
                    webView.loadUrl(url);
                    return;
                }
            }

            
            {
                this$0 = WebviewPage.this;
                super();
            }
        }).start();
        title.setText(name);
        webView = (WebView)findViewById(0x7f0a00eb);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new WebChromeClient());
        webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        webView.requestFocus();
        webView.setWebViewClient(new WebViewClient());
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setLoadWithOverviewMode(true);
        webView.getSettings().setUseWideViewPort(true);
        return;
_L2:
        if (activity.equals("AroundMoreActivity"))
        {
            layout1.setVisibility(8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (webView.canGoBack() && i == 4)
        {
            webView.goBack();
            return true;
        }
        if (!webView.canGoBack())
        {
            finish();
        }
        return super.onKeyDown(i, keyevent);
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }


}
