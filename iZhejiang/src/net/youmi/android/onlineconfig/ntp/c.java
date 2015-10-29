// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig.ntp;

import net.youmi.android.a.b.k.m;
import net.youmi.android.a.c.b.a;

// Referenced classes of package net.youmi.android.onlineconfig.ntp:
//            a, d, NtpResultListener

public class c
    implements Runnable
{

    private int a;
    private int b;
    private int c;
    private NtpResultListener d;

    public c(int i, int j, int k, NtpResultListener ntpresultlistener)
    {
        a = i;
        b = j;
        c = k;
        d = ntpresultlistener;
    }

    static NtpResultListener a(c c1)
    {
        return c1.d;
    }

    public void run()
    {
        net.youmi.android.onlineconfig.ntp.a a1;
        boolean flag;
        try
        {
            a1 = new net.youmi.android.onlineconfig.ntp.a(a, b, c);
        }
        catch (Throwable throwable)
        {
            net.youmi.android.a.c.b.a.a(throwable);
            return;
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        flag = a1.a();
        if (d != null)
        {
            m.a().a(new d(this, flag));
        }
        return;
        Throwable throwable1;
        throwable1;
        net.youmi.android.a.c.b.a.a(throwable1);
        return;
    }
}
