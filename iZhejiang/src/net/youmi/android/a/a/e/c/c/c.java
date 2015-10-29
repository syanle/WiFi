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

public final class c extends l
{

    public c()
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
        f = b.a(jsonobject, "a", null);
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        return a(2);
        if (d.a(h1).b(f))
        {
            return a(0);
        }
        h1 = a(3);
        return h1;
        h1;
        return null;
    }
}
