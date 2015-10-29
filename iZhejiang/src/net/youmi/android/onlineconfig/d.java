// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig;

import android.content.Context;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.c.b.a;

// Referenced classes of package net.youmi.android.onlineconfig:
//            b, e, OnlineConfigCallBack

public class d
    implements Runnable
{

    private OnlineConfigCallBack a;
    private Context b;
    private String c;

    public d(Context context, OnlineConfigCallBack onlineconfigcallback, String s)
    {
        b = context.getApplicationContext();
        context = e.b(s);
        if (onlineconfigcallback == null || b == null || context == null)
        {
            throw new NullPointerException();
        } else
        {
            a = onlineconfigcallback;
            c = context;
            return;
        }
    }

    static String a(d d1)
    {
        return d1.c;
    }

    static OnlineConfigCallBack b(d d1)
    {
        return d1.a;
    }

    public void run()
    {
        try
        {
            String s = net.youmi.android.onlineconfig.b.a(b, c, null);
            m.a().a(new net.youmi.android.onlineconfig.e(this, s));
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }
}
