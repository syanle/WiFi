// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.tauth;

import android.content.Context;

public class QQToken
{

    private Context appContext;
    private String mAccessToken;
    private String mAppId;
    private long mExpiresIn;
    private String mOpenId;

    public QQToken(String s, Context context)
    {
        mExpiresIn = -1L;
        mAppId = s;
        appContext = context;
    }

    public void copyData(QQToken qqtoken)
    {
        mAppId = qqtoken.mAppId;
        mAccessToken = qqtoken.mAccessToken;
        mExpiresIn = qqtoken.mExpiresIn;
        appContext = qqtoken.appContext;
        mOpenId = qqtoken.mOpenId;
    }

    public String getAccessToken()
    {
        return mAccessToken;
    }

    public Context getAppContext()
    {
        return appContext;
    }

    public String getAppId()
    {
        return mAppId;
    }

    public long getExpiresIn()
    {
        return mExpiresIn;
    }

    public String getOpenId()
    {
        return mOpenId;
    }

    public boolean isSessionValid()
    {
        return mAccessToken != null && System.currentTimeMillis() < mExpiresIn;
    }

    public void setAccessToken(String s, String s1)
    {
        mExpiresIn = 0L;
        mAccessToken = null;
        String s2 = s1;
        if (s1 == null)
        {
            s2 = "0";
        }
        mExpiresIn = System.currentTimeMillis() + Long.parseLong(s2) * 1000L;
        mAccessToken = s;
    }

    public void setAppContext(Context context)
    {
        appContext = context;
    }

    public void setAppId(String s)
    {
        mAppId = s;
    }

    public void setOpenId(String s)
    {
        mOpenId = s;
    }
}
