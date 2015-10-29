// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.c;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.b.d;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public final class a extends l
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        h1 = h1.h();
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        String s = b.a(jsonobject, "a", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        return a(2);
        f = a(0);
        jsonobject = new JSONObject();
        h1 = d.a(h1).a(s);
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        jsonobject.put("a", "");
        jsonobject.put("b", 1);
_L1:
        f.put("d", jsonobject);
        return f;
        try
        {
            jsonobject.put("a", h1.b());
            jsonobject.put("b", 0);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
          goto _L1
    }
}
