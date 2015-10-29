// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.d.b;

import java.util.HashSet;
import java.util.Iterator;
import net.youmi.android.a.a.e.g.f;
import net.youmi.android.offers.PointsChangeNotify;

public class a
    implements PointsChangeNotify
{

    private static a b;
    private HashSet a;

    public a()
    {
        a = new HashSet();
    }

    public static a a()
    {
        net/youmi/android/offers/d/b/a;
        JVM INSTR monitorenter ;
        a a1;
        if (b == null)
        {
            b = new a();
        }
        a1 = b;
        net/youmi/android/offers/d/b/a;
        JVM INSTR monitorexit ;
        return a1;
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

    public void onPointBalanceChange(int i)
    {
        if (a == null) goto _L2; else goto _L1
_L1:
        if (a.size() <= 0)
        {
            return;
        }
        Iterator iterator = a.iterator();
        if (iterator == null) goto _L2; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
_L4:
        boolean flag = iterator.hasNext();
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
            f f1 = (f)iterator.next();
            if (f1.d())
            {
                String s = stringbuilder.append("javascript:").append(f1.c()).append('(').append(i).append(");").toString();
                net.youmi.android.a.a.e.f.a.a().a(f1.a(), s);
            }
        }
        catch (Throwable throwable1) { }
        if (true) goto _L4; else goto _L2
        Throwable throwable;
        throwable;
_L2:
    }
}
