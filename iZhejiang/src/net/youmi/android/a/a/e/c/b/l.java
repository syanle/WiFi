// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.e.a;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.a.e.g.d;
import net.youmi.android.a.b.b.b;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            m

public final class l extends net.youmi.android.a.a.e.a.b.l
{

    public l()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        JSONArray jsonarray;
        if (h1.g() == null)
        {
            return a(3);
        }
        jsonarray = b.a(jsonobject, "a", null);
        if (jsonarray != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        return a(2);
        d d1;
        d1 = new d();
        f = b.a(jsonobject, "b", null);
        break MISSING_BLOCK_LABEL_59;
_L15:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        obj2 = b.a(jsonarray, i, null);
        if (obj2 != null) goto _L4; else goto _L3
_L4:
        jsonobject = b.a(((JSONObject) (obj2)), "a", null);
        if (jsonobject != null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        return a(2);
        obj = b.a(((JSONObject) (obj2)), "b", null);
        f = b.a(((JSONObject) (obj)), "a", null);
        s2 = b.a(((JSONObject) (obj)), "b", null);
        s = b.a(((JSONObject) (obj)), "c", null);
        obj = b.a(((JSONObject) (obj)), "d", null);
        i1 = b.a(((JSONObject) (obj2)), "c", 0);
        obj1 = b.a(((JSONObject) (obj2)), "d", null);
        if (obj1 == null) goto _L6; else goto _L5
_L5:
        j = b.a(((JSONObject) (obj1)), "a", 0);
_L13:
        obj1 = b.a(((JSONObject) (obj2)), "e", "");
        s1 = b.a(((JSONObject) (obj2)), "f", null);
        j1 = b.a(((JSONObject) (obj2)), "g", 0);
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        net.youmi.android.a.a.e.e.a.a().a(jsonobject, f);
        int k;
        if (s2 != null)
        {
            try
            {
                net.youmi.android.a.a.e.e.b.a().a(jsonobject, s2);
            }
            // Misplaced declaration of an exception variable
            catch (f f) { }
        }
        k = 0;
        f = null;
        obj2 = b.a(((JSONObject) (obj2)), "h", null);
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_298;
        }
        k = b.a(((JSONObject) (obj2)), "a", 0);
        f = b.a(((JSONObject) (obj2)), "b", null);
        obj2 = new c(h1.l(), h1.k());
        ((c) (obj2)).a(((String) (obj1)));
        ((c) (obj2)).d(s1);
        ((c) (obj2)).b(s);
        ((c) (obj2)).c(((String) (obj)));
        ((c) (obj2)).b(i1);
        ((c) (obj2)).a(j);
        if (j1 != 0) goto _L8; else goto _L7
_L7:
        ((c) (obj2)).e(jsonobject);
_L9:
        if (k == 0)
        {
            break MISSING_BLOCK_LABEL_402;
        }
        jsonobject = new net.youmi.android.a.a.j.a();
        jsonobject.a = f;
        jsonobject.b = k;
        ((c) (obj2)).a(jsonobject);
        d1.a(((c) (obj2)));
        break; /* Loop/switch isn't completed */
_L8:
        ((c) (obj2)).g(jsonobject);
        if (true) goto _L9; else goto _L3
_L2:
        net.youmi.android.a.a.e.c.b.m.a[h1.a(d1).ordinal()];
        JVM INSTR tableswitch 1 2: default 505
    //                   1 465
    //                   2 470;
           goto _L10 _L11 _L12
_L10:
        return a(3);
_L11:
        return a(4);
_L12:
        h1 = a(0);
        return h1;
_L6:
        j = 0;
          goto _L13
        String s;
        Object obj;
        Object obj1;
        String s1;
        Object obj2;
        String s2;
        int i;
        int j;
        int i1;
        int j1;
        if (f != null)
        {
            try
            {
                d1.a(f);
            }
            // Misplaced declaration of an exception variable
            catch (h h1)
            {
                return null;
            }
        }
        i = 0;
        continue; /* Loop/switch isn't completed */
_L3:
        i++;
        if (true) goto _L15; else goto _L14
_L14:
    }
}
