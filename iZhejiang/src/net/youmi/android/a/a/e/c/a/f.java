// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import net.youmi.android.a.a.a.a.c;
import net.youmi.android.a.a.a.a.d;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.g.a.b.a;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.b.d.g;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.a:
//            g

public final class f extends l
{

    public f()
    {
    }

    protected JSONObject a(h h1, net.youmi.android.a.a.e.a.b.f f1, JSONObject jsonobject)
    {
        Object obj;
        int i;
        long l2;
        boolean flag;
        if (h1 == null)
        {
            return null;
        }
        Object obj1;
        Object obj2;
        Object obj3;
        String s;
        String s1;
        String s2;
        String s3;
        Object obj4;
        String s4;
        Object obj5;
        Object obj6;
        String s5;
        Object obj7;
        int j;
        int k;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        boolean flag1;
        boolean flag2;
        try
        {
            obj2 = h1.h();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (obj2 == null)
        {
            return null;
        }
        obj3 = b.a(jsonobject, "b", null);
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        return a(2);
        obj1 = b.a(jsonobject, "a", null);
        if (obj1 == null) goto _L2; else goto _L1
_L1:
        f1 = b.a(((JSONObject) (obj1)), "a", null);
        l2 = b.a(((JSONObject) (obj1)), "b", 0L);
        obj = b.a(((JSONObject) (obj1)), "c", null);
        if (b.a(((JSONObject) (obj1)), "d", 0) != 1 || obj == null) goto _L4; else goto _L3
_L3:
        obj = ((String) (obj)).split(",");
        obj1 = new StringBuilder();
        j = obj.length;
        i = 0;
_L6:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        s = obj[i];
        ((StringBuilder) (obj1)).append((new StringBuilder()).append(e.b()).append(net.youmi.android.a.a.e.g.e.p()).append(s).toString());
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        obj1 = ((StringBuilder) (obj1)).toString();
        obj = f1;
        f1 = ((net.youmi.android.a.a.e.a.b.f) (obj1));
_L14:
        obj1 = b.a(jsonobject, "c", null);
        if (obj1 == null) goto _L8; else goto _L7
_L7:
        jsonobject = new net.youmi.android.a.a.e.g.b();
        jsonobject.a(b.a(((JSONObject) (obj1)), "a", null));
        jsonobject.b(b.a(((JSONObject) (obj1)), "b", null));
        jsonobject.c(b.a(((JSONObject) (obj1)), "c", null));
        jsonobject.d(b.a(((JSONObject) (obj1)), "d", null));
_L13:
        if (obj == null || f1 != null)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        return a(2);
        k = b.a(((JSONObject) (obj3)), "a", -1);
        if (k > 0)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        return a(2);
        i1 = b.a(((JSONObject) (obj3)), "b", 0);
        obj6 = b.a(((JSONObject) (obj3)), "c", null);
        if (obj6 != null)
        {
            break MISSING_BLOCK_LABEL_329;
        }
        return a(2);
        s3 = b.a(((JSONObject) (obj3)), "d", null);
        if (s3 != null)
        {
            break MISSING_BLOCK_LABEL_349;
        }
        return a(2);
        j1 = b.a(((JSONObject) (obj3)), "e", 0);
        if (b.a(((JSONObject) (obj3)), "f", 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj4 = b.a(((JSONObject) (obj3)), "g", null);
        if (obj4 != null)
        {
            break MISSING_BLOCK_LABEL_394;
        }
        return a(2);
        s4 = b.a(((JSONObject) (obj3)), "h", null);
        obj1 = b.a(((JSONObject) (obj3)), "i", null);
        k1 = b.a(((JSONObject) (obj3)), "j", 0);
        s = b.a(((JSONObject) (obj3)), "k", null);
        l1 = b.a(((JSONObject) (obj3)), "l", -1);
        if (b.a(((JSONObject) (obj3)), "m", 1) == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s1 = b.a(((JSONObject) (obj3)), "n", null);
        obj5 = b.a(((JSONObject) (obj3)), "o", null);
        s5 = b.a(((JSONObject) (obj3)), "p", null);
        flag2 = b.a(((JSONObject) (obj3)), "q", true);
        i2 = b.a(((JSONObject) (obj3)), "r", 0);
        s2 = b.a(((JSONObject) (obj3)), "s", "");
        obj7 = b.a(((JSONObject) (obj3)), "t", "");
        j = b.a(((JSONObject) (obj3)), "u", 5);
        i = j;
        if (j != 3)
        {
            i = j;
            if (j != 5)
            {
                i = 5;
            }
        }
        obj3 = new a();
        ((a) (obj3)).a(g.a(s3));
        ((a) (obj3)).d(i);
        ((a) (obj3)).c(((String) (obj7)));
        net.youmi.android.a.a.g.a.a.a.a(((android.content.Context) (obj2))).b(((a) (obj3)));
        obj3 = new net.youmi.android.a.a.a.a.a(k, i1);
        obj7 = new net.youmi.android.a.a.a.a.g();
        ((net.youmi.android.a.a.a.a.g) (obj7)).a(((String) (obj6)));
        ((net.youmi.android.a.a.a.a.g) (obj7)).b(s3);
        ((net.youmi.android.a.a.a.a.g) (obj7)).c(s5);
        ((net.youmi.android.a.a.a.a.a) (obj3)).a(((net.youmi.android.a.a.a.a.g) (obj7)));
        obj6 = new c();
        ((c) (obj6)).i(((String) (obj5)));
        ((net.youmi.android.a.a.a.a.a) (obj3)).a(((c) (obj6)));
        obj5 = new d();
        ((d) (obj5)).a(((String) (obj4)));
        ((d) (obj5)).b(s4);
        ((d) (obj5)).b(k1);
        ((d) (obj5)).a(j1);
        ((net.youmi.android.a.a.a.a.a) (obj3)).a(((d) (obj5)));
        obj4 = new net.youmi.android.a.a.a.a.f();
        ((net.youmi.android.a.a.a.a.f) (obj4)).a(flag);
        ((net.youmi.android.a.a.a.a.a) (obj3)).a(((net.youmi.android.a.a.a.a.f) (obj4)));
        ((net.youmi.android.a.a.a.a.f) (obj4)).a(((android.content.Context) (obj2)), s3);
        obj2 = new net.youmi.android.a.a.e.g.a();
        ((net.youmi.android.a.a.e.g.a) (obj2)).a(((net.youmi.android.a.a.a.a.a) (obj3)));
        ((net.youmi.android.a.a.e.g.a) (obj2)).a(l1);
        ((net.youmi.android.a.a.e.g.a) (obj2)).b(((String) (obj1)));
        ((net.youmi.android.a.a.e.g.a) (obj2)).c(s2);
        ((net.youmi.android.a.a.e.g.a) (obj2)).a(i2 * 1000);
        ((net.youmi.android.a.a.e.g.a) (obj2)).d(s);
        ((net.youmi.android.a.a.e.g.a) (obj2)).a(flag1);
        ((net.youmi.android.a.a.e.g.a) (obj2)).a(s1);
        ((net.youmi.android.a.a.e.g.a) (obj2)).b(flag2);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_852;
        }
        if (jsonobject.e())
        {
            ((net.youmi.android.a.a.e.g.a) (obj2)).a(jsonobject);
        }
        h1 = h1.a(((net.youmi.android.a.a.e.g.a) (obj2)), new net.youmi.android.a.a.e.g.f(l2, f1, ((String) (obj))));
        net.youmi.android.a.a.e.c.a.g.a[h1.ordinal()];
        JVM INSTR tableswitch 1 2: default 968
    //                   1 918
    //                   2 924;
           goto _L9 _L10 _L11
_L9:
        break MISSING_BLOCK_LABEL_968;
_L12:
        h1 = a(i);
        return h1;
_L10:
        i = 4;
          goto _L12
_L11:
        i = 0;
          goto _L12
_L8:
        jsonobject = null;
          goto _L13
_L4:
        net.youmi.android.a.a.e.a.b.f f2 = f1;
        f1 = ((net.youmi.android.a.a.e.a.b.f) (obj));
        obj = f2;
          goto _L14
_L2:
        f1 = null;
        l2 = 0L;
        obj = null;
          goto _L14
        i = 3;
          goto _L12
    }
}
