// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.model;


public class AccountModel
{

    private String accessToken;
    private long expiresIn;
    private String name;
    private String nike;
    private String openID;
    private String openKey;
    private String refreshToken;

    public AccountModel()
    {
    }

    public AccountModel(String s)
    {
        accessToken = s;
    }

    public String getAccessToken()
    {
        return accessToken;
    }

    public long getExpiresIn()
    {
        return expiresIn;
    }

    public String getName()
    {
        return name;
    }

    public String getNike()
    {
        return nike;
    }

    public String getOpenID()
    {
        return openID;
    }

    public String getOpenKey()
    {
        return openKey;
    }

    public String getRefreshToken()
    {
        return refreshToken;
    }

    public void setAccessToken(String s)
    {
        accessToken = s;
    }

    public void setExpiresIn(long l)
    {
        expiresIn = l;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setNike(String s)
    {
        nike = s;
    }

    public void setOpenID(String s)
    {
        openID = s;
    }

    public void setOpenKey(String s)
    {
        openKey = s;
    }

    public void setRefreshToken(String s)
    {
        refreshToken = s;
    }
}
