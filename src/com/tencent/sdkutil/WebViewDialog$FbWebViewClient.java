// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;

// Referenced classes of package com.tencent.sdkutil:
//            WebViewDialog, Util, ServerSetting

class <init> extends WebViewClient
{

    final WebViewDialog this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (WebViewDialog.access$300() != null && WebViewDialog.access$300().get() != null)
        {
            ((View)WebViewDialog.access$300().get()).setVisibility(8);
        }
        WebViewDialog.access$900(WebViewDialog.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        if (WebViewDialog.access$300() != null && WebViewDialog.access$300().get() != null)
        {
            ((View)WebViewDialog.access$300().get()).setVisibility(0);
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        WebViewDialog.access$800(WebViewDialog.this).nError(new UiError(i, s, s1));
        if (WebViewDialog.access$100() != null && WebViewDialog.access$100().get() != null)
        {
            Toast.makeText((Context)WebViewDialog.access$100().get(), "\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\u6216\u7CFB\u7EDF\u9519\u8BEF", 0).show();
        }
        dismiss();
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        sslerrorhandler.proceed();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.startsWith("auth://browser"))
        {
            Util.parseUrlToJson(s);
            return true;
        }
        if (s.startsWith(ServerSetting.getInstance().getSettingUrl((Context)WebViewDialog.access$100().get(), 1)))
        {
            WebViewDialog.access$800(WebViewDialog.this).nComplete(Util.parseUrlToJson(s));
            dismiss();
            return true;
        }
        if (s.startsWith("auth://cancel"))
        {
            WebViewDialog.access$800(WebViewDialog.this).nCancel();
            dismiss();
            return true;
        }
        if (s.startsWith("auth://close"))
        {
            dismiss();
            return true;
        }
        if (s.startsWith("download://"))
        {
            webview = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(s.substring("download://".length()))));
            if (WebViewDialog.access$100() != null && WebViewDialog.access$100().get() != null)
            {
                ((Context)WebViewDialog.access$100().get()).startActivity(webview);
            }
            return true;
        } else
        {
            return false;
        }
    }

    private ()
    {
        this$0 = WebViewDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
