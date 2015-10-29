// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.tencent.mm.sdk.openapi.BaseReq;
import com.tencent.mm.sdk.openapi.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.umeng.socialize.controller.UMWXHandler;

public abstract class WXCallbackActivity extends Activity
    implements IWXAPIEventHandler
{

    private final String a = com/umeng/socialize/view/WXCallbackActivity.getSimpleName();

    public WXCallbackActivity()
    {
    }

    private IWXAPI a()
    {
        return UMWXHandler.getWXApi();
    }

    private void a(Intent intent)
    {
        Log.d(a, "### WXCallbackActivity   handleIntent()");
        intent = a();
        if (intent != null)
        {
            intent.handleIntent(getIntent(), this);
            return;
        } else
        {
            Log.e(a, "### WXCallbackActivity   wxApi == null ");
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.d(a, "### WXCallbackActivity   onCreate");
        a(getIntent());
    }

    protected final void onNewIntent(Intent intent)
    {
        Log.d(a, "### WXCallbackActivity   onNewIntent");
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent);
    }

    public void onReq(BaseReq basereq)
    {
        UMWXHandler.getWXEventHandler().onReq(basereq);
        finish();
    }

    public void onResp(BaseResp baseresp)
    {
        UMWXHandler.getWXEventHandler().onResp(baseresp);
        finish();
    }
}
