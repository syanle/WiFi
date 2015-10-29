// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.e;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.f.d;
import net.youmi.android.a.b.b.e;
import net.youmi.android.a.c.a;
import org.json.JSONObject;

public final class b extends l
{

    public b()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        android.content.Context context = h1.h();
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        return a(3);
        String s1 = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        return a(2);
        String s2;
        long l1;
        l1 = net.youmi.android.a.b.b.b.a(jsonobject, "b", 0L);
        s2 = net.youmi.android.a.b.b.b.a(jsonobject, "c", null);
        if (s2 != null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        return a(2);
        String s = net.youmi.android.a.b.b.b.a(jsonobject, "d", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        return a(2);
        String s3;
        int i;
        long l2;
        l2 = net.youmi.android.a.b.b.b.a(jsonobject, "e", 0L);
        i = net.youmi.android.a.b.b.b.a(jsonobject, "f", 0);
        s3 = net.youmi.android.a.b.b.b.a(jsonobject, "g", "a_js");
        boolean flag;
        f = s;
        try
        {
            if (net.youmi.android.a.b.b.b.a(jsonobject, "h", 0) == 1)
            {
                f = (new StringBuilder()).append(e.b()).append(net.youmi.android.a.a.e.g.e.p()).append(s).toString();
            }
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
          goto _L1
_L6:
        if (l2 <= 0L) goto _L3; else goto _L2
_L2:
        h1 = new d(context, f, s1, s2, l1, l2 * 1000L, flag, s3, h1.k());
_L4:
        net.youmi.android.a.c.a.a(h1);
        return a(0);
_L3:
        h1 = new d(context, f, s1, s2, l1, flag, s3, h1.k());
        if (true) goto _L4; else goto _L1
_L1:
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
