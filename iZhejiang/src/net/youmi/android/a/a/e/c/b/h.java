// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.e.a;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.k.f;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            i

public final class h extends l
{

    public h()
    {
    }

    protected JSONObject a(net.youmi.android.a.a.e.a.b.h h1, net.youmi.android.a.a.e.a.b.f f1, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        f1 = h1.g();
        if (f1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        float f2;
        Object obj;
        int l1;
        int i2;
        i2 = f.a(f1).b();
        l1 = f.a(f1).c();
        f2 = f.a(f1).f();
        obj = b.a(jsonobject, "a", null);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        return a(3);
        String s;
        Object obj1;
        Object obj2;
        String s1;
        int i1;
        int j1;
        int k1;
        obj1 = b.a(jsonobject, "b", null);
        f1 = b.a(((JSONObject) (obj1)), "a", null);
        s1 = b.a(((JSONObject) (obj1)), "b", null);
        s = b.a(((JSONObject) (obj1)), "c", null);
        obj1 = b.a(((JSONObject) (obj1)), "d", null);
        i1 = b.a(jsonobject, "c", 0);
        obj2 = b.a(jsonobject, "d", null);
        j1 = b.a(((JSONObject) (obj2)), "a", -9999);
        k1 = b.a(((JSONObject) (obj2)), "b", -9999);
        int j = (int)((float)i2 - 40F * f2);
        int k = (int)((float)l1 - 40F * f2);
        double d;
        double d1;
        int j2;
        if (j1 > 0)
        {
            j = (int)((float)(i2 - j1) - 20F * f2);
        }
        if (k1 > 0)
        {
            k = (int)((float)(l1 - k1) - 20F * f2);
        }
          goto _L1
_L9:
        l1 = b.a(((JSONObject) (obj2)), "c", j);
        k = b.a(((JSONObject) (obj2)), "d", k);
        i2 = b.a(((JSONObject) (obj2)), "e", 0);
        boolean flag;
        if (b.a(((JSONObject) (obj2)), "f", 1) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            d = b.a(((JSONObject) (obj2)), "g", 0.0D);
            d1 = b.a(((JSONObject) (obj2)), "h", 0.0D);
            obj2 = b.a(jsonobject, "e", null);
        }
        // Misplaced declaration of an exception variable
        catch (net.youmi.android.a.a.e.a.b.h h1)
        {
            return null;
        }
        if (f1 == null)
        {
            break MISSING_BLOCK_LABEL_296;
        }
        net.youmi.android.a.a.e.e.a.a().a(((String) (obj)), f1);
        if (s1 != null)
        {
            try
            {
                net.youmi.android.a.a.e.e.b.a().a(((String) (obj)), s1);
            }
            // Misplaced declaration of an exception variable
            catch (net.youmi.android.a.a.e.a.b.f f1) { }
        }
        j2 = b.a(jsonobject, "f", 0);
        j = 0;
        f1 = null;
        jsonobject = b.a(jsonobject, "g", null);
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_354;
        }
        j = b.a(jsonobject, "a", 0);
        f1 = b.a(jsonobject, "b", null);
        jsonobject = new g(h1.l(), h1.k());
        jsonobject.b(s);
        jsonobject.c(((String) (obj1)));
        jsonobject.b(i1);
        jsonobject.d(j1);
        jsonobject.e(k1);
        jsonobject.f(l1);
        jsonobject.g(k);
        jsonobject.a(d);
        jsonobject.b(d1);
        jsonobject.a(i2);
        jsonobject.d(((String) (obj2)));
        jsonobject.a(flag);
        if (j2 != 0) goto _L3; else goto _L2
_L2:
        jsonobject.e(((String) (obj)));
_L7:
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_490;
        }
        obj = new net.youmi.android.a.a.j.a();
        obj.a = f1;
        obj.b = j;
        jsonobject.a(((net.youmi.android.a.a.j.a) (obj)));
        net.youmi.android.a.a.e.c.b.i.a[h1.b(jsonobject).ordinal()];
        JVM INSTR tableswitch 1 2: default 581
    //                   1 542
    //                   2 547;
           goto _L4 _L5 _L6
_L4:
        return a(3);
_L3:
        jsonobject.g(((String) (obj)));
          goto _L7
_L5:
        return a(4);
_L6:
        h1 = a(0);
        return h1;
_L1:
        if (true) goto _L9; else goto _L8
_L8:
    }
}
