// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers;

import android.content.Context;
import java.util.HashSet;
import java.util.Iterator;
import net.youmi.android.a.a.e.f.a;
import net.youmi.android.a.a.e.g.f;

// Referenced classes of package net.youmi.android.offers:
//            PointsEarnNotify, EarnPointsOrderList, EarnPointsOrderInfo

public class b
    implements PointsEarnNotify
{

    private static b b;
    private HashSet a;

    public b()
    {
        a = new HashSet();
    }

    public static b a()
    {
        net/youmi/android/offers/b;
        JVM INSTR monitorenter ;
        b b1;
        if (b == null)
        {
            b = new b();
        }
        b1 = b;
        net/youmi/android/offers/b;
        JVM INSTR monitorexit ;
        return b1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, String s1)
    {
        if (s1 != null && s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!(s = new f(s, s1)).d()) goto _L1; else goto _L3
_L3:
        a.add(s);
        return;
        s;
    }

    public void onPointEarn(Context context, EarnPointsOrderList earnpointsorderlist)
    {
        if (a == null) goto _L2; else goto _L1
_L1:
        if (a.size() <= 0)
        {
            return;
        }
        StringBuilder stringbuilder;
        int i;
        boolean flag;
        try
        {
            context = a.iterator();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            break; /* Loop/switch isn't completed */
        }
        if (context == null) goto _L2; else goto _L3
_L3:
        stringbuilder = new StringBuilder();
        i = 0;
_L6:
        if (i >= earnpointsorderlist.size())
        {
            break; /* Loop/switch isn't completed */
        }
_L5:
        flag = context.hasNext();
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.delete(0, stringbuilder.length());
            }
            f f1 = (f)context.next();
            if (f1.d())
            {
                String s = stringbuilder.append("javascript:").append(f1.c()).append('(').append(earnpointsorderlist.get(i).a()).append(",").append(earnpointsorderlist.get(i).getPoints()).append(");").toString();
                net.youmi.android.a.a.e.f.a.a().a(f1.a(), s);
            }
        }
        catch (Throwable throwable) { }
        if (true) goto _L5; else goto _L4
_L4:
        i++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L6; else goto _L2
_L2:
    }
}
