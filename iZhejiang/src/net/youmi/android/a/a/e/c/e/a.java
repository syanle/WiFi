// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.e;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.k;
import net.youmi.android.a.b.h.e;
import org.json.JSONObject;

public final class a extends k
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f)
    {
        int i1;
        i1 = 1;
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        return a(3);
        f = h1.h();
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        return a(3);
        int i;
        int j;
        int l;
        int j1;
        int k1;
        if (net.youmi.android.a.b.i.k.a(f))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        h1 = net.youmi.android.a.b.i.k.c(f);
        if (net.youmi.android.a.b.k.k.b(f))
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (net.youmi.android.a.b.k.k.d(f))
        {
            l = 1;
        } else
        {
            l = 0;
        }
        if (!net.youmi.android.a.b.k.k.g(f))
        {
            i1 = 0;
        }
        j1 = e.i(f);
        k1 = e.j(f);
        f = new JSONObject();
        f.put("a", i);
        f.put("b", h1);
        f.put("c", j);
        f.put("d", l);
        f.put("e", i1);
        f.put("f", j1);
        f.put("g", k1);
        h1 = a(0);
        h1.put("d", f);
        return h1;
        h1;
        return null;
    }
}
