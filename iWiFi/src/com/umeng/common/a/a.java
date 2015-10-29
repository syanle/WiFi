// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.a;

import android.content.Context;
import com.umeng.common.Res;

public class a
{

    public a()
    {
    }

    public static int a(Context context)
    {
        return Res.getInstance(context).b("umeng_common_progress_text");
    }

    public static int b(Context context)
    {
        return Res.getInstance(context).b("umeng_common_icon_view");
    }

    public static int c(Context context)
    {
        return Res.getInstance(context).b("umeng_common_progress_bar");
    }

    public static int d(Context context)
    {
        return Res.getInstance(context).b("umeng_common_title");
    }

    public static int e(Context context)
    {
        return Res.getInstance(context).b("umeng_common_rich_notification_continue");
    }

    public static int f(Context context)
    {
        return Res.getInstance(context).b("umeng_common_rich_notification_pause");
    }

    public static int g(Context context)
    {
        return Res.getInstance(context).b("umeng_common_rich_notification_cancel");
    }
}
