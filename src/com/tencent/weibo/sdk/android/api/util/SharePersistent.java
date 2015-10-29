// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.api.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.weibo.sdk.android.model.AccountModel;

public class SharePersistent
{

    private static final String FILE_NAME = "ANDROID_SDK";
    private static SharePersistent instance;

    private SharePersistent()
    {
    }

    public static SharePersistent getInstance()
    {
        if (instance == null)
        {
            instance = new SharePersistent();
        }
        return instance;
    }

    public boolean clear(Context context, String s)
    {
        return context.getSharedPreferences("ANDROID_SDK", 0).edit().clear().commit();
    }

    public String get(Context context, String s)
    {
        return context.getSharedPreferences("ANDROID_SDK", 0).getString(s, "");
    }

    public AccountModel getAccount(Context context)
    {
        AccountModel accountmodel = new AccountModel();
        context = context.getSharedPreferences("ANDROID_SDK", 0);
        accountmodel.setAccessToken(context.getString("ACCESS_TOKEN", ""));
        accountmodel.setExpiresIn(context.getLong("EXPIRES_IN", 0L));
        accountmodel.setOpenID(context.getString("OPEN_ID", ""));
        accountmodel.setOpenKey(context.getString("OPEN_KEY", ""));
        accountmodel.setRefreshToken(context.getString("REFRESH_TOKEN", ""));
        accountmodel.setName(context.getString("NAME", ""));
        accountmodel.setNike(context.getString("NICK", ""));
        return accountmodel;
    }

    public long getLong(Context context, String s)
    {
        return context.getSharedPreferences("ANDROID_SDK", 0).getLong(s, 0L);
    }

    public boolean put(Context context, String s, long l)
    {
        context = context.getSharedPreferences("ANDROID_SDK", 0).edit();
        context.putLong(s, l);
        return context.commit();
    }

    public boolean put(Context context, String s, String s1)
    {
        context = context.getSharedPreferences("ANDROID_SDK", 0).edit();
        context.putString(s, s1);
        return context.commit();
    }
}
