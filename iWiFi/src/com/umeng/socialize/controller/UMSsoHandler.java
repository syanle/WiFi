// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.app.Activity;
import android.content.Intent;

public abstract class UMSsoHandler
{

    public static final int DEFAULT_AUTH_ACTIVITY_CODE = 64132;
    public static final int DEFAULT_REQUEST_CODE = 0;
    public static final int FACEBOOK_REQUEST_CODE = 64206;
    public static final int QQ_REQUEST_CODE = 5658;
    public static final int QZONE_REQUEST_CODE = 5657;
    public static final int SINA_REQUEST_CODE = 5668;
    public static final int TENCENT_WB_REQUEST_CODE = 5669;
    protected boolean isShareAfterLogin;
    private String mKey;
    private String mToken;

    public UMSsoHandler()
    {
        isShareAfterLogin = true;
    }

    public abstract void authorize(Activity activity, com.umeng.socialize.controller.listener.SocializeListeners.UMAuthListener umauthlistener);

    public abstract void authorizeCallBack(int i, int j, Intent intent);

    public String getKey()
    {
        return mKey;
    }

    public int getRequstCode()
    {
        return 0;
    }

    public final String getToken()
    {
        return mToken;
    }

    public boolean isShareAfterLogin()
    {
        return isShareAfterLogin;
    }

    public void setKey(String s)
    {
        mKey = s;
    }

    public void setShareAfterLogin(boolean flag)
    {
        isShareAfterLogin = flag;
    }

    public void setToken(String s)
    {
        mToken = s;
    }
}
