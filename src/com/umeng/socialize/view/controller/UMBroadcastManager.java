// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.controller;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.socom.DeviceConfig;

public class UMBroadcastManager
{

    private static final String a = "entity_changed";

    public UMBroadcastManager()
    {
    }

    public static String getEntityChangeAction(Context context, String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return (new StringBuilder(String.valueOf(DeviceConfig.getPackageName(context)))).append(".").append(s).append(".").append("entity_changed").toString();
        }
    }

    public static void sendEntityChange(Context context, String s)
    {
        s = getEntityChangeAction(context, s);
        if (!TextUtils.isEmpty(s))
        {
            context.sendBroadcast(new Intent(s));
            Log.d("com.umeng.socialize", (new StringBuilder("send broadcast ")).append(s).toString());
        }
    }
}
