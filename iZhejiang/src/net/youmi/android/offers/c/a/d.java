// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.c.a;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import net.youmi.android.a.b.b.e;
import org.json.JSONObject;

public final class d extends l
{

    public d()
    {
    }

    protected JSONObject a(h h, f f, JSONObject jsonobject)
    {
        String s;
        s = b.a(jsonobject, "a", null);
        f = b.a(jsonobject, "b", null);
        h = f;
        if (b.a(jsonobject, "c", 0) != 1) goto _L2; else goto _L1
_L1:
        h = new StringBuilder();
        f = f.split(",");
        int i = 0;
_L8:
        if (i >= f.length) goto _L4; else goto _L3
_L3:
        jsonobject = f[i];
        h.append((new StringBuilder()).append(e.b()).append(net.youmi.android.a.a.e.g.e.p()).toString());
        h.append(jsonobject);
        if (i != f.length - 1)
        {
            h.append(",");
        }
          goto _L5
_L4:
        h = h.toString();
_L2:
        net.youmi.android.offers.b.a().a(h, s);
_L6:
        try
        {
            h = a(0);
        }
        // Misplaced declaration of an exception variable
        catch (h h)
        {
            return null;
        }
        return h;
        h;
        if (true) goto _L6; else goto _L5
_L5:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
