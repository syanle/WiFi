// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.iwifi.sdk.chinanet:
//            WelcomePage

class this._cls0 extends WebViewClient
{

    final WelcomePage this$0;

    public void onLoadResource(WebView webview, String s)
    {
        super.onLoadResource(webview, s);
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, final String url)
    {
        if (webview == null || url == null || url.length() == 0)
        {
            return false;
        }
        if (url.startsWith("tel:"))
        {
            webview = new Intent("android.intent.action.DIAL", Uri.parse(url));
            startActivity(webview);
            return true;
        }
        if (url.startsWith("rtsp://"))
        {
            webview = new Intent("android.intent.action.VIEW", Uri.parse(url));
            startActivity(webview);
            return true;
        }
        if (url.endsWith(".apk"))
        {
            pack = url.substring(url.lastIndexOf("/") + 1, url.indexOf("_"));
            launchActivity = url.substring(url.indexOf("_") + 1, url.indexOf(".apk"));
            if (WelcomePage.access$0(WelcomePage.this, pack, launchActivity))
            {
                try
                {
                    webview = new Intent("android.intent.action.MAIN");
                    webview.addCategory("android.intent.category.LAUNCHER");
                    webview.setComponent(new ComponentName(pack, launchActivity));
                    startActivity(webview);
                }
                // Misplaced declaration of an exception variable
                catch (WebView webview)
                {
                    return true;
                }
                return true;
            } else
            {
                WelcomePage.access$1(WelcomePage.this, (new android.app.iewClient2.this._cls0(WelcomePage.this)).e("\u662F\u5426\u4E0B\u8F7D\u8BE5\u5E94\u7528\uFF1F").veButton("\u786E\u5B9A", new android.content.DialogInterface.OnClickListener() {

                    final WelcomePage.MyWebViewClient2 this$1;
                    private final String val$url;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(url));
                        startActivity(intent);
                        dialoginterface.cancel();
                    }

            
            {
                this$1 = WelcomePage.MyWebViewClient2.this;
                url = s;
                super();
            }
                }).veButton("\u53D6\u6D88", new android.content.DialogInterface.OnClickListener() {

                    final WelcomePage.MyWebViewClient2 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.cancel();
                    }

            
            {
                this$1 = WelcomePage.MyWebViewClient2.this;
                super();
            }
                }).iewClient2());
                WelcomePage.access$2(WelcomePage.this).show();
                return true;
            }
        } else
        {
            webview.loadUrl(url);
            return true;
        }
    }


    _cls2.this._cls1()
    {
        this$0 = WelcomePage.this;
        super();
    }
}
