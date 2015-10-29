// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.update;

import android.content.Context;
import net.youmi.android.a.b.k.m;
import net.youmi.android.a.c.b.a;

// Referenced classes of package net.youmi.android.update:
//            a, c, CheckAppUpdateCallBack

public class b
    implements Runnable
{

    private CheckAppUpdateCallBack a;
    private Context b;

    public b(Context context, CheckAppUpdateCallBack checkappupdatecallback)
    {
        b = context.getApplicationContext();
        if (checkappupdatecallback == null || b == null)
        {
            throw new NullPointerException();
        } else
        {
            a = checkappupdatecallback;
            return;
        }
    }

    static CheckAppUpdateCallBack a(b b1)
    {
        return b1.a;
    }

    public void run()
    {
        try
        {
            AppUpdateInfo appupdateinfo = net.youmi.android.update.a.a(b);
            m.a().a(new c(this, appupdateinfo));
            return;
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
        }
    }
}
