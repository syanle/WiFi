// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.a;

import android.content.Context;
import com.umeng.common.Res;

public class c
{

    public c()
    {
    }

    public static int a(Context context)
    {
        return Res.getInstance(context).f("umeng_common_network_break_alert");
    }

    public static int b(Context context)
    {
        return Res.getInstance(context).f("umeng_common_action_info_exist");
    }

    public static int c(Context context)
    {
        return Res.getInstance(context).f("umeng_common_info_interrupt");
    }

    public static int d(Context context)
    {
        return Res.getInstance(context).f("umeng_common_action_pause");
    }

    public static int e(Context context)
    {
        return Res.getInstance(context).f("umeng_common_action_continue");
    }

    public static int f(Context context)
    {
        return Res.getInstance(context).f("umeng_common_action_cancel");
    }

    public static int g(Context context)
    {
        return Res.getInstance(context).f("umeng_common_download_notification_prefix");
    }

    public static int h(Context context)
    {
        return Res.getInstance(context).f("umeng_common_download_failed");
    }

    public static int i(Context context)
    {
        return Res.getInstance(context).f("umeng_common_start_download_notification");
    }

    public static int j(Context context)
    {
        return Res.getInstance(context).f("umeng_common_download_finish");
    }

    public static int k(Context context)
    {
        return Res.getInstance(context).f("umeng_common_patch_finish");
    }

    public static int l(Context context)
    {
        return Res.getInstance(context).f("umeng_common_start_patch_notification");
    }
}
