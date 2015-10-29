// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.content.Context;
import java.util.TimerTask;

// Referenced classes of package net.youmi.android.offers.d.b:
//            k

final class j extends TimerTask
{

    final Context a;

    j(Context context)
    {
        a = context;
        super();
    }

    public void run()
    {
        k.a(a);
    }
}
