// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.authorize.AuthorizeHelper;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.g;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            g

public class f extends b
{

    private boolean d;

    public f(g g1)
    {
        super(g1);
    }

    static AuthorizeListener a(f f1)
    {
        return f1.c;
    }

    private void a(Platform platform, String s)
    {
        (new cn.sharesdk.sina.weibo.g(this, platform, s)).start();
    }

    private Intent b(String s)
    {
        s = new Intent("android.intent.action.SENDTO", Uri.parse((new StringBuilder()).append("smsto:").append(s).toString()));
        s.putExtra("sms_body", "");
        s.setFlags(0x10000000);
        return s;
    }

    static AuthorizeListener b(f f1)
    {
        return f1.c;
    }

    static AuthorizeListener c(f f1)
    {
        return f1.c;
    }

    protected void a(String s)
    {
        if (!d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Bundle bundle;
        String s1;
        d = true;
        bundle = R.urlToBundle(s);
        s = bundle.getString("error");
        s1 = bundle.getString("error_code");
        if (c == null) goto _L1; else goto _L3
_L3:
        int i;
        if (s == null && s1 == null)
        {
            s = bundle.getString("code");
            if (TextUtils.isEmpty(s))
            {
                c.onError(new Throwable("Authorize code is empty"));
            }
            a(a.a().getPlatform(), s);
            return;
        }
        if (s.equals("access_denied"))
        {
            c.onCancel();
            return;
        }
        i = 0;
        int j = R.parseInt(s1);
        i = j;
_L5:
        s = (new StringBuilder()).append(s).append(" (").append(i).append(")").toString();
        c.onError(new Throwable(s));
        return;
        Throwable throwable;
        throwable;
        Ln.e(throwable);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        if (!TextUtils.isEmpty(b) && s.startsWith(b))
        {
            webview.stopLoading();
            a.finish();
            a(s);
        } else
        if (s.startsWith("sms:"))
        {
            s = s.substring(4);
            try
            {
                bitmap = b(s);
                bitmap.setPackage("com.android.mms");
                webview.getContext().startActivity(bitmap);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Bitmap bitmap) { }
            try
            {
                s = b(s);
                webview.getContext().startActivity(s);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview) { }
            if (c != null)
            {
                c.onError(webview);
                return;
            }
        } else
        {
            super.onPageStarted(webview, s, bitmap);
            return;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (TextUtils.isEmpty(b) || !s.startsWith(b)) goto _L2; else goto _L1
_L1:
        webview.stopLoading();
        a.finish();
        a(s);
_L4:
        return true;
_L2:
        if (!s.startsWith("sms:"))
        {
            break; /* Loop/switch isn't completed */
        }
        s = s.substring(4);
        Intent intent = b(s);
        intent.setPackage("com.android.mms");
        webview.getContext().startActivity(intent);
        return true;
        Throwable throwable;
        throwable;
        s = b(s);
        webview.getContext().startActivity(s);
        return true;
        webview;
        if (c != null)
        {
            c.onError(webview);
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return super.shouldOverrideUrlLoading(webview, s);
    }
}
