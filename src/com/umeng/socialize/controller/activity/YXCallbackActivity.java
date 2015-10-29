// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.activity;

import android.util.Log;
import com.umeng.socialize.controller.UMYXHandler;
import im.yixin.sdk.api.BaseReq;
import im.yixin.sdk.api.BaseResp;
import im.yixin.sdk.api.BaseYXEntryActivity;
import im.yixin.sdk.api.IYXAPI;
import im.yixin.sdk.api.IYXAPICallbackEventHandler;

public abstract class YXCallbackActivity extends BaseYXEntryActivity
{

    public YXCallbackActivity()
    {
    }

    protected IYXAPI getIYXAPI()
    {
        Log.d("", "#### get \u6613\u4FE1 API");
        return UMYXHandler.getYXApi();
    }

    public void onReq(BaseReq basereq)
    {
        UMYXHandler.getCallbackHandler().onReq(basereq);
        finish();
    }

    public void onResp(BaseResp baseresp)
    {
        Log.d("", "#### \u6613\u4FE1 onResp");
        UMYXHandler.getCallbackHandler().onResp(baseresp);
        finish();
    }
}
