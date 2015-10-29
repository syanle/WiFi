// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.common.net;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.widget.RemoteViews;
import com.umeng.common.Res;
import com.umeng.common.a.a;
import com.umeng.common.a.c;
import com.umeng.common.util.j;

// Referenced classes of package com.umeng.common.net:
//            d

static class init> extends j
{

    public init> a()
    {
        b.contentView.setViewVisibility(com.umeng.common.a.a.e(a), 8);
        b.contentView.setViewVisibility(com.umeng.common.a.a.g(a), 8);
        return this;
    }

    public a a(int i, int k, boolean flag)
    {
        if (android.os.d.VERSION.SDK_INT >= 14)
        {
            c.setProgress(i, k, flag);
        }
        b.contentView.setProgressBar(com.umeng.common.a.a.c(a), 100, k, false);
        return this;
    }

    public  a(PendingIntent pendingintent, PendingIntent pendingintent1)
    {
        b.contentView.setOnClickPendingIntent(com.umeng.common.a.a.e(a), pendingintent);
        b.contentView.setViewVisibility(com.umeng.common.a.a.e(a), 0);
        b.contentView.setViewVisibility(com.umeng.common.a.a.g(a), 0);
        b.contentView.setOnClickPendingIntent(com.umeng.common.a.a.g(a), pendingintent1);
        return this;
    }

    public s a(RemoteViews remoteviews)
    {
        b.contentView = remoteviews;
        return this;
    }

    public contentView a(CharSequence charsequence)
    {
        if (android.os.d.VERSION.SDK_INT >= 14)
        {
            c.setContentText(charsequence);
        }
        b.contentView.setTextViewText(com.umeng.common.a.a.a(a), charsequence);
        return this;
    }

    public void a(int i, String s, PendingIntent pendingintent)
    {
        if (android.os.d.VERSION.SDK_INT >= 16)
        {
            c.addAction(i, s, pendingintent);
        }
    }

    public  b()
    {
        int i = com.umeng.common.a.a.e(a);
        b.contentView.setTextViewText(i, a.getResources().getString(com.umeng.common.a.c.e(a.getApplicationContext())));
        b.contentView.setInt(i, "setBackgroundResource", Res.getInstance(a).c("umeng_common_gradient_green"));
        return this;
    }

    public a b(CharSequence charsequence)
    {
        if (android.os.d.VERSION.SDK_INT >= 14)
        {
            c.setContentTitle(charsequence);
        }
        b.contentView.setTextViewText(com.umeng.common.a.a.d(a), charsequence);
        return this;
    }

    public a c()
    {
        int i = com.umeng.common.a.a.e(a);
        b.contentView.setTextViewText(i, a.getResources().getString(com.umeng.common.a.c.d(a.getApplicationContext())));
        b.contentView.setInt(i, "setBackgroundResource", Res.getInstance(a).c("umeng_common_gradient_orange"));
        return this;
    }

    public Notification d()
    {
        if (android.os.d.VERSION.SDK_INT >= 16)
        {
            return c.build();
        }
        if (android.os.d.VERSION.SDK_INT >= 14)
        {
            return c.getNotification();
        } else
        {
            return b;
        }
    }

    public (Context context)
    {
        super(context);
    }
}
