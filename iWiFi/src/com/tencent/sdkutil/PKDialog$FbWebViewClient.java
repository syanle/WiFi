// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;

// Referenced classes of package com.tencent.sdkutil:
//            PKDialog, ServerSetting, Util

class <init> extends WebViewClient
{

    final PKDialog this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        PKDialog.access$600(PKDialog.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        Log.d(PKDialog.access$300(), (new StringBuilder()).append("Webview loading URL: ").append(s).toString());
        super.onPageStarted(webview, s, bitmap);
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        PKDialog.access$500(PKDialog.this).nError(new UiError(i, s, s1));
        if (PKDialog.access$400() != null && PKDialog.access$400().get() != null)
        {
            Toast.makeText((Context)PKDialog.access$400().get(), "\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\u6216\u7CFB\u7EDF\u9519\u8BEF", 0).show();
        }
        dismiss();
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        sslerrorhandler.proceed();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Log.d(PKDialog.access$300(), (new StringBuilder()).append("Redirect URL: ").append(s).toString());
        if (s.startsWith(ServerSetting.getInstance().getSettingUrl((Context)PKDialog.access$400().get(), 1)))
        {
            PKDialog.access$500(PKDialog.this).nComplete(Util.parseUrlToJson(s));
            dismiss();
            return true;
        }
        if (s.startsWith("auth://cancel"))
        {
            PKDialog.access$500(PKDialog.this).nCancel();
            dismiss();
            return true;
        }
        if (s.startsWith("auth://close"))
        {
            dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    private ()
    {
        this$0 = PKDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
