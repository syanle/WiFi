// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.e.a;
import net.youmi.android.a.a.e.g.g;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.k.f;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            e

public final class d extends l
{

    public d()
    {
    }

    protected JSONObject a(h h1, net.youmi.android.a.a.e.a.b.f f1, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        float f2;
        int k1;
        int l1;
        l1 = f.a(h1.h()).b();
        k1 = f.a(h1.h()).c();
        f2 = f.a(h1.h()).f();
        f1 = b.a(jsonobject, "a", null);
        if (f1 != null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        return a(3);
        String s;
        Object obj;
        String s1;
        String s2;
        String s3;
        obj = b.a(jsonobject, "b", null);
        s2 = b.a(((JSONObject) (obj)), "a", null);
        s3 = b.a(((JSONObject) (obj)), "b", null);
        s = b.a(((JSONObject) (obj)), "c", null);
        obj = b.a(((JSONObject) (obj)), "d", null);
        s1 = b.a(jsonobject, "e", null);
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        net.youmi.android.a.a.e.e.a.a().a(f1, s2);
        break MISSING_BLOCK_LABEL_140;
_L5:
        i = b.a(jsonobject, "c", i);
        j = b.a(jsonobject, "d", j);
        k1 = b.a(jsonobject, "e", 0);
        boolean flag;
        if (b.a(jsonobject, "f", 1) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d1 = b.a(jsonobject, "g", 0.0D);
        d2 = b.a(jsonobject, "h", 0.0D);
        jsonobject = new g(h1.l(), h1.k());
        jsonobject.b(s);
        jsonobject.c(((String) (obj)));
        jsonobject.e(f1);
        jsonobject.b(k);
        jsonobject.d(i1);
        jsonobject.e(j1);
        jsonobject.f(i);
        jsonobject.g(j);
        jsonobject.a(d1);
        jsonobject.b(d2);
        jsonobject.a(k1);
        jsonobject.d(s1);
        jsonobject.a(flag);
        net.youmi.android.a.a.e.c.b.e.a[h1.a(jsonobject).ordinal()];
        JVM INSTR tableswitch 1 2: default 480
    //                   1 437
    //                   2 442;
           goto _L1 _L2 _L3
_L1:
        return a(3);
_L2:
        return a(4);
_L3:
        h1 = a(0);
        return h1;
        double d1;
        double d2;
        int i;
        int j;
        int k;
        int i1;
        int j1;
        if (s3 != null)
        {
            try
            {
                net.youmi.android.a.a.e.e.b.a().a(f1, s3);
            }
            catch (Throwable throwable) { }
        }
        try
        {
            k = b.a(jsonobject, "c", 0);
            jsonobject = b.a(jsonobject, "d", null);
            i1 = b.a(jsonobject, "a", -9999);
            j1 = b.a(jsonobject, "b", -9999);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        i = (int)((float)l1 - 40F * f2);
        j = (int)((float)k1 - 40F * f2);
        if (i1 > 0)
        {
            i = (int)((float)(l1 - i1) - 20F * f2);
        }
        if (j1 > 0)
        {
            j = (int)((float)(k1 - j1) - 20F * f2);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }
}
