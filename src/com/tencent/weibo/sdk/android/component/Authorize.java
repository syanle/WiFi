// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.api.util.Util;
import java.util.Properties;

public class Authorize extends Activity
{

    public static final int ALERT_DOWNLOAD = 0;
    public static final int ALERT_FAV = 1;
    public static final int ALERT_NETWORK = 4;
    public static final int PROGRESS_H = 3;
    public static int WEBVIEWSTATE_1 = 0;
    Dialog _dialog;
    String _fileName;
    String _url;
    private String clientId;
    private ProgressDialog dialog;
    Handler handle;
    private boolean isShow;
    private LinearLayout layout;
    String path;
    private String redirectUri;
    WebView webView;
    int webview_state;

    public Authorize()
    {
        webview_state = 0;
        layout = null;
        redirectUri = null;
        clientId = null;
        isShow = false;
        handle = new Handler() {

            final Authorize this$0;

            public void handleMessage(Message message)
            {
                super.handleMessage(message);
                switch (message.what)
                {
                default:
                    return;

                case 100: // 'd'
                    showDialog(4);
                    break;
                }
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        };
    }

    public void initLayout()
    {
        Object obj = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        Object obj2 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        Object obj1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        dialog = new ProgressDialog(this);
        dialog.setProgressStyle(0);
        dialog.requestWindowFeature(1);
        dialog.setMessage("\u8BF7\u7A0D\u540E...");
        dialog.setIndeterminate(false);
        dialog.setCancelable(false);
        dialog.show();
        layout = new LinearLayout(this);
        layout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        layout.setOrientation(1);
        obj = new RelativeLayout(this);
        ((RelativeLayout) (obj)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        ((RelativeLayout) (obj)).setBackgroundDrawable(BackGroudSeletor.getdrawble("up_bg2x", getApplication()));
        ((RelativeLayout) (obj)).setGravity(0);
        obj2 = new Button(this);
        android.app.Application application = getApplication();
        ((Button) (obj2)).setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "quxiao_btn2x", "quxiao_btn_hover"
        }, application));
        ((Button) (obj2)).setText("\u53D6\u6D88");
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(9, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(15, -1);
        obj1.leftMargin = 10;
        obj1.topMargin = 10;
        obj1.bottomMargin = 10;
        ((Button) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((Button) (obj2)).setOnClickListener(new android.view.View.OnClickListener() {

            final Authorize this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        });
        ((RelativeLayout) (obj)).addView(((View) (obj2)));
        obj1 = new TextView(this);
        ((TextView) (obj1)).setText("\u6388\u6743");
        ((TextView) (obj1)).setTextColor(-1);
        ((TextView) (obj1)).setTextSize(24F);
        obj2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj2)).addRule(13, -1);
        ((TextView) (obj1)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj2)));
        ((RelativeLayout) (obj)).addView(((View) (obj1)));
        layout.addView(((View) (obj)));
        webView = new WebView(this);
        obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
        webView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        obj = webView.getSettings();
        webView.setVerticalScrollBarEnabled(false);
        ((WebSettings) (obj)).setJavaScriptEnabled(true);
        ((WebSettings) (obj)).setUseWideViewPort(true);
        ((WebSettings) (obj)).setLoadWithOverviewMode(false);
        webView.loadUrl(path);
        webView.setWebChromeClient(new WebChromeClient() {

            final Authorize this$0;

            public void onProgressChanged(WebView webview, int i)
            {
                super.onProgressChanged(webview, i);
                Log.d("newProgress", (new StringBuilder(String.valueOf(i))).append("..").toString());
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        });
        webView.setWebViewClient(new WebViewClient() {

            final Authorize this$0;

            public void onPageFinished(WebView webview, String s)
            {
                Log.d("backurl", s);
                if (s.indexOf("access_token") != -1 && !isShow)
                {
                    jumpResultParser(s);
                }
                if (dialog != null && dialog.isShowing())
                {
                    dialog.cancel();
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s.indexOf("access_token") != -1 && !isShow)
                {
                    jumpResultParser(s);
                }
                return false;
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        });
        layout.addView(webView);
        setContentView(layout);
    }

    public void jumpResultParser(String s)
    {
        String as[] = s.split("#")[1].split("&");
        s = as[0].split("=")[1];
        String s1 = as[1].split("=")[1];
        String s2 = as[2].split("=")[1];
        String s3 = as[3].split("=")[1];
        String s4 = as[4].split("=")[1];
        String s5 = as[5].split("=")[1];
        s5 = as[6].split("=")[1];
        String s6 = as[7].split("=")[1];
        android.content.Context context = getApplicationContext();
        if (s != null && !"".equals(s))
        {
            Util.saveSharePersistent(context, "ACCESS_TOKEN", s);
            Util.saveSharePersistent(context, "EXPIRES_IN", s1);
            Util.saveSharePersistent(context, "OPEN_ID", s2);
            Util.saveSharePersistent(context, "OPEN_KEY", s3);
            Util.saveSharePersistent(context, "REFRESH_TOKEN", s4);
            Util.saveSharePersistent(context, "NAME", s5);
            Util.saveSharePersistent(context, "NICK", s6);
            Util.saveSharePersistent(context, "CLIENT_ID", clientId);
            Util.saveSharePersistent(context, "AUTHORIZETIME", String.valueOf(System.currentTimeMillis() / 1000L));
            Toast.makeText(this, "\u6388\u6743\u6210\u529F", 0).show();
            finish();
            isShow = true;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (!Util.isNetworkAvailable(this))
        {
            showDialog(4);
            return;
        }
        bundle = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(bundle);
        BackGroudSeletor.setPix((new StringBuilder(String.valueOf(((DisplayMetrics) (bundle)).widthPixels))).append("x").append(((DisplayMetrics) (bundle)).heightPixels).toString());
        try
        {
            clientId = Util.getConfig().getProperty("APP_KEY");
            redirectUri = Util.getConfig().getProperty("REDIRECT_URI");
            if (clientId == null || "".equals(clientId) || redirectUri == null || "".equals(redirectUri))
            {
                Toast.makeText(this, "\u8BF7\u5728\u914D\u7F6E\u6587\u4EF6\u4E2D\u586B\u5199\u76F8\u5E94\u7684\u4FE1\u606F", 0).show();
            }
            Log.d("redirectUri", redirectUri);
            getWindow().setFlags(1024, 1024);
            requestWindowFeature(1);
            int i = (int)Math.random();
            path = (new StringBuilder("https://open.t.qq.com/cgi-bin/oauth2/authorize?client_id=")).append(clientId).append("&response_type=token&redirect_uri=").append(redirectUri).append("&state=").append(i * 1000 + 111).toString();
            initLayout();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Bundle bundle)
        {
            bundle.printStackTrace();
        }
    }

    protected Dialog onCreateDialog(int i)
    {
        i;
        JVM INSTR tableswitch 3 4: default 24
    //                   3 29
    //                   4 57;
           goto _L1 _L2 _L3
_L1:
        return _dialog;
_L2:
        _dialog = new ProgressDialog(this);
        ((ProgressDialog)_dialog).setMessage("\u52A0\u8F7D\u4E2D...");
        continue; /* Loop/switch isn't completed */
_L3:
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle("\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\uFF0C\u662F\u5426\u91CD\u65B0\u8FDE\u63A5\uFF1F");
        builder.setPositiveButton("\u662F", new android.content.DialogInterface.OnClickListener() {

            final Authorize this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                if (Util.isNetworkAvailable(Authorize.this))
                {
                    webView.loadUrl(path);
                    return;
                } else
                {
                    dialoginterface = Message.obtain();
                    dialoginterface.what = 100;
                    handle.sendMessage(dialoginterface);
                    return;
                }
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        });
        builder.setNegativeButton("\u5426", new android.content.DialogInterface.OnClickListener() {

            final Authorize this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                finish();
            }

            
            {
                this$0 = Authorize.this;
                super();
            }
        });
        _dialog = builder.create();
        if (true) goto _L1; else goto _L4
_L4:
    }



}
