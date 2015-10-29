// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.onlineconfig.ntp;


// Referenced classes of package net.youmi.android.onlineconfig.ntp:
//            c, NtpResultListener

class d
    implements Runnable
{

    final boolean a;
    final c b;

    d(c c1, boolean flag)
    {
        b = c1;
        a = flag;
        super();
    }

    public void run()
    {
        c.a(b).onCheckNtpFinish(a);
    }
}
