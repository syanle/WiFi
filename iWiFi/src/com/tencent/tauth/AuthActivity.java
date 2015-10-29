// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.sdkutil.BrowserAuth;
import com.tencent.sdkutil.TDialog;
import com.tencent.sdkutil.TemporaryStorage;
import com.tencent.sdkutil.Util;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.tauth:
//            IUiListener, UiError

public class AuthActivity extends Activity
{

    private static final String TAG = "AuthActivity";

    public AuthActivity()
    {
    }

    private void execAuthCallback(Bundle bundle, String s)
    {
        BrowserAuth browserauth = BrowserAuth.getInstance();
        String s1 = bundle.getString("serial");
        com.tencent.sdkutil.BrowserAuth.Auth auth = browserauth.get(s1);
        if (auth != null)
        {
            if (s.indexOf("://cancel") != -1)
            {
                auth.listener.onCancel();
                auth.dialog.dismiss();
            } else
            {
                s = bundle.getString("access_token");
                if (s != null)
                {
                    bundle.putString("access_token", browserauth.decode(s, auth.key));
                }
                bundle = Util.encodeUrl(bundle);
                bundle = Util.decodeUrlToJson(new JSONObject(), bundle);
                s = bundle.optString("cb");
                if (!"".equals(s))
                {
                    auth.dialog.callJs(s, bundle.toString());
                } else
                {
                    auth.listener.onComplete(bundle);
                    auth.dialog.dismiss();
                }
            }
            browserauth.remove(s1);
        }
        finish();
    }

    private void execShareToQQCallback(Bundle bundle)
    {
        Object obj;
        String s;
        obj = TemporaryStorage.get("shareToQQ");
        if (obj == null)
        {
            finish();
            return;
        }
        obj = (IUiListener)obj;
        s = bundle.getString("result");
        bundle = bundle.getString("response");
        if (!s.equals("cancel")) goto _L2; else goto _L1
_L1:
        ((IUiListener) (obj)).onCancel();
_L4:
        finish();
        return;
_L2:
        if (s.equals("error"))
        {
            ((IUiListener) (obj)).onError(new UiError(-6, "unknown error", (new StringBuilder()).append(bundle).append("").toString()));
        } else
        if (s.equals("complete"))
        {
            if (bundle == null)
            {
                bundle = "{\"ret\": 0}";
            }
            try
            {
                ((IUiListener) (obj)).onComplete(new JSONObject(bundle));
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                ((IUiListener) (obj)).onError(new UiError(-4, "json error", (new StringBuilder()).append(bundle).append("").toString()));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void handleActionUri(Uri uri)
    {
        if (uri == null || uri.toString().equals(""))
        {
            finish();
            return;
        }
        uri = uri.toString();
        Bundle bundle = Util.decodeUrl(uri.substring(uri.indexOf("#") + 1));
        String s = bundle.getString("action");
        if (s == null)
        {
            execAuthCallback(bundle, uri);
            return;
        }
        if (s.equals("shareToQQ"))
        {
            execShareToQQCallback(bundle);
            return;
        } else
        {
            execAuthCallback(bundle, uri);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        handleActionUri(getIntent().getData());
    }
}
