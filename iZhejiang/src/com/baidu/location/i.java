// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.location;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import java.util.Calendar;

class i
{

    i()
    {
    }

    public static void a(Context context, PendingIntent pendingintent)
    {
        ((AlarmManager)context.getSystemService("alarm")).cancel(pendingintent);
    }

    public static void a(Context context, PendingIntent pendingintent, int j)
    {
        context = (AlarmManager)context.getSystemService("alarm");
        context.cancel(pendingintent);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.add(14, j);
        context.set(0, calendar.getTimeInMillis(), pendingintent);
    }
}
