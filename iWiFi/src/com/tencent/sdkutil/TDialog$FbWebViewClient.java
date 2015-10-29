// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

// Referenced classes of package com.tencent.sdkutil:
//            TDialog, Util, ServerSetting

class <init> extends WebViewClient
{

    final TDialog this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (TDialog.access$300() != null && TDialog.access$300().get() != null)
        {
            ((View)TDialog.access$300().get()).setVisibility(8);
        }
        TDialog.access$1100(TDialog.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        if (TDialog.access$300() != null && TDialog.access$300().get() != null)
        {
            ((View)TDialog.access$300().get()).setVisibility(0);
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        TDialog.access$1200(TDialog.this).nError(new UiError(i, s, s1));
        if (TDialog.access$100() != null && TDialog.access$100().get() != null)
        {
            Toast.makeText((Context)TDialog.access$100().get(), "\u7F51\u7EDC\u8FDE\u63A5\u5F02\u5E38\u6216\u7CFB\u7EDF\u9519\u8BEF", 0).show();
        }
        dismiss();
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        sslerrorhandler.proceed();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (!s.startsWith("auth://browser")) goto _L2; else goto _L1
_L1:
        webview = Util.parseUrlToJson(s);
        Log.i("olddata", webview.toString());
        TDialog.access$802(TDialog.this, TDialog.access$900(TDialog.this));
        if (!TDialog.access$800(TDialog.this)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        if (webview.optString("fail_cb", null) != null)
        {
            callJs(webview.optString("fail_cb"), "");
        } else
        if (webview.optInt("fall_to_wv") == 1)
        {
            s = TDialog.this;
            if (TDialog.access$1000(TDialog.this).indexOf("?") > -1)
            {
                webview = "&";
            } else
            {
                webview = "?";
            }
            TDialog.access$1084(s, webview);
            TDialog.access$1084(TDialog.this, "browser_error=1");
            TDialog.access$1100(TDialog.this).loadUrl(TDialog.access$1000(TDialog.this));
        } else
        {
            webview = webview.optString("redir", null);
            if (webview != null)
            {
                TDialog.access$1100(TDialog.this).loadUrl(webview);
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (s.startsWith(ServerSetting.getInstance().getSettingUrl((Context)TDialog.access$100().get(), 1)))
        {
            TDialog.access$1200(TDialog.this).nComplete(Util.parseUrlToJson(s));
            dismiss();
            return true;
        }
        if (s.startsWith("auth://cancel"))
        {
            TDialog.access$1200(TDialog.this).nCancel();
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
            if (TDialog.access$100() != null && TDialog.access$100().get() != null)
            {
                ((Context)TDialog.access$100().get()).startActivity(webview);
            }
            return true;
        } else
        {
            return false;
        }
    }

    private ()
    {
        this$0 = TDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
