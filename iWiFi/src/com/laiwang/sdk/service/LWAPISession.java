// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.service;

import com.laiwang.sdk.message.IILWMessage;
import com.laiwang.sdk.openapi.IILWAPICallback;

public class LWAPISession
{

    private String mAppName;
    private String mAppTocken;
    private String mAwakeupURI;
    private IILWAPICallback mIILWAPICallback;
    private IILWMessage mLWMessage;
    private String mPackageName;
    private int mRandomKey;
    private int mUID;
    private int mVersion;

    public LWAPISession()
    {
    }

    public String getAppName()
    {
        return mAppName;
    }

    public String getAppToken()
    {
        return mAppTocken;
    }

    public String getAwakeupURI()
    {
        return mAwakeupURI;
    }

    public IILWAPICallback getLWAPICallback()
    {
        return mIILWAPICallback;
    }

    public IILWMessage getLWMessage()
    {
        return mLWMessage;
    }

    public String getPackageName()
    {
        return mPackageName;
    }

    public int getRandomKey()
    {
        return mRandomKey;
    }

    public int getVersion()
    {
        return mVersion;
    }

    public void setAppName(String s)
    {
        mAppName = s;
    }

    public void setAppToken(String s)
    {
        mAppTocken = s;
    }

    public void setAwakeupURI(String s)
    {
        mAwakeupURI = s;
    }

    public void setLWAPICallback(IILWAPICallback iilwapicallback)
    {
        mIILWAPICallback = iilwapicallback;
    }

    public void setLWMessage(IILWMessage iilwmessage)
    {
        mLWMessage = iilwmessage;
    }

    public void setPackageName(String s)
    {
        mPackageName = s;
    }

    public void setRandomKey(int i)
    {
        mRandomKey = i;
    }

    public void setUid(int i)
    {
        mUID = i;
    }

    public void setVersion(int i)
    {
        mVersion = i;
    }
}
