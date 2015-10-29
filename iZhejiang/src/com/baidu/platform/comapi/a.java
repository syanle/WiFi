// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.platform.comapi.c.b;
import com.baidu.platform.comapi.c.c;

public class a extends BroadcastReceiver
{

    public static final String a = com/baidu/platform/comapi/a.getSimpleName();

    public a()
    {
    }

    public void a(Context context)
    {
        context = b.c(context);
        if (!c.g().equals(context))
        {
            c.a(context);
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        a(context);
        b.a(context);
    }

}
