// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.g.e.a;

import android.content.Context;
import java.util.List;
import net.youmi.android.a.b.j.a;

// Referenced classes of package net.youmi.android.a.a.g.e.a:
//            a

public class b extends a
{

    private static b b;
    private Context a;

    b(Context context)
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
        net/youmi/android/a/a/g/e/a/b;
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
        net/youmi/android/a/a/g/e/a/b;
        JVM INSTR monitorexit ;
        throw context;
        context = b;
        net/youmi/android/a/a/g/e/a/b;
        JVM INSTR monitorexit ;
        return context;
    }

    public void a(String s)
    {
        List list;
        net.youmi.android.a.a.g.e.a.a a1;
        int i;
        int j;
        try
        {
            list = g();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
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
_L6:
        j = list.size();
        if (i >= j) goto _L2; else goto _L4
_L4:
        a1 = (net.youmi.android.a.a.g.e.a.a)list.get(i);
        if (a1 != null)
        {
            try
            {
                a1.a(s);
            }
            catch (Throwable throwable) { }
        }
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        return;
_L3:
        i = 0;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
