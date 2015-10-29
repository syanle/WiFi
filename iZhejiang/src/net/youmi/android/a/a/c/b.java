// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.c;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import net.youmi.android.a.a.i.a.a.c;
import net.youmi.android.a.a.i.a.b.d;

class b extends WebChromeClient
{

    protected c a;

    b(c c1)
    {
        a = c1;
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        if (a.h() != null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        jsresult.cancel();
        return true;
        Throwable throwable;
        throwable;
        boolean flag;
        try
        {
            flag = super.onJsAlert(webview, s, s1, jsresult);
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            try
            {
                jsresult.cancel();
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                return true;
            }
            return true;
        }
        return flag;
    }

    public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        if (a.h() != null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        jsresult.cancel();
        return true;
        Throwable throwable;
        throwable;
        boolean flag;
        try
        {
            flag = super.onJsConfirm(webview, s, s1, jsresult);
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            try
            {
                jsresult.cancel();
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                return true;
            }
            return true;
        }
        return flag;
    }

    public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        android.app.Activity activity = a.h();
        if (activity == null)
        {
            Throwable throwable;
            boolean flag;
            try
            {
                jspromptresult.cancel();
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                return true;
            }
            return true;
        }
        break MISSING_BLOCK_LABEL_23;
        throwable;
        try
        {
            flag = super.onJsPrompt(webview, s, s1, s2, jspromptresult);
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            try
            {
                jspromptresult.cancel();
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                return true;
            }
            return true;
        }
        return flag;
    }

    public void onProgressChanged(WebView webview, int i)
    {
        super.onProgressChanged(webview, i);
        try
        {
            if (a != null && a.f() != null)
            {
                a.f().a(webview, i);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }

    public void onReceivedTitle(WebView webview, String s)
    {
        super.onReceivedTitle(webview, s);
        try
        {
            if (a != null && a.f() != null)
            {
                a.f().c(webview, s);
            }
            return;
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return;
        }
    }
}
