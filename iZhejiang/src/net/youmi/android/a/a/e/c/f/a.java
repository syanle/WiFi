// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.f;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

// Referenced classes of package net.youmi.android.a.a.e.c.f:
//            b

public final class a extends l
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f1, JSONObject jsonobject)
    {
        if (h1 != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        String s;
        try
        {
            h1 = h1.h();
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (h1 == null) goto _L1; else goto _L3
_L3:
        s = b.a(jsonobject, "a", null);
        if (s != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        return a(2);
        if (!f1.a(new net.youmi.android.a.a.e.c.f.b(this, h1, s, b.a(jsonobject, "b", 1)))) goto _L1; else goto _L4
_L4:
        h1 = a(0);
        return h1;
    }
}
