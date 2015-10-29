// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.g;

import net.youmi.android.a.a.e.a;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.g:
//            c

public final class b extends l
{

    public b()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        String s;
        String s1;
        long l1;
        try
        {
            f = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
            s = net.youmi.android.a.b.b.b.a(jsonobject, "b", null);
            s1 = net.youmi.android.a.b.b.b.a(jsonobject, "c", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (f != null && s != null && s1 != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        return a(2);
        l1 = net.youmi.android.a.b.b.b.a(jsonobject, "d", 0L);
        net.youmi.android.a.a.e.c.g.c.a[h1.a(f, s, s1, l1).ordinal()];
        JVM INSTR tableswitch 1 2: default 116
    //                   1 101
    //                   2 106;
           goto _L1 _L2 _L3
_L1:
        return a(3);
_L2:
        return a(4);
_L3:
        h1 = a(0);
        return h1;
    }
}
