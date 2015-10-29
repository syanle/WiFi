// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.util;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.widget.RemoteViews;
import java.lang.reflect.Field;

public class j
{

    protected Context a;
    protected Notification b;
    protected android.app.Notification.Builder c;

    public j(Context context)
    {
        b = new Notification();
        a = context.getApplicationContext();
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c = new android.app.Notification.Builder(context);
        }
    }

    public j a(int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setSmallIcon(i);
        }
        b.icon = i;
        return this;
    }

    public j a(long l)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setWhen(l);
        }
        b.when = l;
        return this;
    }

    public j a(PendingIntent pendingintent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setContentIntent(pendingintent);
        }
        b.contentIntent = pendingintent;
        return this;
    }

    public j a(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setOngoing(flag);
        }
        if (flag)
        {
            Notification notification = b;
            notification.flags = notification.flags | 2;
            return this;
        } else
        {
            Notification notification1 = b;
            notification1.flags = notification1.flags & -3;
            return this;
        }
    }

    public j b(RemoteViews remoteviews)
    {
        if (android.os.Build.VERSION.SDK_INT < 16 && android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setContent(remoteviews);
        }
        b.contentView = remoteviews;
        return this;
    }

    public j b(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setAutoCancel(flag);
        }
        if (flag)
        {
            Notification notification = b;
            notification.flags = notification.flags | 0x10;
            return this;
        } else
        {
            Notification notification1 = b;
            notification1.flags = notification1.flags & 0xffffffef;
            return this;
        }
    }

    public j c(CharSequence charsequence)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            c.setTicker(charsequence);
        }
        b.tickerText = charsequence;
        return this;
    }

    public void e()
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        Field field = android/app/Notification$Builder.getDeclaredField("mActions");
        field.setAccessible(true);
        field.set(c, field.get(c).getClass().newInstance());
        return;
        Exception exception;
        exception;
    }
}
