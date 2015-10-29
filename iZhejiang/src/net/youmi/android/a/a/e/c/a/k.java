// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.a;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public final class k extends l
{

    public k()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        int i;
        i = 0;
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        return a(3);
        h1 = h1.h();
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        return a(3);
        f = b.a(jsonobject, "a", null);
        if (f != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        return a(2);
        boolean flag;
        flag = net.youmi.android.a.b.k.h.c(h1, f, b.a(jsonobject, "b", 0));
        h1 = a(0);
        f = new JSONObject();
        if (flag)
        {
            i = 1;
        }
        try
        {
            f.put("a", i);
            h1.put("d", f);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        return h1;
    }
}
