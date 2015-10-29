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

public final class a extends l
{

    public a()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        String s;
        String s1;
        s1 = b.a(jsonobject, "a", null);
        s = b.a(jsonobject, "b", null);
        f = s;
        try
        {
            if (b.a(jsonobject, "c", 0) == 1)
            {
                f = (new StringBuilder()).append(e.b()).append(net.youmi.android.a.a.e.g.e.p()).append(s).toString();
            }
            net.youmi.android.offers.d.b.a.a().a(f, s1);
        }
        // Misplaced declaration of an exception variable
        catch (f f) { }
        try
        {
            f = a(0);
            jsonobject = new JSONObject();
            jsonobject.put("a", net.youmi.android.offers.d.b.e.a(h1.h()).a());
            f.put("d", jsonobject);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        return f;
    }
}
