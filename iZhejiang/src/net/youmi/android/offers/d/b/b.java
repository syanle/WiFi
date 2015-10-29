// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import android.content.Context;
import java.util.List;
import net.youmi.android.a.b.j.a;
import net.youmi.android.a.b.k.m;
import net.youmi.android.offers.PointsChangeNotify;

// Referenced classes of package net.youmi.android.offers.d.b:
//            e, a, c

public class b extends a
{

    private static b b;
    private Context a;

    public b(Context context)
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

    public static b a(Context context)
    {
        net/youmi/android/offers/d/b/b;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            b = new b(context);
        }
        if (b == null)
        {
            throw new NullPointerException("Context is null");
        }
        break MISSING_BLOCK_LABEL_42;
        context;
        net/youmi/android/offers/d/b/b;
        JVM INSTR monitorexit ;
        throw context;
        context = b;
        net/youmi/android/offers/d/b/b;
        JVM INSTR monitorexit ;
        return context;
    }

    void a()
    {
        int i;
        int j = net.youmi.android.offers.d.b.e.a(a).a();
        List list;
        PointsChangeNotify pointschangenotify;
        Throwable throwable2;
        int k;
        try
        {
            net.youmi.android.offers.d.b.a.a().onPointBalanceChange(j);
        }
        catch (Throwable throwable1) { }
        try
        {
            list = g();
        }
        catch (Throwable throwable)
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
        k = list.size();
        if (i >= k) goto _L2; else goto _L4
_L4:
        pointschangenotify = (PointsChangeNotify)list.get(i);
        if (pointschangenotify == null) goto _L6; else goto _L5
_L5:
        if (!m.b()) goto _L8; else goto _L7
_L7:
        pointschangenotify.onPointBalanceChange(j);
          goto _L6
_L8:
        m.a().a(new c(this, pointschangenotify, j));
          goto _L6
        throwable2;
        net.youmi.android.a.c.b.a.b("\u7B2C[%d]\u4E2A\u79EF\u5206\u4F59\u989D\u53D8\u52A8\u76D1\u542C\u56DE\u8C03\u6709\u95EE\u9898\uFF01\uFF01\uFF01", throwable2);
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
