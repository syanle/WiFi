// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.offers.c.a;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.b.b.b;
import net.youmi.android.offers.f.a;
import org.json.JSONObject;

public final class e extends l
{

    public e()
    {
    }

    protected JSONObject a(h h1, f f, JSONObject jsonobject)
    {
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_9;
        }
        return a(3);
        android.content.Context context = h1.h();
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        return a(3);
        JSONObject jsonobject1 = b.a(jsonobject, "a", null);
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (jsonobject1.length() > 0)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        return a(2);
        String s;
        long l1;
        s = b.a(jsonobject1, "a", null);
        l1 = b.a(jsonobject1, "b", 0L);
        f = b.a(jsonobject1, "c", null);
        if (net.youmi.android.a.b.b.e.a(s) || net.youmi.android.a.b.b.e.a(f))
        {
            return a(2);
        }
        h1 = f;
        try
        {
            if (b.a(jsonobject1, "d", 0) == 1)
            {
                if (net.youmi.android.a.b.b.e.a(net.youmi.android.a.a.e.g.e.p()))
                {
                    net.youmi.android.a.a.e.g.e.f(net.youmi.android.offers.f.a.b.a(context, net.youmi.android.offers.f.a.e(context), null));
                }
                h1 = (new StringBuilder()).append(net.youmi.android.a.b.b.e.b()).append(net.youmi.android.a.a.e.g.e.p()).append(f).toString();
            }
            f = b.a(jsonobject, "b", null);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            return null;
        }
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        if (f.length() > 0)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        return a(2);
        net.youmi.android.a.c.a.a(new net.youmi.android.offers.c.b.a(context, h1, l1, s, b.a(f, "a", 0), b.a(f, "b", 0), b.a(f, "c", 0), b.a(f, "d", -1), b.a(f, "e", -1), b.a(f, "f", -1)));
        h1 = a(0);
        return h1;
    }
}
