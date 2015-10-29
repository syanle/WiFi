// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.g;

import net.youmi.android.a.a.e.a;
import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.g:
//            e

public final class d extends l
{

    public d()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        try
        {
            f = b.a(jsonobject, "a", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        return a(2);
        net.youmi.android.a.a.e.c.g.e.a[h1.a(f).ordinal()];
        JVM INSTR tableswitch 1 2: default 72
    //                   1 57
    //                   2 62;
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
