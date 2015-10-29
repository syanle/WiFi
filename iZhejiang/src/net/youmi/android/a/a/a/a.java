// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import net.youmi.android.a.a.a.a.f;
import net.youmi.android.a.a.a.a.g;
import net.youmi.android.a.a.e.a.b.h;

public class a
{

    public static void a(Context context, h h1, List list)
    {
        Object obj;
        Object obj1;
        Context context1;
        context1 = context.getApplicationContext();
        obj = null;
        obj1 = null;
        context = null;
        if (context1 == null || list == null) goto _L2; else goto _L1
_L1:
        int i = list.size();
        if (i != 0) goto _L3; else goto _L2
_L2:
        if (true)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        throw new NullPointerException();
_L5:
        return;
_L3:
        i = 0;
_L10:
        obj = context;
        obj1 = context;
        if (i >= list.size())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = context;
        obj1 = context;
        net.youmi.android.a.a.a.a.a a1 = (net.youmi.android.a.a.a.a.a)list.get(i);
        Object obj2;
        obj2 = context;
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_519;
        }
        obj1 = context;
        obj2 = context;
        if (a1.g() == null)
        {
            break MISSING_BLOCK_LABEL_519;
        }
        obj1 = context;
        if (a1.g().c() == null)
        {
            obj2 = context;
            break MISSING_BLOCK_LABEL_519;
        }
        obj1 = context;
        if (a1.e() != null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        obj1 = context;
        a1.a(new f());
        obj1 = context;
        boolean flag = a1.e().a(context1, a1.g().c());
        obj2 = context;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_519;
        }
_L9:
        obj = context;
        obj1 = context;
        obj2 = context;
        if (!a1.e().e())
        {
            break MISSING_BLOCK_LABEL_423;
        }
        obj = context;
        obj1 = context;
        obj2 = context;
        if (a1.e().a())
        {
            break MISSING_BLOCK_LABEL_423;
        }
        obj1 = context;
        obj2 = context;
        String s;
        net.youmi.android.a.a.g.a.a.a a2;
        try
        {
            s = net.youmi.android.a.b.d.g.a(a1.g().c());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            break MISSING_BLOCK_LABEL_519;
        }
        finally
        {
            if (obj1 != null)
            {
                try
                {
                    if (((ArrayList) (obj1)).size() > 0)
                    {
                        h1.a(context1, ((List) (obj1)));
                    }
                }
                // Misplaced declaration of an exception variable
                catch (h h1) { }
            }
            throw context;
        }
        obj1 = context;
        obj2 = context;
        a2 = net.youmi.android.a.a.g.a.a.a.a(context1);
        obj = context;
        obj1 = context;
        obj2 = context;
        if (a2.a(s).d() != 0)
        {
            break MISSING_BLOCK_LABEL_423;
        }
        obj1 = context;
        obj2 = context;
        obj = new net.youmi.android.a.a.g.a.b.a();
        obj1 = context;
        obj2 = context;
        ((net.youmi.android.a.a.g.a.b.a) (obj)).a(s);
        obj1 = context;
        obj2 = context;
        ((net.youmi.android.a.a.g.a.b.a) (obj)).b(1);
        obj1 = context;
        obj2 = context;
        net.youmi.android.a.a.g.a.f.a().a(s, 3, 1);
        obj1 = context;
        obj2 = context;
        ((net.youmi.android.a.a.g.a.b.a) (obj)).c(1);
        obj1 = context;
        obj2 = context;
        net.youmi.android.a.a.g.a.f.a().a(s, 13, 1);
        obj1 = context;
        obj2 = context;
        if (!a2.b(((net.youmi.android.a.a.g.a.b.a) (obj))))
        {
            break MISSING_BLOCK_LABEL_384;
        }
        obj1 = context;
        obj2 = context;
        a2.a(((net.youmi.android.a.a.g.a.b.a) (obj)));
        obj = context;
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_404;
        }
        obj1 = context;
        obj2 = context;
        obj = new ArrayList();
        obj1 = obj;
        obj2 = obj;
        ((ArrayList) (obj)).add(a1.g().c());
        obj2 = obj;
        break MISSING_BLOCK_LABEL_519;
        if (context == null) goto _L5; else goto _L4
_L4:
        if (context.size() <= 0) goto _L5; else goto _L6
_L6:
        h1.a(context1, context);
        return;
        context;
        return;
        context;
        if (obj == null) goto _L5; else goto _L7
_L7:
        if (((ArrayList) (obj)).size() <= 0) goto _L5; else goto _L8
_L8:
        h1.a(context1, ((List) (obj)));
        return;
        context;
        return;
        Throwable throwable;
        throwable;
          goto _L9
        context;
        return;
        i++;
        context = ((Context) (obj2));
          goto _L10
    }
}
