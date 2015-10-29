// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.e.a;
import net.youmi.android.a.a.e.g.c;
import net.youmi.android.a.a.e.g.d;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.b:
//            k

public final class j extends l
{

    public j()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        String s = b.a(jsonobject, "a", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        return a(2);
        Object obj;
        String s1;
        Object obj1;
        String s4;
        int j1;
        f = b.a(jsonobject, "b", null);
        obj1 = b.a(f, "a", null);
        s4 = b.a(f, "b", null);
        obj = b.a(f, "c", null);
        s1 = b.a(f, "d", null);
        j1 = b.a(jsonobject, "c", 0);
        f = b.a(jsonobject, "d", null);
        if (f == null) goto _L2; else goto _L1
_L1:
        int i = b.a(f, "a", 0);
_L9:
        String s2;
        String s3;
        int k1;
        s2 = b.a(jsonobject, "e", "");
        s3 = b.a(jsonobject, "f", null);
        k1 = b.a(jsonobject, "g", 0);
        int i1 = 0;
        f = null;
        try
        {
            jsonobject = b.a(jsonobject, "h", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        i1 = b.a(jsonobject, "a", 0);
        f = b.a(jsonobject, "b", null);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        net.youmi.android.a.a.e.e.a.a().a(s, ((String) (obj1)));
        if (s4 != null)
        {
            try
            {
                net.youmi.android.a.a.e.e.b.a().a(s, s4);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject) { }
        }
        jsonobject = new d();
        obj1 = new c(h1.l(), h1.k());
        ((c) (obj1)).a(s2);
        ((c) (obj1)).b(((String) (obj)));
        ((c) (obj1)).c(s1);
        ((c) (obj1)).b(j1);
        ((c) (obj1)).d(s3);
        ((c) (obj1)).a(i);
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        obj = new net.youmi.android.a.a.j.a();
        obj.a = f;
        obj.b = i1;
        ((c) (obj1)).a(((net.youmi.android.a.a.j.a) (obj)));
        if (k1 != 0) goto _L4; else goto _L3
_L3:
        ((c) (obj1)).e(s);
_L8:
        jsonobject.a(((c) (obj1)));
        net.youmi.android.a.a.e.c.b.k.a[h1.a(jsonobject).ordinal()];
        JVM INSTR tableswitch 1 2: default 393
    //                   1 371
    //                   2 376;
           goto _L5 _L6 _L7
_L5:
        return a(3);
_L4:
        ((c) (obj1)).g(s);
          goto _L8
_L6:
        return a(4);
_L7:
        h1 = a(0);
        return h1;
_L2:
        i = 0;
          goto _L9
    }
}
