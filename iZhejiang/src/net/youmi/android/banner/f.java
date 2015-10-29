// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.banner;

import java.util.TimerTask;

// Referenced classes of package net.youmi.android.banner:
//            e

class f extends TimerTask
{

    final e a;

    f(e e1)
    {
        a = e1;
        super();
    }

    public void run()
    {
        switch (a.e)
        {
        case 2: // '\002'
        case 3: // '\003'
        default:
            return;

        case 0: // '\0'
            a.e();
            return;

        case 1: // '\001'
            a.f();
            break;
        }
    }
}
