// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.Context;
import java.util.List;
import net.youmi.android.a.b.j.a;
import net.youmi.android.a.b.k.m;

// Referenced classes of package net.youmi.android.offers:
//            b, PointsEarnNotify, d, EarnPointsOrderList

class c extends a
{

    private static c b;
    private Context a;

    c(Context context)
    {
        a = context.getApplicationContext();
        if (a == null)
        {
            throw new NullPointerException("Context is null");
        } else
        {
            return;
        }
    }

    static Context a(c c1)
    {
        return c1.a;
    }

    static c a(Context context)
    {
        net/youmi/android/offers/c;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new c(context);
        }
        if (b == null)
        {
            throw new NullPointerException("Context is null");
        }
        break MISSING_BLOCK_LABEL_42;
        context;
        net/youmi/android/offers/c;
        JVM INSTR monitorexit ;
        throw context;
        context = b;
        net/youmi/android/offers/c;
        JVM INSTR monitorexit ;
        return context;
    }

    void a(EarnPointsOrderList earnpointsorderlist)
    {
        int i;
        List list;
        PointsEarnNotify pointsearnnotify;
        Throwable throwable1;
        int j;
        try
        {
            net.youmi.android.offers.b.a().onPointEarn(a, earnpointsorderlist);
        }
        catch (Throwable throwable) { }
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (EarnPointsOrderList earnpointsorderlist)
        {
            return;
        }
        if (list == null) goto _L2; else goto _L1
_L1:
        if (list.size() <= 0)
        {
            return;
        }
          goto _L3
_L10:
        j = list.size();
        if (i >= j) goto _L2; else goto _L4
_L4:
        pointsearnnotify = (PointsEarnNotify)list.get(i);
        if (pointsearnnotify == null) goto _L6; else goto _L5
_L5:
        if (!m.b()) goto _L8; else goto _L7
_L7:
        pointsearnnotify.onPointEarn(a, earnpointsorderlist);
          goto _L6
_L8:
        m.a().a(new d(this, pointsearnnotify, earnpointsorderlist));
          goto _L6
        throwable1;
        net.youmi.android.a.c.b.a.b("\u7B2C[%d]\u4E2A\u79EF\u5206\u8BA2\u5355\u8D5A\u53D6\u76D1\u542C\u56DE\u8C03\u6709\u95EE\u9898\uFF01\uFF01\uFF01", throwable1);
          goto _L6
_L2:
        return;
_L3:
        i = 0;
        continue; /* Loop/switch isn't completed */
_L6:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }
}
