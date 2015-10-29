// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import java.util.ArrayList;
import net.youmi.android.a.a.a.a.a;
import net.youmi.android.a.a.a.a.d;
import net.youmi.android.a.a.a.a.f;
import net.youmi.android.a.a.a.a.g;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONArray;
import org.json.JSONObject;

public final class e extends l
{

    public e()
    {
    }

    protected JSONObject a(h h1, net.youmi.android.a.a.e.a.b.f f1, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        android.content.Context context = h1.h();
        String s;
        Object obj;
        Object obj1;
        Throwable throwable;
        Object obj2;
        String s1;
        g g1;
        int i;
        int j;
        int k;
        int i1;
        long l1;
        boolean flag;
        boolean flag1;
        if (context == null)
        {
            try
            {
                return a(3);
            }
            // Misplaced declaration of an exception variable
            catch (h h1)
            {
                return null;
            }
        }
        f1 = null;
        l1 = 0L;
        s = null;
        obj = b.a(jsonobject, "a", null);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        f1 = b.a(((JSONObject) (obj)), "a", null);
        l1 = b.a(((JSONObject) (obj)), "b", 0L);
        s = b.a(((JSONObject) (obj)), "c", null);
        obj = b.a(jsonobject, "b", null);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        return a(2);
        j = ((JSONArray) (obj)).length();
        if (j > 0)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        return a(2);
        jsonobject = new ArrayList(j);
        i = 0;
_L6:
        if (i >= j) goto _L2; else goto _L1
_L1:
        obj1 = b.a(((JSONArray) (obj)), i, null);
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        obj2 = b.a(((JSONObject) (obj1)), "a", null);
        if (obj2 != null) goto _L5; else goto _L4
_L5:
        k = b.a(((JSONObject) (obj1)), "b", -1);
        if (b.a(((JSONObject) (obj1)), "c", 0) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = b.a(((JSONObject) (obj1)), "d", -999);
        if (b.a(((JSONObject) (obj1)), "e", 0) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s1 = b.a(((JSONObject) (obj1)), "f", "");
        obj1 = new a(i1, 1);
        g1 = new g();
        g1.b(((String) (obj2)));
        g1.a(s1);
        ((a) (obj1)).a(g1);
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        obj2 = new d();
        ((d) (obj2)).a(k);
        ((a) (obj1)).a(((d) (obj2)));
        obj2 = new f();
        ((f) (obj2)).a(flag);
        ((f) (obj2)).b(flag1);
        ((a) (obj1)).a(((f) (obj2)));
        jsonobject.add(obj1);
          goto _L4
        throwable;
          goto _L4
_L2:
        if (jsonobject.size() <= 0)
        {
            return a(2);
        }
        obj = net.youmi.android.a.a.g.a.a.a.a(context);
        i = 0;
_L7:
        if (i >= jsonobject.size())
        {
            break MISSING_BLOCK_LABEL_560;
        }
        throwable = new net.youmi.android.a.a.g.a.b.a();
        obj2 = net.youmi.android.a.b.d.g.a(((a)jsonobject.get(i)).g().c());
        throwable.b(((a)jsonobject.get(i)).g().b());
        throwable.a(((String) (obj2)));
        if (((a)jsonobject.get(i)).e().a())
        {
            throwable.b(1);
            net.youmi.android.a.a.g.a.f.a().a(((String) (obj2)), 3, 1);
        }
        if (((a)jsonobject.get(i)).e().b())
        {
            throwable.c(1);
            net.youmi.android.a.a.g.a.f.a().a(((String) (obj2)), 13, 1);
        }
        throwable.a(((a)jsonobject.get(i)).a());
        if (((net.youmi.android.a.a.g.a.a.a) (obj)).a(((String) (obj2))) == null)
        {
            ((net.youmi.android.a.a.g.a.a.a) (obj)).a(throwable);
            break MISSING_BLOCK_LABEL_595;
        }
        ((net.youmi.android.a.a.g.a.a.a) (obj)).b(throwable);
        break MISSING_BLOCK_LABEL_595;
        net.youmi.android.a.c.a.a(new net.youmi.android.a.a.e.f.g(context, h1, jsonobject, f1, l1, s));
        h1 = a(0);
        return h1;
_L4:
        i++;
          goto _L6
        i++;
          goto _L7
    }
}
