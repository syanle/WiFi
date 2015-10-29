// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.c;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.e.b.d;
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
        h1 = h1.h();
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        return a(3);
        f = net.youmi.android.a.b.b.b.a(jsonobject, "a", null);
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        return a(2);
        String s = net.youmi.android.a.b.b.b.a(jsonobject, "b", null);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        return a(2);
        long l2 = net.youmi.android.a.b.b.b.a(jsonobject, "c", 0L) * 1000L;
        long l1 = l2;
        if (l2 < 0L)
        {
            l1 = -1L;
        }
        try
        {
            if (d.a(h1).a(f, s, l1))
            {
                return a(0);
            }
            h1 = a(3);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        return h1;
    }
}
