// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.youmi.android.a.a.e.c.b;

import net.youmi.android.a.a.e.a.b.f;
import net.youmi.android.a.a.e.a.b.h;
import net.youmi.android.a.a.e.a.b.l;
import net.youmi.android.a.a.i.a.g;
import net.youmi.android.a.b.b.b;
import org.json.JSONObject;

public class c extends l
{

    public c()
    {
    }

    protected JSONObject a(h h, f f, JSONObject jsonobject)
    {
        try
        {
            if (a == null)
            {
                return a(4);
            }
            if (a instanceof g)
            {
                h = b.a(jsonobject, "a", null);
                f = b.a(jsonobject, "b", null);
                String s = b.a(jsonobject, "c", null);
                jsonobject = b.a(jsonobject, "d", null);
                ((g)a).a(h, f, s, jsonobject);
                return a(0);
            }
            h = a(4);
        }
        // Misplaced declaration of an exception variable
        catch (h h)
        {
            return null;
        }
        return h;
    }
}
