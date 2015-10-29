// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import android.content.Intent;
import com.tencent.weibo.sdk.android.component.sso.OnAuthListener;
import com.tencent.weibo.sdk.android.component.sso.WeiboToken;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.exception.SocializeException;

// Referenced classes of package com.umeng.socialize.sso:
//            TencentWBSsoHandler

class val.activity
    implements OnAuthListener
{

    final TencentWBSsoHandler this$0;
    private final Activity val$activity;
    private final com.umeng.socialize.controller.listener.uthListener val$listener;

    public void onAuthFail(int i, String s)
    {
        val$listener.onError(new SocializeException(val$activity.getString(ResContainer.getResourceId(val$activity, com.umeng.socialize.common.TRING, "umeng_socialize_text_tencent_no_connection"))), TencentWBSsoHandler.access$0(TencentWBSsoHandler.this));
    }

    public void onAuthPassed(String s, WeiboToken weibotoken)
    {
        s = new Intent();
        s.putExtra("uid", weibotoken.openID);
        s.putExtra("access_token", weibotoken.accessToken);
        s.putExtra("openid", weibotoken.openID);
        authorizeCallBack(5669, -1, s);
    }

    public void onWeiBoNotInstalled()
    {
        val$listener.onError(new SocializeException(val$activity.getString(ResContainer.getResourceId(val$activity, com.umeng.socialize.common.TRING, "umeng_socialize_text_tencent_no_connection"))), TencentWBSsoHandler.access$0(TencentWBSsoHandler.this));
    }

    public void onWeiboVersionMisMatch()
    {
        val$listener.onError(new SocializeException(val$activity.getString(ResContainer.getResourceId(val$activity, com.umeng.socialize.common.TRING, "umeng_socialize_text_tencent_no_connection"))), TencentWBSsoHandler.access$0(TencentWBSsoHandler.this));
    }

    tener()
    {
        this$0 = final_tencentwbssohandler;
        val$listener = uthlistener;
        val$activity = Activity.this;
        super();
    }
}
