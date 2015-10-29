// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.e;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public final class d extends l
{

    public d()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        f = b.a(jsonobject, "a", null);
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        return a(2);
        h1 = h1.a(f, b.a(jsonobject, "b", ""));
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        return a(3);
        f = a(0);
        f.put("d", h1);
        return f;
        h1;
        return null;
    }
}
