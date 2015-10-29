// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.content.Context;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.db.OauthHelper;
import com.umeng.socialize.db.c;

public class UMInfoAgent
{

    public UMInfoAgent()
    {
    }

    public static boolean isLogin(Context context)
    {
        return c.c(context);
    }

    public static boolean isOauthed(Context context, SHARE_MEDIA share_media)
    {
        return OauthHelper.isAuthenticated(context, share_media);
    }

    public static void removeOauth(Context context, SHARE_MEDIA share_media)
    {
        OauthHelper.remove(context, share_media);
    }
}
