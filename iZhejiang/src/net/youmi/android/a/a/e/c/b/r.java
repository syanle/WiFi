// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.e.a;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            s

public final class r extends l
{

    public r()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        Object obj = b.a(jsonobject, "a", null);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        return a(2);
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        int j;
        int k;
        f = b.a(jsonobject, "b", null);
        s4 = b.a(f, "a", null);
        s5 = b.a(f, "b", null);
        s1 = b.a(f, "c", null);
        s2 = b.a(f, "d", null);
        s3 = b.a(jsonobject, "c", null);
        j = b.a(jsonobject, "d", 0);
        k = b.a(jsonobject, "e", 0);
        int i = 0;
        f = null;
        try
        {
            jsonobject = b.a(jsonobject, "f", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        i = b.a(jsonobject, "a", 0);
        f = b.a(jsonobject, "b", null);
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        net.youmi.android.a.a.e.e.a.a().a(((String) (obj)), s4);
        if (s5 != null)
        {
            try
            {
                net.youmi.android.a.a.e.e.b.a().a(((String) (obj)), s5);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject) { }
        }
        jsonobject = new c(h1.l(), h1.k());
        if (k != 0) goto _L2; else goto _L1
_L1:
        jsonobject.e(((String) (obj)));
_L6:
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        obj = new net.youmi.android.a.a.j.a();
        obj.a = f;
        obj.b = i;
        obj.f = false;
        jsonobject.a(((net.youmi.android.a.a.j.a) (obj)));
        jsonobject.b(s1);
        jsonobject.c(s2);
        jsonobject.d(s3);
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        jsonobject.b(j);
        net.youmi.android.a.a.e.c.b.s.a[h1.a(jsonobject).ordinal()];
        JVM INSTR tableswitch 1 2: default 330
    //                   1 314
    //                   2 319;
           goto _L3 _L4 _L5
_L3:
        return a(3);
_L2:
        jsonobject.g(((String) (obj)));
          goto _L6
_L4:
        return a(4);
_L5:
        h1 = a(0);
        return h1;
    }
}
