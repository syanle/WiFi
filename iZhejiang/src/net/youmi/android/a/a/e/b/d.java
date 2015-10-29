// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.b;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.a.b.a;
import net.youmi.android.a.b.c.b;
import net.youmi.android.a.b.c.c;
import net.youmi.android.a.b.c.g;
import net.youmi.android.a.b.c.h;

// Referenced classes of package net.youmi.android.a.a.e.b:
//            a

public class d extends h
{

    private static d a;

    public d(Context context)
    {
        super(context, "0t6evSXr", net.youmi.android.a.a.b.a.c(context), 0);
    }

    public static d a(Context context)
    {
        net/youmi/android/a/a/e/b/d;
        JVM INSTR monitorenter ;
        try
        {
            if (a == null)
            {
                a = new d(context);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        context = a;
        net/youmi/android/a/a/e/b/d;
        JVM INSTR monitorexit ;
        return context;
        context;
        throw context;
    }

    public net.youmi.android.a.a.e.b.a a(String s)
    {
        s = new net.youmi.android.a.a.e.b.a(s);
        if (!s.a())
        {
            return null;
        }
        boolean flag;
        try
        {
            flag = b(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
label0:
        {
            if (flag)
            {
                return s;
            }
            break label0;
        }
    }

    public boolean a(String s, String s1, long l)
    {
        boolean flag;
        s = new net.youmi.android.a.a.e.b.a(s);
        if (!s.a())
        {
            break MISSING_BLOCK_LABEL_37;
        }
        s.a(l);
        s.b(s1);
        flag = a(((net.youmi.android.a.b.c.d) (s)));
        return flag;
        s;
        return false;
    }

    public boolean a(List list)
    {
        if (list == null)
        {
            return false;
        }
        break MISSING_BLOCK_LABEL_6;
_L10:
        int i;
        try
        {
            j = list.size();
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            return false;
        }
        if (i >= j) goto _L2; else goto _L1
_L1:
        obj2 = obj;
        a1 = (net.youmi.android.a.a.e.b.a)list.get(i);
        if (a1 != null) goto _L4; else goto _L3
_L4:
        obj2 = obj;
        if (a1.a()) goto _L5; else goto _L3
_L5:
        obj2 = obj;
        if (a1.b() != null) goto _L6; else goto _L3
_L6:
        obj2 = obj;
        abyte0 = a1.b().getBytes("UTF-8");
        if (abyte0 != null) goto _L7; else goto _L3
_L7:
        obj2 = obj;
        abyte1 = c.a(abyte0, c(), a());
        if (abyte1 != null) goto _L8; else goto _L3
_L8:
        obj1 = obj;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        obj2 = obj;
        obj1 = new ArrayList();
        obj2 = obj1;
        ((List) (obj1)).add(new b(a1.n(), abyte1, a1.m()));
        obj = obj1;
          goto _L3
_L2:
        if (obj == null)
        {
            return false;
        }
        if (((List) (obj)).size() <= 0)
        {
            return false;
        }
        flag = b().a(((List) (obj)));
        return flag;
        obj;
        obj = obj2;
          goto _L3
        Object obj;
        byte abyte0[];
        Object obj1;
        Object obj2;
        net.youmi.android.a.a.e.b.a a1;
        byte abyte1[];
        int j;
        boolean flag;
        if (list.size() <= 0)
        {
            return false;
        }
        obj = null;
        i = 0;
        continue; /* Loop/switch isn't completed */
_L3:
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public boolean b(String s)
    {
        boolean flag;
        try
        {
            flag = c(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }
}
