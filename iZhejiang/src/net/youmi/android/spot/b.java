// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.spot;

import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RelativeLayout;
import net.youmi.android.c.a.s;

// Referenced classes of package net.youmi.android.spot:
//            a, SpotManager

class b
    implements Runnable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public void run()
    {
        int i;
        if (a.b == null || net.youmi.android.spot.a.a(a) == null)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        net.youmi.android.spot.a.a(a, false);
        a.b.addView(net.youmi.android.spot.a.a(a));
        i = android.os.Build.VERSION.SDK_INT;
        if (i < 14)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (net.youmi.android.spot.a.b(a) != null)
        {
            s.c(net.youmi.android.spot.a.c(a), net.youmi.android.spot.a.a(a), 500L);
        }
_L1:
        android.content.SharedPreferences.Editor editor = net.youmi.android.spot.a.c(a).getSharedPreferences(SpotManager.b, 0).edit();
        editor.putLong("lastShowTime", System.currentTimeMillis());
        editor.commit();
        a.e();
        return;
        Object obj;
        obj;
        ((Throwable) (obj)).printStackTrace();
          goto _L1
        obj;
    }
}
