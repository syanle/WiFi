// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.sso;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import com.tencent.weibo.sdk.android.component.sso.AuthHelper;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SocializeConfig;
import com.umeng.socialize.common.ResContainer;
import com.umeng.socialize.controller.UMSsoHandler;
import com.umeng.socialize.controller.impl.c;
import com.umeng.socialize.exception.SocializeException;

public class TencentWBSsoHandler extends UMSsoHandler
{

    private Activity mActivity;
    private com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener mAuthListener;
    private SHARE_MEDIA mPlatform;

    public TencentWBSsoHandler()
    {
        mPlatform = SHARE_MEDIA.TENCENT;
    }

    private void auth(long l, String s, final Activity activity, final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener listener)
    {
        AuthHelper.register(activity, l, s, new _cls1());
        AuthHelper.auth(activity, "");
    }

    public void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener)
    {
        mAuthListener = umauthlistener;
        c.g.sendEmptyMessage(0);
        auth(Long.valueOf(getKey()).longValue(), getToken(), activity, umauthlistener);
        SocializeConfig.setSelectedPlatfrom(SHARE_MEDIA.TENCENT);
    }

    public void authorizeCallBack(int i, int j, Intent intent)
    {
        if (c.c != null)
        {
            c.c.setMessage("\u8DF3\u8F6C\u7F16\u8F91\u9875\u4E2D\uFF0C\u8BF7\u7A0D\u5019...");
        }
        if (i != 5669) goto _L2; else goto _L1
_L1:
        if (j != -1) goto _L4; else goto _L3
_L3:
        if (mAuthListener == null) goto _L2; else goto _L5
_L5:
        mAuthListener.onComplete(intent.getExtras(), mPlatform);
_L7:
        return;
_L4:
        if (i == 0)
        {
            if (intent != null)
            {
                mAuthListener.onError(new SocializeException(mActivity.getResources().getString(ResContainer.getResourceId(mActivity, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_tencent_oauth_login_fail"))), mPlatform);
                return;
            } else
            {
                mAuthListener.onCancel(mPlatform);
                return;
            }
        }
_L2:
        if (mAuthListener != null)
        {
            mAuthListener.onCancel(mPlatform);
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public int getRequstCode()
    {
        return 5669;
    }


    private class _cls1
        implements OnAuthListener
    {

        final TencentWBSsoHandler this$0;
        private final Activity val$activity;
        private final com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener val$listener;

        public void onAuthFail(int i, String s)
        {
            listener.onError(new SocializeException(activity.getString(ResContainer.getResourceId(activity, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_tencent_no_connection"))), mPlatform);
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
            listener.onError(new SocializeException(activity.getString(ResContainer.getResourceId(activity, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_tencent_no_connection"))), mPlatform);
        }

        public void onWeiboVersionMisMatch()
        {
            listener.onError(new SocializeException(activity.getString(ResContainer.getResourceId(activity, com.umeng.socialize.common.ResContainer.ResType.STRING, "umeng_socialize_text_tencent_no_connection"))), mPlatform);
        }

        _cls1()
        {
            this$0 = TencentWBSsoHandler.this;
            listener = umauthlistener;
            activity = activity1;
            super();
        }
    }

}
